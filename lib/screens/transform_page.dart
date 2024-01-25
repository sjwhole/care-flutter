// v2: add Gesture detector
import 'package:care/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perspective',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TransformScreen(),
    );
  }
}

class TransformScreen extends StatefulWidget {
  TransformScreen({Key? key}) : super(key: key); // changed

  @override
  _TransformScreenState createState() => _TransformScreenState();
}

class _TransformScreenState extends State<TransformScreen> {
  Offset _offset = Offset.zero; // changed

  @override
  Widget build(BuildContext context) {
    return Transform(
        // Transform widget
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001) // perspective
          ..rotateX(0.01 * _offset.dy) // changed
          ..rotateY(-0.01 * _offset.dx), // changed
        alignment: FractionalOffset.center,
        child: GestureDetector(
          // new
          onPanUpdate: (details) => setState(() => _offset += details.delta),
          onDoubleTap: () => setState(() => _offset = Offset.zero),
          child: _defaultApp(context),
        ));
  }

  _defaultApp(BuildContext context) {
    return HomeScreen(); // changed
  }
}
