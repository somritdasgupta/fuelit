import 'package:flutter/material.dart';
import 'package:fuelit_pilot/routes.dart';
<<<<<<< HEAD
import 'package:fuelit_pilot/screens/IntroSplash/Intro_screen.dart';
=======
import 'package:fuelit_pilot/screens/home/fuel/fuel_detail.dart';
import 'package:fuelit_pilot/screens/home/home_screen.dart';
import 'package:fuelit_pilot/screens/splash/splash_screen.dart';
>>>>>>> c6a2a815de998b8db25d9d416f1468cc766e26cd
import 'package:fuelit_pilot/theme.dart';
import 'package:get/get.dart';
import 'helper/dependecies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FUELit.',
      theme: theme(),
<<<<<<< HEAD
      //home: SplashScreen(),
      initialRoute: IntroSplash.routeName,
      routes: routes,
=======
      home: FuelDetail(),
      // initialRoute: SplashScreen.routeName,
      // routes: routes,
>>>>>>> c6a2a815de998b8db25d9d416f1468cc766e26cd
    );
  }
}
