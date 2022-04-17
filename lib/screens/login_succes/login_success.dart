import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fuelit_pilot/screens/login_succes/components/body.dart';

class LoginSuccesScreen extends StatelessWidget {
  const LoginSuccesScreen({Key? key}) : super(key: key);

  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]
        );
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success"),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Color.fromARGB(150, 31, 29, 29),fontWeight: FontWeight.bold, fontSize: 18)
      ),
      body: Body(),
    );
  }
}
