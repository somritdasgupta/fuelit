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
        getProportionateScreenWidth(10),
      ),
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(80),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
      BoxShadow(
        color: Colors.teal.shade300,
        spreadRadius: 3,
        blurRadius: 7,
        offset: Offset(0, 0),
      ),
    ],
      ),
      child: SvgPicture.asset(icon),
      )
    );
  }
}

