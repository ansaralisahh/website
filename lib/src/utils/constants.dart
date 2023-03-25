import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Color kPrimaryColor = Color(0xff2191cc);

// URL Launcher
void launchURL(String _url) async => await canLaunch(_url)
    ? await launch(_url)
    : throw 'Impossible de lancer $_url';

final kServicesIcons = [
  "http://img1.wsimg.com/isteam/ip/44c53e14-7cb7-4c69-824f-31d4cebeb667/blob-9f63fb2.png/:/cr=t:12.44%25,l:0%25,w:100%25,h:75.13%25/rs=w:600,h:300,cg:true",
  "http://img1.wsimg.com/isteam/ip/44c53e14-7cb7-4c69-824f-31d4cebeb667/blob-01108b3.png/:/cr=t:12.44%25,l:0%25,w:100%25,h:75.13%25/rs=w:600,h:300,cg:true",
  "http://img1.wsimg.com/isteam/ip/44c53e14-7cb7-4c69-824f-31d4cebeb667/blob-01108b3.png/:/cr=t:12.44%25,l:0%25,w:100%25,h:75.13%25/rs=w:600,h:300,cg:true",
  "http://img1.wsimg.com/isteam/ip/44c53e14-7cb7-4c69-824f-31d4cebeb667/blob-01108b3.png/:/cr=t:12.44%25,l:0%25,w:100%25,h:75.13%25/rs=w:600,h:300,cg:true",
];

final kServicesTitles = [
  "Web Development",
  "App Development",
  "Social Media Management",
  "Content Creation",
];

final kServicesDescriptions = [
  "Are you looking for a web development company \nthat can help you unlock your website potential?\nIf yes, then you have come to the right place",
  "Android app development is a great way\nto give your  business a competitive edge and make\nit Android app development is a great way to android app,\nyou can reach out to a wider range of customers and\nprovide them with an engaging experience",
  "We'll help in developing brand awareness\nand in strengthening engagement strategies\nto increase customer loyalty",
  "We'll curate innovative content like memes,\nshort videos etc which will engage your audience\nand skyrocket your brand value ",
];
