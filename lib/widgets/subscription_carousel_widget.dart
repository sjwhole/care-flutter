import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Option1 extends StatelessWidget {
  const Option1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(children: [
          Row(
            children: [
              Expanded(
                child: Text("AI케어콜이 안부를 확인해요",
                    style:
                        TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              ),
              Image.asset("assets/images/clova-carecall.png"),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("주1회 통화 건강, 식사, 수면 등 데이터수집",
                  style: TextStyle(fontSize: 20)),
            ),
          )
        ]));
  }
}

class Option2 extends StatelessWidget {
  const Option2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(children: [
          Row(
            children: [
              Expanded(
                child: Text("건강 특이점 보고서에 기록 및 알림",
                    style:
                        TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("2회 이상 미수신 건 알림 대화 내역 제공으로 특이사항 파악",
                  style: TextStyle(fontSize: 20)),
            ),
          )
        ]));
  }
}

class Option3 extends StatelessWidget {
  const Option3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(children: [
        Row(
          children: [
            Expanded(
              child: Text("월 4900원 증명된 돌봄 기능",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            )
          ],
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text("전화 수신자 86% 만족 (정서, 건강 도움) 각종 대회 수상 및 해외 논문 게재",
                style: TextStyle(fontSize: 20)),
          ),
        )
      ]),
    );
  }
}

class SubscriptionCarouselWidget extends StatelessWidget {
  const SubscriptionCarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          // reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 5),
          autoPlayAnimationDuration: Duration(seconds: 1),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        ),
        items: <Widget>[
          Option1(),
          Option2(),
          Option3(),
        ]);
  }
}

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Column(children: [
          CarouselSlider(
            items: <Widget>[
              Option1(),
              Option2(),
              Option3(),
            ],
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [1, 2, 3].map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(_current == entry - 1 ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ]),
      ),
    );
  }
}
