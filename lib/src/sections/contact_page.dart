import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: 300,
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Contact",
            style: TextStyle(
                fontSize: height * 0.03,
                letterSpacing: 1.0,
                color: Colors.black),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
