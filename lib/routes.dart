import 'package:flutter/widgets.dart';
import 'package:fuelit_pilot/screens/complete_profile/complete_profile_screen.dart';
import 'package:fuelit_pilot/screens/forgot_password/forgot_password_screen.dart';
import 'package:fuelit_pilot/screens/login_succes/login_success.dart';
import 'package:fuelit_pilot/screens/sign_in/sign_in_screen.dart';
import 'package:fuelit_pilot/screens/sign_up/sign_up_screen.dart';
import 'package:fuelit_pilot/screens/splash_screen.dart';

//Every routes here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName:(context) => SplashScreen(),
  SignInScreen.routeName:(context) => SignInScreen(),
  ForgotPasswordScreen.routeName:(context) => ForgotPasswordScreen(),
  LoginSuccesScreen.routeName:(context) => LoginSuccesScreen(),
  SignUpScreen.routeName:(context) => SignUpScreen(),
  CompleteProfileScreen.routeName:(context) => CompleteProfileScreen(),
};
