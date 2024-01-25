import 'package:care/resources/category_detail_color.dart';
import 'package:care/screens/share_link_screen.dart';
import 'package:care/widgets/subscription_carousel_widget.dart';
import 'package:flutter/material.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: CategoryDetailColor.blue,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ShareLinkScreen()));
        },
        label: Text("AI케어콜서비스 가입하기",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
      body: CarouselWithIndicatorDemo(),
    );
  }
}
