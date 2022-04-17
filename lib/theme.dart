import 'package:flutter/material.dart';
import 'package:fuelit_pilot/constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kPrimaryLightColor,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: txtTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
 OutlineInputBorder outlineInputBorder = OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            );
  return InputDecorationTheme(
            //floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 45,vertical: 25
            ),
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            border: outlineInputBorder,
            );
}

TextTheme txtTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor,fontWeight: FontWeight.w900),
    bodyText2: TextStyle(color: Color.fromARGB(150, 0, 0, 0), fontWeight: FontWeight.w700),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      color: kPrimaryLightColor,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      toolbarTextStyle: TextTheme(
        headline6: TextStyle(color: Colors.black, fontSize: 18),
        ).bodyText2,
      titleTextStyle: TextTheme(
        headline6: TextStyle(color: Colors.black, fontSize: 18),
      ).headline6,
    );
}

