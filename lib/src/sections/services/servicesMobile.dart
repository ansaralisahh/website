import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:indiancreatorin/src/utils/constants.dart';

import '../../widgets/serviceCard.dart';

class ServiceMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Text(
            "OUR SERVICES",
            style: TextStyle(
              fontSize: height * 0.03,
              color: Colors.black,
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(
            height: 35,
          ),
          CarouselSlider.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ServiceCard(
                cardWidth: width < 650 ? width * 0.8 : width * 0.5,
                serviceIcon: kServicesIcons[i],
                serviceTitle: kServicesTitles[i],
                serviceDescription: kServicesDescriptions[i],
              ),
            ),
            options: CarouselOptions(
                height: height * 0.45,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enableInfiniteScroll: false),
          )
        ],
      ),
    );
  }
}
