import 'package:flutter/material.dart';

import '../models/category_detail_model.dart';
import 'category_detail_widget.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.categoryDetailList,
  });

  final List<CategoryDetail> categoryDetailList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(50))),
      child: CategoryDetailIndicatorWidget(categoryDetailList: categoryDetailList),
    );
  }
}

class CategoryDetailIndicatorWidget extends StatelessWidget {
  const CategoryDetailIndicatorWidget({
    super.key,
    required this.categoryDetailList,
  });

  final List<CategoryDetail> categoryDetailList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                "최근",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(height: 50),
              Text(
                "누적",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
          for (var categoryIndicator in categoryDetailList)
            CategoryDetailWidget(categoryIndicator: categoryIndicator)
        ],
      ),
    );
  }
}
