import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]
        );
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign in"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        titleTextStyle: TextStyle(color: Color.fromARGB(150, 31, 29, 29),fontWeight: FontWeight.bold, fontSize: 18)
      ),
      body: Body(),
    );
  }
}
