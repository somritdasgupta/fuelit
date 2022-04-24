import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fuelit_pilot/constants.dart';
import 'package:fuelit_pilot/screens/tnc/components/body.dart';
import 'package:fuelit_pilot/size_config.dart';

class TncScreen extends StatelessWidget {
  const TncScreen({ Key? key }) : super(key: key);

  static String routeName = "/tnc";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]
        );
    return Scaffold(
      appBar: AppBar(
          title: Text("Terms & Conditions"),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded,
                  size: 25, color: kPrimaryColor),
              onPressed: () {
                Navigator.pop(context);
              }),
          titleTextStyle: TextStyle(
              color: Color.fromARGB(150, 31, 29, 29),
              fontWeight: FontWeight.bold,
              fontSize: 18)),
      body: Body(),
    );
  }
}
