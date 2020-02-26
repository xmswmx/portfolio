import 'package:flutter/material.dart';
import 'package:portfolio/screens/home.dart';
import 'package:portfolio/util/consts.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.lightTheme,
//      darkTheme: Constants.darkTheme,
      home: Home(),
    );
  }
}