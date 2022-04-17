import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fuelit_pilot/size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key, 
    required this.icon, 
    required this.press,
  }) : super(key: key);
  final String icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(10)),
      padding: EdgeInsets.all(
        getProportionateScreenWidth(12),
      ),
      height: getProportionateScreenHeight(44),
      width: getProportionateScreenWidth(44),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(icon),
      )
    );
  }
}

