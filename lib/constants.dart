import 'package:flutter/material.dart';
import 'package:fuelit_pilot/size_config.dart';

const kPrimaryColor = Color.fromARGB(255, 0, 0, 0);
const kPrimaryLightColor = Color.fromARGB(255, 255, 225, 225);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color.fromARGB(255, 55, 55, 17), Color(0xFFFF7643)],
);
const kSecondaryColor = Color.fromARGB(255, 0, 0, 0);
const kTextColor = Color.fromARGB(255, 0, 0, 0);

const kAnimationDuration = Duration(milliseconds: 300);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(32),
  fontWeight: FontWeight.w900,
  color: kPrimaryColor,
  height: 1.5,
);



// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Email required to authenticate";
const String kInvalidEmailError = "Enter a valid email address";
const String kPassNullError = "Password cannot be empty";
const String kShortPassError = "Password requires atleast 8 characters";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
