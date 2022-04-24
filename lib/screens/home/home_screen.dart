<<<<<<< HEAD
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
=======
import 'package:flutter/material.dart';
import 'package:fuelit_pilot/screens/home/components/big_Text.dart';
import 'package:fuelit_pilot/screens/home/components/categories.dart';
import 'package:fuelit_pilot/screens/home/components/dimension.dart';
import 'package:fuelit_pilot/screens/home/components/small_Text.dart';
import 'package:fuelit_pilot/screens/home/components/Colors.dart';

class MainFuelPage extends StatefulWidget {
  const MainFuelPage({Key? key}) : super(key: key);

  @override
  State<MainFuelPage> createState() => _MainFuelPageState();
}

class _MainFuelPageState extends State<MainFuelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "India",
                        color: Color.fromARGB(255, 46, 30, 222),
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "Kolkata",
                            color: Colors.black45,
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      child: Icon(Icons.search,
                          color: Colors.white, size: Dimensions.iconsize),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        color: AppColors.mainColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: FuelPage(),
          )),
        ],
>>>>>>> c6a2a815de998b8db25d9d416f1468cc766e26cd
      ),
    );
  }
}
