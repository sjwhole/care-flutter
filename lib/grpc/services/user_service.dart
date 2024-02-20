import 'package:care/grpc/generated/google/protobuf/empty.pb.dart';
import 'package:grpc/grpc.dart';

import '../../providers/jwt_provider.dart';
import '../../utils/jwt.dart';
import '../channel.dart';
import '../generated/user.pbgrpc.dart';
import '../interceptors/jwt_interceptor.dart';

class UserService {
  UserService(this.jwtProvider);

  JwtProvider jwtProvider;
  late UserServiceClient stub =
      UserServiceClient(channel, interceptors: [JwtInterceptor(jwtProvider)]);

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
          GetJWTByAccessTokenRequest()..kakaoAccessToken = accessToken);
      print('Greeter client received: ${response.jwt}');
      saveJwtToStorage(response.jwt);
      return response.jwt;
    } on GrpcError catch (e) {
      print('Caught error: $e');
      if (e.codeName == "NOT_FOUND") {
        print("회원가입 진행");
        // TODO handle 회원가입
        var response = await stub
            .createUser(CreateUserRequest()..kakaoAccessToken = accessToken);
      }
      return "";
    }
  }
}
