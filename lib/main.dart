import 'package:flutter/material.dart';
import 'package:myntra/splash_screen.dart';
import 'package:myntra/structure.dart';
// import 'package:win32/win32.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myntra',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class MyBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}


