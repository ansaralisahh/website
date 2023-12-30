import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../animations/bottomAnimation.dart';
import '../utils/constants.dart';
import '../widgets/responsive.dart';
import '../widgets/service_card.dart';

class ServiceDesktop extends StatefulWidget {
  const ServiceDesktop({super.key});

  @override
  State<ServiceDesktop> createState() => _ServiceDesktopState();
}

class _ServiceDesktopState extends State<ServiceDesktop> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    Future.delayed(Duration(seconds: 2), () {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: Duration(seconds: 5),
        curve: Curves.easeInOut,
      );

      // _scrollController.addListener(() {
      //   if (_scrollController.position.pixels ==
      //       _scrollController.position.maxScrollExtent) {
      //     _scrollController.jumpTo(0.0);
      //   }
      // });
    });
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.2,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "OUR SERVICES",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: height * 0.045,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= 1200) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: _scrollController,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          4,
                          (index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: WidgetAnimator(
                                  child: ServiceCard(
                                    cardWidth: width / 3.4,
                                    cardHeight: height / 2.2,
                                    serviceIcon: kServicesIcons[index],
                                    serviceTitle: kServicesTitles[index],
                                    serviceDescription:
                                        kServicesDescriptions[index],
                                  ),
                                ),
                              )),
                    ),
                  );
                } else if (constraints.maxWidth >= 800) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                              2,
                              (index) => Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: WidgetAnimator(
                                      child: ServiceCard(
                                        cardWidth: width / 2.6,
                                        cardHeight: height / 2,
                                        serviceIcon: kServicesIcons[index],
                                        serviceTitle: kServicesTitles[index],
                                        serviceDescription:
                                            kServicesDescriptions[index],
                                      ),
                                    ),
                                  )),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                              2,
                              (index) => Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: WidgetAnimator(
                                      child: ServiceCard(
                                        cardWidth: width / 2.6,
                                        cardHeight: height / 2,
                                        serviceIcon: kServicesIcons[index],
                                        serviceTitle: kServicesTitles[index],
                                        serviceDescription:
                                            kServicesDescriptions[index],
                                      ),
                                    ),
                                  )),
                        )
                      ],
                    ),
                  );
                } else {
                  return Align(
                    alignment: AlignmentDirectional.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(
                          kServicesIcons.length,
                              (index) => Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: WidgetAnimator(
                              child: ServiceCard(
                                cardWidth: width / 1.5,
                                cardHeight: height / 2,
                                serviceIcon: kServicesIcons[index],
                                serviceTitle: kServicesTitles[index],
                                serviceDescription:
                                kServicesDescriptions[index],
                              ),
                            ),
                          )),
                    ),
                  );
                }
              },
            )
            // if (Responsive.isMobile(context))

            // Container(
            //   decoration: const BoxDecoration(
            //     // color: Colors.black45,
            //     borderRadius: BorderRadius.all(Radius.circular(10)),
            //   ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: List.generate(
            //         4,
            //             (index) => WidgetAnimator(
            //           child: ServiceCard(
            //             serviceIcon: kServicesIcons[index],
            //             serviceTitle: kServicesTitles[index],
            //             serviceDescription: kServicesDescriptions[index],
            //           ),
            //         )),
            //   ),
            // )
            // Wrap(
            //   children: List.generate(
            //       kServicesIcons.length,
            //       (index) => WidgetAnimator(
            //             child: ServiceCard(
            //               cardWidth: width / 5,
            //               cardHeight: height * 0.65,
            //               serviceIcon: kServicesIcons[index],
            //               serviceTitle: kServicesTitles[index],
            //               serviceDescription: kServicesDescriptions[index],
            //             ),
            //           )),
            // )
          ],
        ),
      ),
    );
  }
}

class _cardWidget extends StatelessWidget {
  const _cardWidget({required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      width: width,
      margin: const EdgeInsets.all(16),
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'Your Card Content Here',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
