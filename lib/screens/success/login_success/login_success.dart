import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fuelit_pilot/navigation_bar/navigation_bar.dart';
import 'package:fuelit_pilot/screens/success/login_success/components/body.dart';

class LoginSuccess extends StatefulWidget {
  const LoginSuccess({Key? key}) : super(key: key);
  static String routeName = "/login_success";
  @override
  State<LoginSuccess> createState() {
    return LoginSuccessScreen();
  }
}

class LoginSuccessScreen extends State<LoginSuccess> {
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
          title: Text("Login Success"),
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: Color.fromARGB(150, 31, 29, 29),
              fontWeight: FontWeight.bold,
              fontSize: 18)),
      body: Body(),
    );
  }
}
