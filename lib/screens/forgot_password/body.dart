import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:fuelit_pilot/components/custom_surffix_icon.dart';
import 'package:fuelit_pilot/components/default_button.dart';
import 'package:fuelit_pilot/components/form_error.dart';
import 'package:fuelit_pilot/components/no_account_text.dart';
import 'package:fuelit_pilot/constants.dart';
import 'package:fuelit_pilot/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              AnimatedTextKit(
                  pause: Duration(seconds: 5),
                  totalRepeatCount: 1,
                  animatedTexts: [
                  TypewriterAnimatedText('Forgot Password', textStyle: headingStyle,speed: Duration(milliseconds: 2000), cursor:'.',
                  curve: Curves.fastLinearToSlowEaseIn),
              ],
            ),
              Text(
                "We will send a password reset code to your registered email address",
                textAlign: TextAlign.center,
              ),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({Key? key}) : super(key: key);

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  late String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.2),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            autofillHints: [AutofillHints.email],
            autofocus: true,
            textInputAction: TextInputAction.done,
            onSaved: (newValue) => email = newValue!,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else {
                if (emailValidatorRegExp.hasMatch(value) &&
                    errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.remove(kInvalidEmailError);
                  });
                }
              }

              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }

              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter Your Email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurfixxIcon(
                svgIcon: "assets/icons/Mail.svg",
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(2),
          ),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          DefaultButton(
              text: "Reset Password",
              press: () {
                if (_formKey.currentState!.validate()) {
                  //Mailchimp API here.
                }
              }),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          NoAccountText()
        ],
      ),
    );
  }
}
