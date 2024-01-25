import 'package:care/models/category_detail_model.dart';
import 'package:flutter/material.dart';

const List<String> gradeList = ["아주 나쁨", "나쁨", "보통", "좋음", "아주 좋음"];

class CategoryDetailWidget extends StatelessWidget {
  const CategoryDetailWidget({
    super.key,
    required this.categoryIndicator,
  });

  final CategoryDetail categoryIndicator;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(categoryIndicator.title,
                style: TextStyle(color: Colors.white, fontSize: 25)),
            SizedBox(height: 10),
            Container(
              width: 50,
              height: 5,
              decoration: BoxDecoration(
                  color: categoryIndicator.categoryIndicatorColor),
            ),
            // SizedBox(height: 30),
            // Text("${gradeList[categoryIndicator.score - 1]}",
            //     style: TextStyle(color: Colors.white, fontSize: 20)),
          ],
        ));
  }
}
