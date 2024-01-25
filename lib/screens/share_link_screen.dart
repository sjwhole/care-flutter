import 'package:care/widgets/login_with_kakao_widget.dart';
import 'package:flutter/material.dart';

class ShareLinkScreen extends StatelessWidget {
  const ShareLinkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.all(30),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "마지막 단계",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("카카오톡 공유하기 클릭", style: TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("부모님에게 링크 전송", style: TextStyle(fontSize: 20)),
            ),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 20),
            Text(
              "부모님 휴대폰에서 진행",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("링크 연결 후 웹페이지 접속", style: TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("카카오 계정으로 로그인하기", style: TextStyle(fontSize: 20)),
            ),
            Expanded(child: Container()),
            LoginWithKakaoWidget(),
          ],
        )));
  }
}
