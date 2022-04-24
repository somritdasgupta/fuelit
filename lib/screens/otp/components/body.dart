import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:fuelit_pilot/constants.dart';
import 'package:fuelit_pilot/size_config.dart';
import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              AnimatedTextKit(
                  pause: Duration(seconds: 5),
                  totalRepeatCount: 1,
                  animatedTexts: [
                  TypewriterAnimatedText('OTP Verification', textStyle: headingStyle,speed: Duration(milliseconds: 2000), cursor:'.',
                  curve: Curves.fastLinearToSlowEaseIn),
              ],
            ),
              Text(
                "We have sent a one time verification code to your phone number", textAlign: TextAlign.center,
                ),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: () {
                  // OTP code resend
                },
                child: buildTimer(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Resend code in ", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15)),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w900, fontSize: 15),
          ),
        ),
      ],
    );
  }
}
