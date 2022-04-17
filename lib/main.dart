// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fuelit_pilot/routes.dart';
import 'package:fuelit_pilot/screens/splash_screen.dart';
import 'package:fuelit_pilot/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FUELit.',
      theme: theme(),
      //home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

