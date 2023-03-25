// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.1,
                width < 740 ? height * 0.15 : height * 0.2, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Creating content that \ncaptures attention",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: height * 0.04,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "We help brands grow by unleashing the potential of \nsocial media 🚀",
                  style: TextStyle(
                      fontSize:
                          width < 1200 ? height * 0.02 : height * 0.02,
                      color: Colors.black),
                ),
                Opacity(
                  opacity: 0.8,
                  child:
                      Image.asset('assets/a.png', height: height * 0.55),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
