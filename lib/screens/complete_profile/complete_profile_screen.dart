import 'package:flutter/material.dart';
import 'package:fuelit_pilot/screens/complete_profile/components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({ Key? key }) : super(key: key);

  static String routeName = "/complete_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Sign Up"),
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: Color.fromARGB(150, 31, 29, 29),
              fontWeight: FontWeight.bold,
              fontSize: 18)),
      body: Body(),
    );
  }
}
