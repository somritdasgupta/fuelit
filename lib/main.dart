import 'package:flutter/material.dart';
import 'package:fuelit_pilot/routes.dart';
import 'package:fuelit_pilot/screens/IntroSplash/Intro_screen.dart';
import 'package:fuelit_pilot/theme.dart';
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
      //home: SplashScreen(),
      initialRoute: IntroSplash.routeName,
      routes: routes,
    );
  }
}
