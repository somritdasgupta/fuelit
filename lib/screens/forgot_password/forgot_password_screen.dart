import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fuelit_pilot/constants.dart';
import 'package:fuelit_pilot/screens/forgot_password/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]
        );
    return Scaffold(
      appBar: AppBar(
        title: Text("Recovery"),
        leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded,
                  size: 25, color: kPrimaryColor),
              onPressed: () {
                Navigator.pop(context);
              }),
        centerTitle: true,
    titleTextStyle: TextStyle(color: Color.fromARGB(150, 31, 29, 29),fontWeight: FontWeight.bold, fontSize: 18)
      ),
      body: Body(),
    );
  }
}
