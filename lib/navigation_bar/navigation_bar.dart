import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:fuelit_pilot/constants.dart';
import 'package:fuelit_pilot/screens/home/home_screen.dart';
import 'package:fuelit_pilot/screens/specifics/specifics_main.dart';
import 'package:fuelit_pilot/screens/track/track_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NaviBar extends StatefulWidget {
  const NaviBar({Key? key}) : super(key: key);
  static String routeName = "/navigation_bar";
  @override
  State<NaviBar> createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {

  clearSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('newLaunch');
  }

  int pageIndex = 0;
  List<Widget> pageList = <Widget>
  [
    HomeScreen(),
    TrackScreen(),
    SpecificsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      extendBody: true,
      body: pageList[pageIndex],
      bottomNavigationBar:Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: DotNavigationBar(      
             margin: EdgeInsets.only(left: 10, right: 10),
            currentIndex: pageIndex,
            onTap: (value) {
              setState(() {
                pageIndex = value;
              });
            },
            dotIndicatorColor: Colors.transparent,
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: Colors.black38,
            enableFloatingNavBar: true,
            enablePaddingAnimation: false,
            borderRadius: 22,
            boxShadow: [BoxShadow(color: Colors.black26,blurRadius: 30,offset: Offset(0,45))],
            duration: Duration(milliseconds: 3000),
            backgroundColor: Colors.white,
            items: [
              DotNavigationBarItem(
                  icon: Icon(Icons.water_drop_rounded,size: 30)),
              DotNavigationBarItem(
                  icon: Icon(Icons.track_changes_rounded,size: 30)),
              DotNavigationBarItem(
                  icon: Icon(Icons.security_rounded,size: 30)),
            ]
          ),
       ),
     );
   }
}

