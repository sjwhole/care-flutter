import 'package:care/resources/category_resources.dart';
import 'package:flutter/material.dart';

class CategoryInfoScreen extends StatelessWidget {
  const CategoryInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
            scrolledUnderElevation: 0,
          ),
          body: Container(
              padding: const EdgeInsets.all(30),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "불면증",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(height: 30),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(fontSize: 20, color: Colors.black),
                        children: [
                          TextSpan(
                              text: "건강",
                              style: TextStyle(
                                  color: CategoryDetailColor.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30)),
                          TextSpan(
                              text: "에 문제가 있어요!\n",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24)),
                          TextSpan(
                              text: "건강하지 못한 경우 숙면을 취하기 어려워요.",
                              style: TextStyle(height: 1.5)),
                        ]),
                  ),
                  SizedBox(height: 30),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(fontSize: 20, color: Colors.black),
                        children: [
                          TextSpan(
                              text: "피로",
                              style: TextStyle(
                                  color: CategoryDetailColor.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30)),
                          TextSpan(
                              text: "가 쌓였어요!\n",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24)),
                          TextSpan(
                              text:
                                  "과도한 피로를 안고 잠에 들면 깊은 잠을 자기 어려워요. 자기 전 반신욕이나 명상으로 피로를 풀어주는게 좋아요.",
                              style: TextStyle(height: 1.5)),
                        ]),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
