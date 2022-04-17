import 'package:flutter/material.dart';
import 'package:fuelit_pilot/components/no_account_text.dart';
import 'package:fuelit_pilot/components/social_card.dart';
import 'package:fuelit_pilot/constants.dart';
import 'package:fuelit_pilot/size_config.dart';

import 'sign_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Text(
                  "Authenticate.",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: getProportionateScreenWidth(32),
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  "Sign into FUELit with your credentials \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  SocialCard
                  (
                    icon: "assets/icons/google-icon.svg",
                    press: ()  {},
                  ),
                  SocialCard
                  (
                    icon: "assets/icons/facebook-2.svg",
                    press: ()  {},
                  ),
              ],
                ),
                SizedBox(height: getProportionateScreenWidth(2)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

