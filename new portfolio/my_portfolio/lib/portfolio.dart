import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_icons/simple_icons.dart';

String full_name = "Salim Benabadji";
String logo_name = "Salim";
String nickname = "Developer and Technical Writer";
String subTitle =
    "A passionate individual who always thrives to work on end to end products which develop sustainable and scalable social and technical systems to create impact.";
String resumeLink = "https://drive.google.com/file/d/1eCrMAJLbuuqfeCj3za_bvtODb4XfikI9/view?usp=sharing";
String portfolio_repository = "https://drive.google.com/file/d/1eCrMAJLbuuqfeCj3za_bvtODb4XfikI9/view?usp=sharing";

const socialMediaLinks = [
  {
    "name": "Github",
    "link": "https://github.com/salim97",
    "fontAwesomeIcon": FontAwesomeIcons.github, // Reference https://fontawesome.com/icons/github?style=brands
    "backgroundColor": Color(0xFF181717), // Reference https://simpleicons.org/?q=github
  },
  {
    "name": "LinkedIn",
    "link": "https://www.linkedin.com/in/salimbenabadji/",
    "fontAwesomeIcon": FontAwesomeIcons.linkedin, // Reference https://fontawesome.com/icons/linkedin-in?style=brands
    "backgroundColor": Color(0xFF0077B5), // Reference https://simpleicons.org/?q=linkedin
  },
  {
    "name": "YouTube",
    "link": "https://www.youtube.com/channel/UCGf0PLe3CEirppgJyKhEacg",
    "fontAwesomeIcon": FontAwesomeIcons.youtube, // Reference https://fontawesome.com/icons/youtube?style=brands
    "backgroundColor": Color(0xFFFF0000), // Reference https://simpleicons.org/?q=youtube
  },
  {
    "name": "Instagram",
    "link": "https://www.instagram.com/salim_benabadji/",
    "fontAwesomeIcon": FontAwesomeIcons.instagram, // Reference https://fontawesome.com/icons/instagram?style=brands
    "backgroundColor": Color(0xFFE4405F), // Reference https://simpleicons.org/?q=instagram
  },
  {
    "name": "Stack Overflow",
    "link": "https://stackoverflow.com/users/story/11453484?view=Timeline",
    "fontAwesomeIcon": FontAwesomeIcons.stackOverflow, // Reference https://fontawesome.com/icons/instagram?style=brands
    "backgroundColor": Color(0xFF181717), // Reference https://simpleicons.org/?q=instagram
  },
  {
    "name": "EDN",
    "link": "https://www.edn.com/author/benabadji-mohammed-salim/",
    "fontAwesomeIcon": FontAwesomeIcons.book, // Reference https://fontawesome.com/icons/instagram?style=brands
    "backgroundColor": Color(0xFFD14836), // Reference https://simpleicons.org/?q=instagram
  },
  {
    "name": "easyeda",
    "link": "https://easyeda.com/benabadji.mohammed.salim",
    "fontAwesomeIcon": FontAwesomeIcons.microchip, // Reference https://fontawesome.com/icons/instagram?style=brands
    "backgroundColor": Color(0xFF1877F2), // Reference https://simpleicons.org/?q=instagram
  },
];
// https://simpleicons.org/
const skills = [
  {
    "title": "Full Stack Development",
    "fileName": "assets/images/fullstackdev.png",
    "skills": [
      "⚡ Building resposive website front end using Flutter Web",
      "⚡ Developing mobile applications using Flutter,",
      "⚡ Creating application backend in Node, Express & NestJS",
    ],
    "softwareSkills": [
      {
        "skillName": "Flutter",
        "fontAwesomeClassname": SimpleIcons.flutter,
        "style": {
          "backgroundColor": Color(0xFF02569B),
        },
      },
      {
        "skillName": "Firebase",
        "fontAwesomeClassname": SimpleIcons.firebase,
        "style": {
          "backgroundColor": Color(0xFFFFCA28),
        },
      },
      {
        "skillName": "Qt5",
        "fontAwesomeClassname": SimpleIcons.qt,
        "style": {
          "backgroundColor": Color(0xFF41CD52),
        },
      },
      {
        "skillName": "NestJS",
        "fontAwesomeClassname": SimpleIcons.nestjs,
        "style": {
          "backgroundColor": Color(0xFFE0234E),
        },
      },
      {
        "skillName": "NodeJS",
        "fontAwesomeClassname": SimpleIcons.nodedotjs,
        "style": {
          "backgroundColor": Color(0xFF339933),
        },
      },
    ],
  },
  {
    "title": "Embedded Systems",
    "fileName": "assets/images/hardware.png",
    "skills": [
      "⚡ Building Custom Electronic devices for specific needs",
      "⚡ Working various interfaces ( WiFi, Bluetooth, I2C, SPI, USB, RS232 )",
    ],
    "softwareSkills": [
      {
        "skillName": "Qt5",
        "fontAwesomeClassname": SimpleIcons.qt,
        "style": {
          "backgroundColor": Color(0xFF41CD52),
        },
      },
      {
        "skillName": "Arduino",
        "fontAwesomeClassname": SimpleIcons.arduino,
        "style": {
          "backgroundColor": Color(0xFF00979D),
        },
      },
      {
        "skillName": "Raspberry Pi",
        "fontAwesomeClassname": SimpleIcons.raspberrypi,
        "style": {
          "backgroundColor": Color(0xFFA22846),
        },
      },
      {
        "skillName": "C++",
        "fontAwesomeClassname": SimpleIcons.cplusplus,
        "style": {
          "backgroundColor": Color(0xFF00599C),
        },
      },
      {
        "skillName": "ESP8266/ESP32",
        "fontAwesomeClassname": SimpleIcons.espressif,
        "style": {
          "backgroundColor": Color(0xFFE7352C),
        },
      },
      {
        "skillName": "Microchip",
        "fontAwesomeClassname": SimpleIcons.stmicroelectronics,
        "style": {
          "backgroundColor": Color(0xFF03234B),
        },
      },
    ],
  },
];
