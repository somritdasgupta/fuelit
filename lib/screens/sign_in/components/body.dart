import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fuelit_pilot/components/custom_surffix_icon.dart';
import 'package:fuelit_pilot/components/form_error.dart';
import 'package:fuelit_pilot/components/no_account_text.dart';
import 'package:fuelit_pilot/components/social_card.dart';
import 'package:fuelit_pilot/constants.dart';
import 'package:fuelit_pilot/screens/components/body.dart';
import 'package:fuelit_pilot/screens/forgot_password/forgot_password_screen.dart';
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
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                Text(
                  "Authenticate.",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: getProportionateScreenWidth(32),
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  "Sign into FUElit with your credentials \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.07),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.07),
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
                SizedBox(
                  height: getProportionateScreenWidth(8),
                ),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

