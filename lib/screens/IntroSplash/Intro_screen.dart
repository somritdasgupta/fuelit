import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fuelit_pilot/constants.dart';
import 'package:fuelit_pilot/screens/IntroSplash/components/body.dart';
import 'package:fuelit_pilot/screens/splash/splash_screen.dart';

class IntroSplash extends StatefulWidget {
  const IntroSplash({Key? key}) : super(key: key);
  static String routeName = "/intro_splash";
  @override
  State<IntroSplash> createState() {
    return IntroSplashScreen();
  }
}

class IntroSplashScreen extends State<IntroSplash> {
  @override
  void initState()
  {
  super.initState();
  startTimer();
  }
startTimer() async{
  var duration = Duration(milliseconds: 2800);
  return Timer(duration, route);
}
route() {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SplashScreen()));
}
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    return Scaffold(
      appBar: null,
      body: Body(),
      backgroundColor: kPrimaryLightColor,
    );
  }
}
