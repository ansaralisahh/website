import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../animations/bottomAnimation.dart';
import '../../utils/constants.dart';
import '../../widgets/serviceCard.dart';

class ServiceDesktop extends StatelessWidget {
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
            "OUR SERVICES",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.035,
              color: Colors.black,
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: width < 1200
                    ? MainAxisAlignment.spaceEvenly
                    : MainAxisAlignment.center,
                children: [
                  WidgetAnimator(
                    child: ServiceCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight:
                          width < 1200 ? height * 0.4 : height * 0.35,
                      serviceIcon: kServicesIcons[0],
                      serviceTitle: kServicesTitles[0],
                      serviceDescription: kServicesDescriptions[0],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  WidgetAnimator(
                    child: ServiceCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight:
                          width < 1200 ? height * 0.4 : height * 0.35,
                      serviceIcon: kServicesIcons[1],
                      serviceTitle: kServicesTitles[1],
                      serviceDescription: kServicesDescriptions[1],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  WidgetAnimator(
                    child: ServiceCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight:
                          width < 1200 ? height * 0.45 : height * 0.40,
                      serviceIcon: kServicesIcons[2],
                      serviceTitle: kServicesTitles[2],
                      serviceDescription: kServicesDescriptions[2],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  WidgetAnimator(
                    child: ServiceCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight:
                          width < 1200 ? height * 0.4 : height * 0.35,
                      serviceIcon: kServicesIcons[3],
                      serviceTitle: kServicesTitles[3],
                      serviceDescription: kServicesDescriptions[3],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
