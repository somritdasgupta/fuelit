import 'package:flutter/material.dart';
import 'package:fuelit_pilot/screens/components/body.dart';
import 'package:fuelit_pilot/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/Splash";
  @override
  Widget build(BuildContext context) {
    //call needed at starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
