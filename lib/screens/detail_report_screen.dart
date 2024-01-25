import 'package:care/models/category_detail_model.dart';
import 'package:care/screens/calls_screen.dart';
import 'package:care/screens/category_info_screen.dart';
import 'package:care/widgets/category_widget.dart';
import 'package:care/widgets/recent_line_graph_widget.dart';
import 'package:flutter/material.dart';

import '../resources/category_resources.dart';

class DetailReportScreen extends StatelessWidget {
  const DetailReportScreen(
      {super.key,
      required this.score,
      required this.tries,
      required this.missed,
      required this.categoryDetailList});

  final int score;
  final int tries;
  final int missed;
  final List<CategoryDetail> categoryDetailList;

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
          floatingActionButton: FloatingActionButton.extended(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            backgroundColor: CategoryDetailColor.blue,

            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CallsScreen()));
            },
            label: Text(
              "AI 케어콜 대화내용 보기",
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ), // 하위 위젯 설정
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          body: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Hero(
                      tag: "line_graph",
                      child: Material(
                        child: RecentLineGraphWidget(),
                        type: MaterialType.transparency,
                      )),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: RichText(
                            text: TextSpan(
                              text: '최근 4주간 데이터 분석 결과, 종합',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                              children: <TextSpan>[
                                TextSpan(
                                    text: score.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35,
                                        color: CategoryDetailColor.blue)),
                                TextSpan(
                                    text: '점으로 ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: '양호해요!',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35)),
                              ],
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                              children: <TextSpan>[
                                TextSpan(text: "4주 동안 "),
                                TextSpan(
                                    text: "$tries",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30)),
                                TextSpan(text: "번의 통화 연겨을 시도했는데, 2회 연속 미수신이 "),
                                TextSpan(
                                    text: "$missed",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30)),
                                TextSpan(text: "건 있었어요. 그 외에는 이상이 없어요!"),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  CategoryWidget(categoryDetailList: categoryDetailList),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 20, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: "수면",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: CategoryDetailColor.blue,
                                  fontSize: 35)),
                          TextSpan(
                              text: '에 문제가 있어요!\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24)),
                          TextSpan(
                              text:
                                  '지난 통화에서 잠을 잘 주무시지 못한다고 답변하셨어요. 누적데이터는 수면방해가 있다고 분석했어요. 직접 전화나 방문하여 자세한 이유를 알아보세요. 그 외에는 특이사항 없어요!',
                              style: TextStyle(
                                height: 1.5,
                              )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Material(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CategoryInfoScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          alignment: Alignment.center,
                          child: Text(
                            "불면증에 관한 정보",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ),
                      color: Colors.transparent,
                    ),
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
