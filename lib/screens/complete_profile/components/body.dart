import 'package:flutter/material.dart';
import 'package:fuelit_pilot/constants.dart';
import 'package:fuelit_pilot/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            Text(
              "Complete Profile",
              style: headingStyle,
            ),
            Text("Complete your profile by providing us \nadditional details",
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
