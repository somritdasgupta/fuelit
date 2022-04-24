import 'package:flutter/material.dart';
import 'package:fuelit_pilot/size_config.dart';

//Default light theme color pallete
const kPrimaryColor = Color.fromARGB(255, 11, 10, 7);
const kPrimaryLightColor = Color.fromARGB(255, 255, 225, 225);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color.fromARGB(255, 255, 225, 225),
    Color.fromARGB(255, 249, 173, 197)
        ],
   );
const kSecondaryColor = Color.fromARGB(255, 0, 0, 0);
const kTextColor = Color.fromARGB(255, 0, 0, 0);

//default animation styling
const kAnimationDuration = Duration(milliseconds: 300);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(32),
  fontWeight: FontWeight.w900,
  color: kPrimaryColor,
  height: 1.5,
);

final titleStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w700,
  color: kPrimaryColor,
  height: 1.5,
);

final contentStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.normal,
  color: Color.fromARGB(221, 52, 41, 41),
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
const String kUserNameNullError = "Username is required";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
