import 'package:flutter/material.dart';
import 'package:indiancreatorin/src/sections/services_desktop.dart';
import 'package:indiancreatorin/src/utils/constants.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../animations/entranceFader.dart';
import '../widgets/arrow_on_top.dart';
import 'about_us.dart';
import 'contact_page.dart';
import 'home_page.dart';
import 'nav_bar_logo.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final ScrollController _scrollController =
      ScrollController(initialScrollOffset: 25.0);
  final ItemScrollController _itemScrollController = ItemScrollController();
  final ItemPositionsListener _itemPositionListener =
      ItemPositionsListener.create();

  final List<String> _sectionsName = [
    "Home",
    "Our Services",
    "About",
    "Contact"
  ];

  void _scroll(int i) {
    _itemScrollController.scrollTo(
        index: i, duration: const Duration(seconds: 1));
  }

  Widget sectionWidget(int i) {
    if (i == 0) {
      return HomePage();
    } else if (i == 1) {
      return ServiceDesktop();
    } else if (i == 2) {
      return AboutUs();
    } else if (i == 3) {
      return ContactPage();
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

  bool isHovering = false;

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
      drawer: MediaQuery.of(context).size.width < 760 ? _appBarMobile() : null,
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

  Widget _appBarActions(String childText, int index, bool isHovering) {
    return EntranceFader(
      offset: const Offset(0, -20),
      delay: const Duration(seconds: 1),
      duration: const Duration(seconds: 1),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: HoverColorChangeButton(
          childText: childText,
          onPressed: () => _scroll(index),
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
              duration: const Duration(seconds: 1),
              offset: const Offset(0, -20),
              delay: const Duration(seconds: 3),
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
          _appBarActions(_sectionsName[i], i, isHovering),
      ],
    );
  }

  Widget _appBarMobile() {
    return const Drawer();
  }
}

class HoverColorChangeButton extends StatefulWidget {
  final String childText;
  final VoidCallback onPressed;

  HoverColorChangeButton({required this.childText, required this.onPressed});

  @override
  _HoverColorChangeButtonState createState() => _HoverColorChangeButtonState();
}

class _HoverColorChangeButtonState extends State<HoverColorChangeButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll(0.0),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return kPrimaryColor; // Color when hovered
              }
              return Colors.white;
            },
          ),
        ),
        onPressed: widget.onPressed,
        child: Text(
          widget.childText,
          style: TextStyle(
            color: isHovered ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
