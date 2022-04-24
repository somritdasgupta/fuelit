import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fuelit_pilot/constants.dart';
import 'package:fuelit_pilot/screens/home/components/body.dart';
import 'package:fuelit_pilot/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: AnimatedTextKit(
        repeatForever: true,
        pause: Duration(seconds: 5),
      animatedTexts: [
        TypewriterAnimatedText('FUELit', textStyle: headingStyle,speed: Duration(milliseconds: 2000), cursor:'.',
        curve: Curves.fastLinearToSlowEaseIn),
      ],
    ),
      centerTitle: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: GestureDetector(
        onTap: () {
          
        },
        child:
            Icon(Icons.notifications_outlined, size: 35, color: kPrimaryColor),
      ),
    );
  }
}
