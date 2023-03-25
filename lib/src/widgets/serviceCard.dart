import 'package:flutter/material.dart';
import 'package:indiancreatorin/src/utils/constants.dart';

class ServiceCard extends StatefulWidget {
  final String? serviceIcon;
  final String? serviceTitle;
  final String? serviceDescription;
  final double? cardWidth;
  final double? cardHeight;

  const ServiceCard(
      {this.serviceIcon,
      this.serviceTitle,
      this.serviceDescription,
      this.cardHeight,
      this.cardWidth});

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: Container(
        width: widget.cardWidth,
        height: widget.cardHeight,
        padding:
            const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black12, width: 1),
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: kPrimaryColor.withAlpha(200),
                      blurRadius: 12.0,
                      offset: Offset(2.0, 3.0),
                    )
                  ]
                : []),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              widget.serviceIcon!,
              height: height * 0.2,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              widget.serviceTitle!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: height * 0.02,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Expanded(
              child: Text(
                widget.serviceDescription!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: height * 0.015,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
