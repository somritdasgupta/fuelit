import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fuelit_pilot/constants.dart';
import 'package:fuelit_pilot/screens/account/components/body.dart';
import 'package:fuelit_pilot/size_config.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  static String routeName = "/account";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("Account Specifics."),
      centerTitle: false,
      titleTextStyle: TextStyle(
          color: kPrimaryColor, fontWeight: FontWeight.w900, fontSize: 28),
      elevation: 0,
      leading: IconButton(
          icon: Icon(Icons.notifications_outlined,size: 28, color: kPrimaryColor),
          onPressed: () => Navigator.defaultRouteName,
          ),
    );
  }
}
