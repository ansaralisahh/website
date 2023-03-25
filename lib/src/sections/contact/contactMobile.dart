import 'package:flutter/material.dart';

class ContactMobileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 900,
      child: Column(
        children: [
          Text(
            "Contact Us",
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
