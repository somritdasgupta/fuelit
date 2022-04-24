import 'package:flutter/material.dart';
import 'package:fuelit_pilot/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          Image.asset(
            "assets/images/success.gif",
            height: getProportionateScreenWidth(250),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          Text(
            "You're Logged in.",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(30),
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(207, 0, 0, 0)),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
