import 'package:flutter/material.dart';
import 'package:indiancreatorin/src/sections/main_section.dart';
import 'package:indiancreatorin/src/utils/constants.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // useMaterial3: true,
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        hintColor: kPrimaryColor,
        highlightColor: kPrimaryColor,
      ),
      home: MainPage(),
    );
  }
}
