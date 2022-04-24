import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:fuelit_pilot/components/social_card.dart';
import 'package:fuelit_pilot/constants.dart';
import 'package:fuelit_pilot/screens/sign_up/components/sign_up_form.dart';
import 'package:fuelit_pilot/screens/tnc/tnc_screen.dart';
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
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              AnimatedTextKit(
                  pause: Duration(seconds: 5),
                  totalRepeatCount: 1,
                  animatedTexts: [
                  TypewriterAnimatedText('Create Account', textStyle: headingStyle,speed: Duration(milliseconds: 2000), cursor:'.',
                  curve: Curves.fastLinearToSlowEaseIn),
              ],
            ),
              Text("Enter your email and create a password \nfor your account",
                  textAlign: TextAlign.center),
              SizedBox(height: SizeConfig.screenHeight * 0.03),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.03),
                Text(
                  "------ OR ------",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                ),
              SizedBox(height: SizeConfig.screenHeight * 0.03),
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
                    SocialCard
                  (
                    icon: "assets/icons/apple.svg",
                    press: ()  {},
                  ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
                  Text(
                    'By continuing you confirm that you agree to our',
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
          SizedBox(height: SizeConfig.screenHeight * 0.01),
              ],
            ),
        )));
  }
}

