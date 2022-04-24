import 'package:flutter/material.dart';
import 'package:fuelit_pilot/screens/sign_up/sign_up_screen.dart';
import 'package:fuelit_pilot/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Not yet on FUELit? ",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignUpScreen.routeName);
          },
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: Colors.deepOrange,
                fontWeight: FontWeight.w900),
          ),
        )
      ],
    );
  }
}
