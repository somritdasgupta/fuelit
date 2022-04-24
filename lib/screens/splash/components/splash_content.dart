import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:fuelit_pilot/size_config.dart';
import 'package:fuelit_pilot/constants.dart';


class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(flex: 7),
        AnimatedTextKit(
                  pause: Duration(seconds: 5),
                  totalRepeatCount: 1,
                  animatedTexts: [
                  TypewriterAnimatedText('Fuelling it for you', textStyle: TextStyle(fontSize: getProportionateScreenWidth(25),color: kPrimaryColor,fontWeight: FontWeight.w900,),speed: Duration(milliseconds: 2000), cursor:'.',curve: Curves.fastLinearToSlowEaseIn),
              ],
            ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(365),
          width: getProportionateScreenWidth(400),
        ),
      ],
    );
  }
}
