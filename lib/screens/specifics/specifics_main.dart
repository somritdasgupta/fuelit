import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'package:flutter/services.dart';
import 'package:fuelit_pilot/constants.dart';
import 'package:fuelit_pilot/screens/notification/notification_screen.dart';
import 'package:fuelit_pilot/screens/sign_in/sign_in_screen.dart';
import 'package:fuelit_pilot/screens/tnc/tnc_screen.dart';
import 'package:fuelit_pilot/size_config.dart';


class SpecificsScreen extends StatelessWidget {
  const SpecificsScreen({Key? key}) : super(key: key);

  static String routeName = "/specifics";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kPrimaryLightColor,
        appBar: buildAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.01),
              // user card
              BigUserCard(
                cardColor: Colors.red.shade300,
                cardRadius: 35,
                userName: "FUELit. Admin",
                userProfilePic: AssetImage(
                  "assets/images/logo-foreground.png"
                ),
                cardActionWidget: SettingsItem(
                  icons: Icons.edit_attributes_rounded,
                  iconStyle: IconStyle(
                    withBackground: true,
                    borderRadius: 50,
                    backgroundColor: Colors.black87,
                  ),
                  title: "Edit Profile",
                  subtitle: "Tap to update your details",
                  onTap: () {
                    print("OK");
                  },
                ),
              ),
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.arrow_counterclockwise_circle,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.blue.shade300,
                    ),
                    title: 'Order History',
                    subtitle: "See your past orders",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.credit_card_rounded,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.red,
                    ),
                    title: 'Payment Methods',
                    subtitle: "Update your payment methods",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.location_searching_rounded,
                    iconStyle: IconStyle(
                      backgroundColor: Colors.black87,
                    ),
                    title: 'Address Book',
                    subtitle: "Add or update your address",
                  ),
                  SettingsItem(
                    onTap: () {
                      Navigator.pushNamed(
                          context, NotificationScreen.routeName);
                    },
                    icons: Icons.notifications,
                    iconStyle: IconStyle(
                      backgroundColor: Colors.purple.shade900,
                    ),
                    title: 'Notifications',
                    subtitle: "Update your notification preferences",
                  ),
                ],
              ),
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {
                      Navigator.pushNamed(context, TncScreen.routeName);
                    },
                    icons: CupertinoIcons.doc_on_clipboard_fill,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.indigo.shade400,
                    ),
                    title: 'Terms & Conditions',
                    subtitle: "Read usage terms and conditions",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.question_circle,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.cyan.shade900,
                    ),
                    title: 'Help & Support',
                    subtitle: "Support related to our services",
                  ),
                ],
              ),
              // You can add a settings title
              SettingsGroup(
                settingsGroupTitle: "Specifics",
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.repeat,
                    iconStyle: IconStyle(
                      iconsColor: Colors.blue.shade900,
                      withBackground: true,
                      backgroundColor: Colors.cyan.shade100,
                    ),
                    title: "Change Email",
                    subtitle: "Update your alternative email address",
                    titleStyle: TextStyle(
                        fontSize: getProportionateScreenHeight(17),
                        fontWeight: FontWeight.w900,
                        color: Colors.blue.shade900),
                  ),
                ],
              ),
              SettingsGroup(
                items: [
                   SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.lock_rotation_open,
                    iconStyle: IconStyle(
                      iconsColor: Colors.teal.shade900,
                      withBackground: true,
                      backgroundColor: Colors.cyan.shade100,
                    ),
                    title: "Change Password",
                    subtitle: "Update your new password",
                    titleStyle: TextStyle(
                        fontSize: getProportionateScreenHeight(17),
                        fontWeight: FontWeight.w900,
                        color: Colors.teal.shade800),
                  ),
                ],
              ),
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.delete_solid,
                    iconStyle: IconStyle(
                      iconsColor: Colors.red.shade900,
                      withBackground: true,
                      backgroundColor: Colors.cyan.shade100,
                    ),
                    title: "Delete account",
                    subtitle: "Permanently close your account",
                    titleStyle: TextStyle(
                        fontSize: getProportionateScreenHeight(17),
                        fontWeight: FontWeight.w900,
                        color: Colors.red.shade900),
                  ),
                ],
              ),
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {
                      Navigator.popAndPushNamed(
                          context, SignInScreen.routeName);
                    },
                    icons: Icons.logout_rounded,
                    iconStyle: IconStyle(
                      iconsColor: Colors.deepOrange,
                      withBackground: true,
                      backgroundColor: Colors.cyan.shade100,
                    ),
                    title: "Log Out",
                    subtitle: "Securely sign out of your account",
                    titleStyle: TextStyle(
                        fontSize: getProportionateScreenHeight(17),
                        fontWeight: FontWeight.w900,
                        color: Colors.deepOrange),
                  ),
                ],
              ),
              
              SizedBox(height: SizeConfig.screenHeight * 0.1),
            ],
         ),
        ),
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    title: AnimatedTextKit(
        repeatForever: true,
        pause: Duration(seconds: 5),
      animatedTexts: [
        TypewriterAnimatedText('Settings', textStyle: headingStyle,speed: Duration(milliseconds: 2000), cursor:'.',
        curve: Curves.fastLinearToSlowEaseIn),
      ],
    ),
    backgroundColor: Colors.transparent,
    centerTitle: false,
    elevation: 0,
  );
}
