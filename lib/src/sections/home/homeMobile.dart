// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class HomeMobile extends StatefulWidget {
  @override
  _HomeMobileState createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            right: -width * 0.3,
            child: Opacity(
              opacity: 0.7,
              child: Image.network(
                'assets/a.png',
                height: width < 1200 ? height * 0.7 : height * 0.65,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.07, height * 0.12, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  "Creating content that \ncaptures attention",
                  style: TextStyle(
                      fontSize: height * 0.045,
                      fontWeight: FontWeight.w100,
                      color: Colors.black,
                      letterSpacing: 1.1),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "We help brands grow by unleashing the potential of \nsocial media 🚀",
                  style: TextStyle(
                    fontSize: height * 0.03,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: height * 0.035,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
