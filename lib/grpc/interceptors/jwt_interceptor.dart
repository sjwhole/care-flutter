import 'package:grpc/grpc.dart';

import '../../providers/jwt_provider.dart';

class JwtInterceptor extends ClientInterceptor {
  final JwtProvider jwtProvider;
  static const exemptPaths = [
    '/user.UserService/GetJWTByAccessToken',
    '/user.UserService/CreateUser'
  ];

  JwtInterceptor(this.jwtProvider);

  @override
  ResponseFuture<R> interceptUnary<Q, R>(ClientMethod<Q, R> method, Q request,
      CallOptions options, ClientUnaryInvoker<Q, R> invoker) {
    //print method.path for debug
    print(method.path);
    // Don't check if issuig a new JWT
    if (exemptPaths.contains(method.path)) {
      return super.interceptUnary(method, request, options, invoker);
    }
    if (jwtProvider.isJwtExpired) {
      if (jwtProvider.jwt == null) {
        throw GrpcError.unauthenticated('JWT is null');
      } else {
        // Handle the expired JWT. For example:
        // - Prompt the user to re-authenticate
        // - Attempt to refresh the token automatically
        // - Throw a custom exception to be caught by the calling code
        print('JWT is expired. Handling accordingly.');
        jwtProvider.jwt = null;
        throw GrpcError.unauthenticated('JWT is expired');
      }
    }

    // If the JWT is not expired, proceed with the call
    // Ensure the JWT is added to the call's metadata for authentication
    final modifiedOptions =
        options.mergedWith(CallOptions(metadata: {'jwt': jwtProvider.jwt!}));
    return super.interceptUnary(method, request, modifiedOptions, invoker);
  }
}
