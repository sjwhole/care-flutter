import 'package:care/screens/call_dialog_screen.dart';
import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  final List<String> dates = const [
    '2021.09.01',
    '2021.09.02',
    '2021.09.03',
    '2021.09.04',
    '2021.09.05',
    '2021.09.06',
    '2021.09.07',
    '2021.09.08',
    '2021.09.09',
    '2021.09.10',
    '2021.09.11',
    '2021.09.12',
    '2021.09.13',
    '2021.09.14',
    '2021.09.15',
    '2021.09.16',
    '2021.09.17',
    '2021.09.18',
    '2021.09.19',
    '2021.09.20',
    '2021.09.21',
    '2021.09.22',
    '2021.09.23',
    '2021.09.24',
    '2021.09.25',
    '2021.09.26',
    '2021.09.27',
    '2021.09.28',
    '2021.09.29',
    '2021.09.30',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("총 통화 완료", style: TextStyle(fontSize: 20)),
            Text("${dates.length.toString()}건", style: TextStyle(fontSize: 30)),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: dates.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        title: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CallDialogScreen()));
                          },
                          child: Container(
                            alignment: Alignment.center,
                                                padding: const EdgeInsets.all(25),
                                                decoration: BoxDecoration(
                            color: Color(0xffEEEEEE),
                            borderRadius: BorderRadius.circular(20)),
                                                child: Text(dates[index],
                            style: TextStyle(fontWeight: FontWeight.bold)),
                                              ),
                        ));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
