import 'package:flutter/widgets.dart';
import 'package:fuelit_pilot/navigation_bar/navigation_bar.dart';
import 'package:fuelit_pilot/screens/IntroSplash/Intro_screen.dart';
import 'package:fuelit_pilot/screens/account/account_screen.dart';
import 'package:fuelit_pilot/screens/complete_profile/complete_profile_screen.dart';
import 'package:fuelit_pilot/screens/forgot_password/forgot_password_screen.dart';
import 'package:fuelit_pilot/screens/home/home_screen.dart';
import 'package:fuelit_pilot/screens/notification/notification_screen.dart';
import 'package:fuelit_pilot/screens/otp/otp_screen.dart';
import 'package:fuelit_pilot/screens/sign_in/sign_in_screen.dart';
import 'package:fuelit_pilot/screens/sign_up/sign_up_screen.dart';
import 'package:fuelit_pilot/screens/specifics/specifics_main.dart';
import 'package:fuelit_pilot/screens/splash/splash_screen.dart';
import 'package:fuelit_pilot/screens/success/login_success/login_success.dart';
import 'package:fuelit_pilot/screens/success/signup_success/signup_success.dart';
import 'package:fuelit_pilot/screens/tnc/tnc_screen.dart';
import 'package:fuelit_pilot/screens/track/track_screen.dart';

//Every routes here
final Map<String, WidgetBuilder> routes = {
  IntroSplash.routeName:(context) => IntroSplash(),
  SplashScreen.routeName:(context) => SplashScreen(),
  SignInScreen.routeName:(context) => SignInScreen(),
  LoginSuccess.routeName:(context) => LoginSuccess(), 
  SignupSuccess.routeName:(context) => SignupSuccess(),
  ForgotPasswordScreen.routeName:(context) => ForgotPasswordScreen(),
  SignUpScreen.routeName:(context) => SignUpScreen(),
  CompleteProfileScreen.routeName:(context) => CompleteProfileScreen(),
  OtpScreen.routeName:(context) => OtpScreen(),
  TncScreen.routeName:(context) => TncScreen(),
  NotificationScreen.routeName:(context) => NotificationScreen(),
  NaviBar.routeName:(context) => NaviBar(),
  HomeScreen.routeName:(context) => HomeScreen(),
  TrackScreen.routeName:(context) => TrackScreen(),
  SpecificsScreen.routeName: (context) => SpecificsScreen(),
  AccountScreen.routeName:(context) => AccountScreen(),

};
