import 'package:flutter/material.dart';
import 'package:stakeholders/DashBoard/bottom.dart';

import 'DashBoard/dashboard.dart';
void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "WorkSan"
      ),
      debugShowCheckedModeBanner: false,
      home: Bottom(),
    );
  }
}