import 'package:flutter/material.dart';
import 'screens/QR.dart';
import 'screens/home_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/general_screen.dart';

import 'screens/addCard_screen.dart';
import 'screens/account_screen.dart';
import 'screens/apropos_screen.dart';
import 'screens/login_screen.dart';
import 'screens/pin_screen.dart';
import 'screens/password.dart';

import 'screens/profile_info_screen.dart';
import 'screens/signup_screens.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Muli'),
    initialRoute: 'splash',
    routes: {
      'splash': (context) => Splash(),
      'pinpage': (context) => CodePIN(),
      'login': (context) => Login(),
      'signup1': (context) => PersoInfo(),
      'signup2': (context) => AccountInfo(),
      'signup3': (context) => SmsValidation(),
      'home': (context) => Home(),
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
