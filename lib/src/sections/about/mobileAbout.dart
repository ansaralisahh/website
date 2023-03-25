import 'package:flutter/material.dart';

class AboutMobile extends StatelessWidget {
  final _communityLogoHeight = [50.0, 60.0, 30.0];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: 900,
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "About",
            style: TextStyle(
                fontSize: height * 0.03,
                letterSpacing: 1.0,
                color: Colors.black),
          ),
        ],
      ),
    );
  }
}
