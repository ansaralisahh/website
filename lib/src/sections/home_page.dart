// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../animations/entranceFader.dart';
import '../widgets/responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            top: width < 1200 ? height * 0.009 : height * 0.009,
            right: width * 0.05,
            child: Opacity(
              opacity: 0.9,
              child: EntranceFader(
                offset: const Offset(0, 0),
                delay: const Duration(seconds: 1),
                duration: const Duration(milliseconds: 800),
                child: Image.network(
                  'assets/img.png',
                  height: height / 1.4,
                  width: Responsive.isTablet(context)
                      ? width / 1.6
                      : Responsive.isMobile(context)
                          ? width / 1.6
                          : width / 2,
                ),
              ),
            ),
          ),
          if (Responsive.isDesktop(context)) _contactUS(width, height),
          if (Responsive.isTablet(context)) _contactUS(width, height),
          if (Responsive.isMobile(context))
            Positioned(
                bottom: 0, left: 0, right: 0, child: _contactUS(width, height)),
        ],
      ),
    );
  }

  Container _contactUS(double width, double height) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 55, top: 10, bottom: 10),
      margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.2, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "We make IT simple,\nfaster, and less \nexpensive.",
            style: GoogleFonts.montserrat(
                fontSize: width < 1200 ? height * 0.05 : height * 0.05,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
                color: Colors.black),
          ),
          SizedBox(
            height: height * 0.07,
          ),
          InkWell(
            child: Container(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 10, bottom: 10),
              decoration: BoxDecoration(
                  color: const Color(0xff306a98),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: const Color(0xff306a98),
                    width: 1,
                  )),
              child: const Text(
                "Contact Us",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
        ],
      ),
    );
  }
}
