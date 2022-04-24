import 'package:flutter/cupertino.dart';
import 'package:fuelit_pilot/screens/home/components/dimension.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText(
      {Key? key,
      this.color = const Color.fromARGB(255, 17, 17, 18),
      required this.text,
      this.size = 0,
      this.overFlow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        maxLines: 1,
        overflow: overFlow,
        style: TextStyle(
            fontFamily: 'Roboto',
            color: color,
            fontSize: size == 0 ? Dimensions.font20 : size,
            fontWeight: FontWeight.w400));
  }
}
