import 'package:care/grpc/generated/google/protobuf/empty.pb.dart';
import 'package:flutter/cupertino.dart';
import 'package:grpc/grpc.dart';
import 'package:provider/provider.dart';

import '../../providers/jwt_provider.dart';
import '../../utils/jwt.dart';
import '../channel.dart';
import '../generated/user.pbgrpc.dart';


class JwtInterceptor extends ClientInterceptor {
  JwtInterceptor(this.jwt);
  
  final String? jwt;
  
  Future<void> _injectToken(Map<String, String> metadata, String uri) async {
    metadata['jwt'] =  jwt ?? "";
  }

  @override
  ResponseFuture<R> interceptUnary<Q, R>(ClientMethod<Q, R> method, Q request,
      CallOptions options, ClientUnaryInvoker<Q, R> invoker) {
    final modifiedOptions = options.mergedWith(
      CallOptions(
        providers: [
          _injectToken, // method signatures match, so we should be ok
        ],
      ),
    );
    return super.interceptUnary(method, request, modifiedOptions, invoker);
  }
}


class UserService {

  UserService(this.jwt);

  final String? jwt;
  late UserServiceClient stub = UserServiceClient(channel, interceptors: [JwtInterceptor(jwt)]);


  Future<User> getUser() async {
    try {
      var response = await stub.getUser(Empty());
      print('Greeter client received: ${response.name}');
      return response;
    } on GrpcError catch (e) {
      print('Caught error: $e');
      return User(name: "???");
    }
  }

  Future<String> getJWTByKakaoAccessToken(String accessToken) async {
    try {
      var response = await stub.getJWTByAccessToken(
          GetJWTByAccessTokenRequest()
            ..kakaoAccessToken = accessToken);
      print('Greeter client received: ${response.jwt}');
      saveJwtToStorage(response.jwt);
      return response.jwt;
    } on GrpcError catch (e) {
      print('Caught error: $e');
      if (e.codeName == "NOT_FOUND") {
        print("회원가입 진행");
        var response = await stub
            .createUser(CreateUserRequest()
          ..kakaoAccessToken = accessToken);
      }
      return "";
    }
  }

}