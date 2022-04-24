import 'package:flutter/material.dart';
import 'package:fuelit_pilot/constants.dart';
import 'package:fuelit_pilot/screens/splash/components/body.dart';
import 'package:fuelit_pilot/size_config.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Scrollbar(
        isAlwaysShown: true,
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.02),
                  Text(
                    "END USER LICENSE AGREEMENT.",
                    textAlign: TextAlign.center,
                    style: headingStyle,
                  ),
                  SizedBox(height: getProportionateScreenHeight(30)),
                  Text
                     (
                        "1. THE APPLICATION",
                        textAlign: TextAlign.center,
                        style: titleStyle,
                     ),
                  Text
                     (
                        "FUELit. (Licensed Application) is a piece of software created to To facilate the user, an experience of on-demand fuel delivery service, customized for iOS and Android mobile devices (Devices). It is used to order on-demand fuel delivery service in time of emergencies like sudden low fuel condition during an ongoing trip.\nFurthermore, it is used to Order othe Vehicle related services.",
                        style: contentStyle,
                     ),
                    SizedBox(height: getProportionateScreenHeight(10)),
                     Text
                     (
                        "2. SCOPE OF LICENSE",
                        textAlign: TextAlign.center,
                        style: titleStyle,
                     ),
                     Text
                     (
                        "2.1  You are given a non-transferable, non-exclusive, non-sublicensable license to install and use the Licensed Application on any Devices that You (End-User) own or control and as permitted by the Usage Rules, with the exception that such Licensed Application may be accessed and used by other accounts associated with You (End-User, The Purchaser) via Family Sharing or volume purchasing.\n\n2.2  This license will also govern any updates of the Licensed Application provided by Licensor that replace, repair, and/or supplement the first Licensed Application, unless a separate license is provided for such update, in which case the terms of that new license will govern.\n\n2.3  You may not share or make the Licensed Application available to third parties (unless to the degree allowed by the Usage Rules, and with FUELit Pvt. Ltd.'s prior written consent), sell, rent, lend, lease or otherwise redistribute the Licensed Application.\n\n2.4  You may not reverse engineer, translate, disassemble, integrate, decompile, remove, modify, combine, create derivative works or updates of, adapt, or attempt to derive the source code of the Licensed Application, or any part thereof (except with FUELit Pvt. Ltd.'s prior written consent).\n\n2.5  You may not copy (excluding when expressly authorized by this license and the Usage Rules) or alter the Licensed Application or portions thereof. You may create and store copies only on devices that You own or control for backup keeping under the terms of this license, the Usage Rules, and any other terms and conditions that apply to the device or software used. You may not remove any intellectual property notices. You acknowledge that no unauthorized third parties may gain access to these copies at any time. If you sell your Devices to a third party, you must remove the Licensed Application from the Devices before doing so.\n\n2.6  Violations of the obligations mentioned above, as well as the attempt of such infringement, may be subject to prosecution and damages.\n\n2.7  Licensor reserves the right to modify the terms and conditions of licensing.\n\n2.8  Nothing in this license should be interpreted to restrict third-party terms. When using the Licensed Application, You must ensure that You comply with applicable third-party terms and conditions.",
                        style: contentStyle,
                     ),
                    SizedBox(height: getProportionateScreenHeight(10)),
                    Text
                     (
                        "3. THIRD-PARTY TERMS OF AGREEMENTS AND BENEFICIARY",
                        textAlign: TextAlign.center,
                        style: titleStyle,
                     ),
                     Text
                     (
                        "FUELit Pvt. Ltd. represents and warrants that FUELit Pvt. Ltd. will comply with applicable third-party terms of agreement when using Licensed Application.\n\nIn Accordance with Section 9 of the 'Instructions for Minimum Terms of Developer's End-User License Agreement, both Apple and Google and their subsidiaries shall be third-party beneficiaries of this End User License Agreement and — upon Your acceptance of the terms and conditions of this License Agreement, both Apple and Google will have the right (and will be deemed to have accepted the right) to enforce this End User License Agreement against You as a third-party beneficiary thereof.",
                        style: contentStyle,
                     ),
                     SizedBox(height: getProportionateScreenHeight(10)),
                     Text
                     (
                        "4. PRODUCT CLAIMS",
                        textAlign: TextAlign.center,
                        style: titleStyle,
                     ),
                     Text
                     (
                        "FUELit Pvt. Ltd. and the End-User acknowledge that FUELit Pvt. Ltd., and not the Services, is responsible for addressing any claims of the End-User or any third party relating to the Licensed Application or the End-User’s possession and/or use of that Licensed Application, including, but not limited to:\n\n(i) product liability claims,\n\n(ii) any claim that the Licensed Application fails to conform to any applicable legal or regulatory requirement, and\n\n(iii) claims arising under consumer protection, privacy, or similar legislation, including in connection with Your Licensed Application’s use of the HealthKit and HomeKit.",
                        style: contentStyle,
                     ),
                     SizedBox(height: getProportionateScreenHeight(10)),
                     Text
                     (
                        "5. INTELLECTUAL PROPERTY RIGHTS",
                        textAlign: TextAlign.center,
                        style: titleStyle,
                     ),
                     Text
                     (
                        "FUELit Pvt. Ltd. and the End-User acknowledge that, in the event of any third-party claim that the Licensed Application or the End-User's possession and use of that Licensed Application infringes on the third party's intellectual property rights, FUELit Pvt. Ltd., and not the Services, will be solely responsible for the investigation, defense, settlement, and discharge or any such intellectual property infringement claims.",
                        style: contentStyle,
                     ),
                     SizedBox(height: getProportionateScreenHeight(10)),
                     Text
                     (
                        "6. LIABILITY",
                        textAlign: TextAlign.center,
                        style: titleStyle,
                     ),
                     Text
                     (
                        "7.1  Licensor's responsibility in the case of violation of obligations and tort shall be limited to intent and gross negligence. Only in case of a breach of essential contractual duties (cardinal obligations), Licensor shall also be liable in case of slight negligence. In any case, liability shall be limited to the foreseeable, contractually typical damages. The limitation mentioned above does not apply to injuries to life, limb, or health.\n\n7.2  Licensor takes no accountability or responsibility for any damages caused due to a breach of duties according to Section 2 of this License Agreement. To avoid data loss, You are required to make use of backup functions of the Licensed Application to the extent allowed by applicable third-party terms and conditions of use. You are aware that in case of alterations or manipulations of the Licensed Application, You will not have access to the Licensed Application.\n\n7.3  Licensor takes no accountability and responsibility in case of delivery services are postponed due to unavoidable circumstances.",
                        style: contentStyle,
                     ), 
                     SizedBox(height: getProportionateScreenHeight(10)),
                     Text
                     (
                        "7. APPLICABLE LAW",
                        textAlign: TextAlign.center,
                        style: titleStyle,
                     ),
                     Text
                     (
                        "This License Agreement is governed by the laws of India excluding its conflicts of law rules.",
                        style: contentStyle,
                     ),
                     SizedBox(height: getProportionateScreenHeight(10)),
                     Text
                     (
                        "8. TERMINATION",
                        textAlign: TextAlign.center,
                        style: titleStyle,
                     ),
                     Text
                     (
                        "The license is valid until terminated by FUELit Pvt. Ltd. or by You. Your rights under this license will terminate automatically and without notice from FUELit Pvt. Ltd. if You fail to adhere to any term(s) of this license. Upon License termination, You shall stop all use of the Licensed Application, and destroy all copies, full or partial, of the Licensed Application.",
                        style: contentStyle,
                     ),
                     SizedBox(height: getProportionateScreenHeight(10)),
                     Text
                     (
                        "9. MAINTENANCE AND SUPPORT",
                        textAlign: TextAlign.center,
                        style: titleStyle,
                     ),
                     Text
                     (
                        "9.1  FUELit Pvt. Ltd. is solely responsible for providing any maintenance and support services for this Licensed Application. You can reach the Licensor at the email address listed in the App Store or Play Store Overview for this Licensed Application.\n\n9.2  FUELit Pvt. Ltd. and the End-User acknowledge that the Services have no obligation whatsoever to furnish any maintenance and support services with respect to the Licensed Application.",
                        style: contentStyle,
                     ),
                     SizedBox(height: getProportionateScreenHeight(10)),
                     Text
                     (
                        "10.  MISCELLANEOUS",
                        textAlign: TextAlign.center,
                        style: titleStyle,
                     ),
                     Text
                     (
                        "10.1  If any of the terms of this agreement should be or become invalid, the validity of the remaining provisions shall not be affected. Invalid terms will be replaced by valid ones formulated in a way that will achieve the primary purpose.\n\n10.2  Collateral agreements, changes and amendments are only valid if laid down in writing. The preceding clause can only be waived in writing.",
                        style: contentStyle,
                     ),
                     Padding(
                       padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(30)),
                       child: DefaultButton(text: "Back", press: () {
                         Navigator.pop(context);
                       }
                       ),
                     ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

