import 'package:flutter/material.dart';
import 'package:indiancreatorin/src/sections/about/tabAbout.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktopAbout.dart';
import 'mobileAbout.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutMobile(),
      tablet: AboutTab(),
      desktop: AboutDesktop(),
    );
  }
}
