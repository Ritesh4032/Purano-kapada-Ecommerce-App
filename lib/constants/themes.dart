import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF008AA3);
const kSecondaryColor = Color.fromARGB(255, 44, 47, 59);
const kThirdColor = Color(0xFF956538);
const kLightBackground = Color.fromARGB(255, 237, 237, 237);
const kWhiteColor = Color.fromARGB(255, 230, 230, 230);
const kBlackColor = Colors.black54;
const kdarkColor = Color.fromARGB(255, 5, 33, 55);

class AppTheme {
  static const kBigTitle = TextStyle(
    color: kWhiteColor,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  static const kHeadingOne = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const kSeeAllText = TextStyle(color: kPrimaryColor);

  static final kBodyText = TextStyle(
    color: Colors.grey.shade500,
    fontSize: 12,
  );

  static const kCardTitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
}
