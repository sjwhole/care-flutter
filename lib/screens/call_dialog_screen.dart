import 'package:flutter/material.dart';

class CallDialogScreen extends StatelessWidget {
  const CallDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('전화하기'),
      ),body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('전화번호: 010-1234-5678'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('전화하기'),
            ),
          ],
        ),
      )
    );
  }
}
