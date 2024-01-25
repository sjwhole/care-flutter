import 'package:care/resources/category_detail_color.dart';
import 'package:care/widgets/category_widget.dart';
import 'package:flutter/material.dart';

import '../models/category_detail_model.dart';
import '../resources/category_indicator_color.dart';
import 'line_chart_widget.dart';

List<CategoryDetail> categoryDetailList = [
  CategoryDetail(
      title: '식사',
      categoryIndicatorColor: CategoryIndicatorColor.good,
      score: 4,
      description: '하루3끼'),
  CategoryDetail(
      title: '수면',
      categoryIndicatorColor: CategoryIndicatorColor.bad,
      score: 1,
      description: '수면방해'),
  CategoryDetail(
      title: '건강',
      categoryIndicatorColor: CategoryIndicatorColor.good,
      score: 5,
      description: '상태양호'),
  CategoryDetail(
      title: '운동',
      categoryIndicatorColor: CategoryIndicatorColor.good,
      score: 5,
      description: '상태양호'),
  CategoryDetail(
      title: '외출',
      categoryIndicatorColor: CategoryIndicatorColor.good,
      score: 5,
      description: '상태양호'),
];

class RecentLineGraphWidget extends StatelessWidget {
  const RecentLineGraphWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(50))),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "최근 5주",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text(
                      "데이터 분석",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )
                  ],
                ),
                Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: CategoryDetailColor.blue,
                        shape: BoxShape.circle),
                    child: Column(children: [
                      Text(
                        "종합",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: Text(
                          "74점",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ]))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CategoryDetailIndicatorWidget(categoryDetailList: categoryDetailList),
          ),
          Container(
              margin: const EdgeInsets.only(left: 0, right: 20, bottom: 20),
              child: const LineChartWidget())
        ],
      ),
    );
  }
}
