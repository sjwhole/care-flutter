import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as Kakao;
import 'package:provider/provider.dart';

import '../grpc/generated/user.pbgrpc.dart';
import '../providers/jwt_provider.dart';

class LoginWithKakaoWidget extends StatelessWidget {
  const LoginWithKakaoWidget({super.key});

  Future<void> _sendRPC(
      {required BuildContext context, required String accessToken}) async {
    final channel = ClientChannel(
      '192.168.30.3',
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    final stub = UserServiceClient(channel);

    try {
      var response = await stub.getUserByKakaoAccessToken(
          GetUserByKakaoAccessTokenRequest()..kakaoAccessToken = accessToken);
      print('Greeter client received: ${response.name}');
    } on GrpcError catch (e) {
      print('Caught error: $e');
      if (e.codeName == "NOT_FOUND") {
        print("회원가입 진행");
        var response = await stub
            .createUser(CreateUserRequest()..kakaoAccessToken = accessToken);
        //
        // })
        toastMessage(context, "신규 회원 가입을 축하드려요 ${response.name}님!");
      }
    }
    await channel.shutdown();
  }

  void toastMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        print("카카오 계정으로 로그인");
        try {
          Kakao.OAuthToken token =
              await Kakao.UserApi.instance.loginWithKakaoTalk();
          print('카카오계정으로 로그인 성공 ${token.accessToken}');
          if (!context.mounted) return;
          final jwtProvider = Provider.of<JwtProvider>(context, listen: false);

          var newJwt = await jwtProvider.userService
              .getJWTByKakaoAccessToken(token.accessToken);

          try {
            Kakao.AccessTokenInfo tokenInfo =
                await Kakao.UserApi.instance.accessTokenInfo();
            print('토큰 정보 보기 성공'
                '\n회원정보: ${tokenInfo.id}'
                '\n회원정보: ${tokenInfo.toJson()}'
                '\n만료시간: ${tokenInfo.expiresIn} 초');
          } catch (error) {
            print('토큰 정보 보기 실패 $error');
          }
          try {
            Kakao.User user = await Kakao.UserApi.instance.me();
            print('사용자 정보 요청 성공'
                '\n회원번호: ${user.id}'
                '\n닉네임: ${user.kakaoAccount?.profile?.nickname}'
                '\n정보: ${user.kakaoAccount?.toJson()}');
            toastMessage(context, "다시오신 것을 환영해요 ${user.kakaoAccount?.name}님!");
            // try {
            //   await Kakao.UserApi.instance.unlink();
            //   print('연결 끊기 성공, SDK에서 토큰 삭제');
            // } catch (error) {
            //   print('연결 끊기 실패 $error');
            // }
          } catch (error) {
            print('사용자 정보 요청 실패 $error');
          }

          jwtProvider.jwt = newJwt;

          if(!context.mounted) return;
          var controller = PrimaryScrollController.of(context);
          controller.animateTo(0,
              duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);
        } catch (error) {
          print('카카오계정으로 로그인 실패 $error');
        }
      },
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Color(0xffF2DC00),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/kakao_logo.png"),
              Text("카카오 계정으로 계속하기")
            ],
          )),
    );
  }
}
