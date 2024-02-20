import 'dart:ui';

import 'package:care/models/category_detail_model.dart';
import 'package:care/providers/user_provider.dart';
import 'package:care/resources/category_indicator_color.dart';
import 'package:care/screens/detail_report_screen.dart';
import 'package:care/widgets/login_with_kakao_widget.dart';
import 'package:care/widgets/logout_widget.dart';
import 'package:care/widgets/subscription_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/jwt_provider.dart';
import '../widgets/category_widget.dart';
import '../widgets/recent_line_graph_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  List<CategoryDetail> categoryDetailList = [
    CategoryDetail(
        title: '식사',
        categoryIndicatorColor: CategoryIndicatorColor.good,
        score: 70,
        description: '하루3끼'),
    CategoryDetail(
        title: '수면',
        categoryIndicatorColor: CategoryIndicatorColor.bad,
        score: 64,
        description: '수면방해'),
    CategoryDetail(
        title: '건강',
        categoryIndicatorColor: CategoryIndicatorColor.good,
        score: 88,
        description: '상태양호'),
    CategoryDetail(
        title: '운동',
        categoryIndicatorColor: CategoryIndicatorColor.good,
        score: 88,
        description: '상태양호'),
    CategoryDetail(
        title: '외출',
        categoryIndicatorColor: CategoryIndicatorColor.good,
        score: 77,
        description: '상태양호'),
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Stack(
      children: [
        Container(
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GetSubscriptionWidget(),
                  CreateSubscriptionWidget(),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(Provider.of<UserProvider>(context).user.name,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text(' 님의',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 35)),
                            ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text('돌봄보고서',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 35)),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Image.asset(
                                'assets/images/clova-carecall.png',
                                height: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          // PageRouteBuilder(
                          //     transitionDuration: Duration(seconds: 1),
                          //     pageBuilder: (_, __, ___) =>
                          //         DetailReportScreen(score: 74, tries: 6, missed: 1)));
                          MaterialPageRoute(
                              builder: (context) => DetailReportScreen(
                                  score: 74,
                                  tries: 6,
                                  missed: 1,
                                  categoryDetailList: categoryDetailList)));
                    },
                    child: const Hero(
                      tag: "line_graph",
                      child: Material(
                        child: RecentLineGraphWidget(),
                        type: MaterialType.transparency,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('항목별 분석',
                        style: TextStyle(color: Colors.black, fontSize: 35)),
                  ),
                  CategoryWidget(categoryDetailList: categoryDetailList),
                  SizedBox(
                    height: 20,
                  ),
                  if (Provider.of<JwtProvider>(context).jwt != null) ...[
                    LogoutWidget(),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ],
              ),
            )),
        if (Provider.of<JwtProvider>(context).jwt == null)
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.white.withOpacity(0.0),
              child: Column(
                children: [
                  Flexible(child: Container(), flex: 20),
                  Flexible(
                    flex: 3,
                    child: LoginWithKakaoWidget(),
                  ),
                  Flexible(child: Container(), flex: 1),
                ],
              ),
            ),
          ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
