import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fuelit_pilot/navigation_bar/navigation_bar.dart';
import 'package:fuelit_pilot/screens/success/signup_success/components/body.dart';

class SignupSuccess extends StatefulWidget {
  const SignupSuccess({Key? key}) : super(key: key);
  static String routeName = "/signup_success";
  @override
  State<SignupSuccess> createState() {
    return SignupSuccessScreen();
  }
}

class SignupSuccessScreen extends State<SignupSuccess> {
  @override
  void initState(){
  super.initState();
  startTimer();
}
startTimer() async{
  var duration = Duration(seconds: 2);
  return Timer(duration, route);
}
route() {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NaviBar()));
}
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    return Scaffold(
      appBar: AppBar(
          leading: SizedBox(),
          title: Text("Signup Succesful"),
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: Color.fromARGB(150, 31, 29, 29),
              fontWeight: FontWeight.bold,
              fontSize: 18)),
      body: Body(),
    );
  }
}
