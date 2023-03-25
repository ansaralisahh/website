import 'package:flutter/material.dart';
import 'package:indiancreatorin/src/sections/services/services.dart';
import 'package:indiancreatorin/src/utils/constants.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../animations/entranceFader.dart';
import '../widgets/arrowOnTop.dart';
import 'about/about.dart';
import 'contact/contact.dart';
import 'home/home.dart';
import 'navBar/navBarLogo.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ScrollController _scrollController =
      ScrollController(initialScrollOffset: 25.0);
  ItemScrollController _itemScrollController = ItemScrollController();
  ItemPositionsListener _itemPositionListener =
      ItemPositionsListener.create();

  final List<String> _sectionsName = [
    "Home",
    "Our Services",
    "About",
    "Contact",
    "Contact Us"
  ];

  void _scroll(int i) {
    _itemScrollController.scrollTo(
        index: i, duration: Duration(seconds: 1));
  }

  Widget sectionWidget(int i) {
    if (i == 0) {
      return HomePage();
    } else if (i == 1) {
      return Services();
    } else if (i == 2) {
      return About();
    } else if (i == 3) {
      return Contact();
    } else if (i == 4) {
      return Container(
        color: Colors.white,
        height: 40.0,
      );
    } else if (i == 5) {
      return ArrowOnTop(
        onPressed: () => _scroll(0),
      );
    } else {
      return Container(
        color: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      // extendBodyBehindAppBar: true,
      appBar: MediaQuery.of(context).size.width > 760
          ? PreferredSize(
              preferredSize: const Size.fromHeight(100),
              child: _appBarTabDesktop(),
            )
          : AppBar(
              iconTheme: const IconThemeData(color: Colors.black),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
      drawer:
          MediaQuery.of(context).size.width < 760 ? _appBarMobile() : null,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: RawScrollbar(
          controller: _scrollController,
          thumbColor: kPrimaryColor,
          thickness: 5.0,
          child: ScrollablePositionedList.builder(
            itemScrollController: _itemScrollController,
            itemPositionsListener: _itemPositionListener,
            itemCount: 8,
            itemBuilder: (context, index) {
              return sectionWidget(index);
            },
          ),
        ),
      ),
    );
  }

  Widget _appBarActions(String childText, int index) {
    return EntranceFader(
      offset: Offset(0, -20),
      delay: Duration(seconds: 3),
      duration: Duration(seconds: 1),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          hoverColor: kPrimaryColor,
          onPressed: () => _scroll(index),
          child: Text(
            childText,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget _appBarTabDesktop() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: MediaQuery.of(context).size.width < 740
          ? EntranceFader(
              duration: Duration(seconds: 1),
              offset: Offset(0, -20),
              delay: Duration(seconds: 3),
              child: NavBarLogo())
          : EntranceFader(
              offset: const Offset(0, -20),
              duration: const Duration(seconds: 1),
              delay: const Duration(seconds: 3),
              child: NavBarLogo(
                height: MediaQuery.of(context).size.height * 0.035,
              ),
            ),
      actions: [
        for (int i = 0; i < _sectionsName.length; i++)
          _appBarActions(_sectionsName[i], i),
      ],
    );
  }

  Widget _appBarMobile() {
    return Drawer();
  }
}
