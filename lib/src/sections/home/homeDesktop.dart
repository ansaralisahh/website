// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../animations/entranceFader.dart';

class HomeDesktop extends StatelessWidget {
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
            top: width < 1200 ? height * 0.09 : height * 0.009,
            right: width * 0.01,
            child: Opacity(
              opacity: 0.9,
              child: EntranceFader(
                offset: Offset(0, 0),
                delay: Duration(seconds: 1),
                duration: Duration(milliseconds: 800),
                child: Image.network(
                  'assets/a.png',
                  height: width < 1200 ? height * 0.7 : height * 0.75,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.2, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Creating content that \ncaptures attention",
                  style: GoogleFonts.montserrat(
                      fontSize:
                          width < 1200 ? height * 0.05 : height * 0.05,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      color: Colors.black),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Text(
                  "We help brands grow by unleashing the potential of \nsocial media 🚀",
                  style: GoogleFonts.montserrat(
                      fontSize:
                          width < 1200 ? height * 0.03 : height * 0.03,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 25, right: 25, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        color: Color(0xff306a98),
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: Color(0xff306a98),
                          width: 1,
                        )),
                    child: Text(
                      "Lean How",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
