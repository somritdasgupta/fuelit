import 'package:flutter/material.dart';
import 'package:fuelit_pilot/screens/forgot_password/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recovery"),
        centerTitle: true,
    titleTextStyle: TextStyle(color: Color.fromARGB(150, 31, 29, 29),fontWeight: FontWeight.bold, fontSize: 18)
      ),
      body: Body(),
    );
  }
}
