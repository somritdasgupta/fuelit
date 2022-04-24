import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:fuelit_pilot/constants.dart';
import 'package:fuelit_pilot/screens/complete_profile/components/complete_profile_form.dart';
import 'package:fuelit_pilot/screens/tnc/tnc_screen.dart';
import 'package:fuelit_pilot/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              AnimatedTextKit(
                  pause: Duration(seconds: 5),
                  totalRepeatCount: 1,
                  animatedTexts: [
                  TypewriterAnimatedText('Complete Profile', textStyle: headingStyle,speed: Duration(milliseconds: 2000), cursor:'.',
                  curve: Curves.fastLinearToSlowEaseIn),
              ],
            ),
              Text("Complete signing up by providing us \nadditional details",
                  textAlign: TextAlign.center
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.06),
                  CompleteProfileForm(),
                  SizedBox(height: getProportionateScreenHeight(30)),
                  Text(
                    "By continuing you confirm that you agree to our",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.caption,
                  ),
                  GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, TncScreen.routeName),
                child: Text(
                  "Terms and Conditions",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrange),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

