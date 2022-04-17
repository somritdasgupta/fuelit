import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';


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
        Text(
          "Fuelling it for you.",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(25),
            color: kPrimaryColor,
            fontWeight: FontWeight.w900,
          ),
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
          width: getProportionateScreenWidth(340),
        ),
      ],
    );
  }
}
