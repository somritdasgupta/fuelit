import 'package:flutter/material.dart';
import 'package:fuelit_pilot/navigation_bar/navigation_bar.dart';
import 'package:fuelit_pilot/routes.dart';
import 'package:fuelit_pilot/screens/IntroSplash/Intro_screen.dart';
import 'package:fuelit_pilot/screens/splash/splash_screen.dart';
import 'package:fuelit_pilot/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FUELit.',
      theme: theme(),
      //home: SplashScreen(),
      initialRoute: IntroSplash.routeName,
      routes: routes,
    );
  }
}

class LoadPage extends StatefulWidget {
  LoadPage({Key? key}) : super(key: key);

  @override
  LoadPageState createState() => LoadPageState();
}

class LoadPageState extends State {
  bool newLaunch=false;

  @override
  void initState() {
    super.initState();
    loadNewLaunch();
  }

  loadNewLaunch() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      bool _newLaunch = ((prefs.getBool('newLaunch') ?? true));
      newLaunch = _newLaunch;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: newLaunch ? SplashScreen() : NaviBar(),
    );
  }
}
