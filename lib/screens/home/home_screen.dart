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
      ),
    );
  }
}
