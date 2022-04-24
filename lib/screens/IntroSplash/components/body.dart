import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        children: [
          Image.asset(
            "assets/images/fuelit-flow.gif",
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
