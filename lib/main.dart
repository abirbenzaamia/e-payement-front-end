import 'package:flutter/material.dart';
import 'package:mpay/QR.dart';
import 'package:mpay/account.dart';
import 'package:mpay/addCard.dart';
import 'package:mpay/apropos.dart';
import 'package:mpay/general.dart';
import 'package:mpay/info_profil.dart';
import 'package:mpay/password.dart';
import 'login_page.dart';
import 'pin_page.dart';
import 'signup_pages.dart';
import 'home.dart';
import 'general.dart';
import 'splash.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Muli'),
    initialRoute: 'splash',
    routes: {
      'splash': (context) => Splash(),
      'pinpage': (context) => codePIN(),
      'login': (context) => Login(),
      'signup1': (context) => PersoInfo(),
      'signup2': (context) => AccountInfo(),
      'signup3': (context) => SmsValidation(),
      'home': (context) => home(),
      'addCard': (context) => AddCard(),
      'general': (context) => General(),
      'account': (context) => Account(),
      'QR1': (context) => QR1(),
      'QR3': (context) => QR3(),
      'InfoProfile': (context) => InfoProfile(),
      'apropos': (context) => Apropos(),
      'setPassword': (context) => SetPassword(),
      'setNewPassword': (context) => SetNewPassword(),
      'passwordFinal': (context) => PasswordFinal(),
    },
  ));
}
