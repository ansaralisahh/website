import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutDesktop extends StatelessWidget {
  final _communityLogoHeight = [50.0, 70.0, 30.0];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      height: height,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "About",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.035,
              color: Colors.black,
              letterSpacing: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
