import 'package:flutter/cupertino.dart';
import 'package:fuelit_pilot/screens/home/components/dimension.dart';
import 'package:fuelit_pilot/screens/home/components/small_Text.dart';

class IconandTextWidgets extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const IconandTextWidgets(
      {Key? key,
      required this.icon,
      required this.text,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: Dimensions.iconsize,
        ),
        SizedBox(
          width: 5,
        ),
        SmallText(text: text),
      ],
    );
  }
}
