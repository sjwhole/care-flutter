import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> with AutomaticKeepAliveClientMixin<ShoppingScreen> {
  late final WebViewController controller;
  static const channel = MethodChannel('채널이름');

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) async {
            Uri uri = Uri.parse(request.url);
            String finalUrl = request.url;

            // 웹뷰 브라우저에서 접근 가능한 주소(https 등)라면 URL로 이동
            if (uri.scheme == 'http' ||
                uri.scheme == 'https' ||
                uri.scheme == 'about') {
              return NavigationDecision.navigate;
            }

            if (Platform.isAndroid) {
              // Android는 Native(Kotlin)로 URL을 전달해 Intent 처리 후 리턴
              await _convertIntentToAppUrl(finalUrl).then((value) async {
                finalUrl = value; // 앱이 설치되었을 경우
              });
              try {
                debugPrint('finalUrl: $finalUrl');
                // await launchUrlString(finalUrl);
              } catch (e) {
                // URL 실행 불가 시, 앱 미설치로 판단하여 마켓 URL 실행
                finalUrl = await _convertIntentToMarketUrl(request.url);
                launchUrlString(finalUrl);
              }
            } else if (Platform.isIOS) {
              launchUrlString(finalUrl);
            }
            return NavigationDecision.prevent;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://hyohang.com'));
  }

  Future<String> _convertIntentToAppUrl(String text) async {
    debugPrint('convertIntentToAppUrl: $text');
    return await channel
        .invokeMethod('getAppUrl', <String, Object>{'url': text});
  }

  Future<String> _convertIntentToMarketUrl(String text) async {
    return await channel
        .invokeMethod('getMarketUrl', <String, Object>{'url': text});
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return WillPopScope(
      onWillPop: () {
        var future = controller.canGoBack();
        future.then((canGoBack) => {
              if (canGoBack)
                {controller.goBack()}
              else
                {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('앱 종료'),
                      content: Text('정말로 종료하시겠어요? 😥'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('아니오'),
                        ),
                        TextButton(
                          onPressed: () {
                            SystemNavigator.pop();
                          },
                          child: Text('예'),
                        ),
                      ],
                    ),
                  ),
                }
            });
        return Future.value(false);
      },
      child: WebViewWidget(controller: controller),
    );
  }

  bool get wantKeepAlive => true;
}
