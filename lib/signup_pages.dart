import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersoInfo extends StatefulWidget {
  const PersoInfo({Key? key}) : super(key: key);

  @override
  _PersoInfoState createState() => _PersoInfoState();
}

class _PersoInfoState extends State<PersoInfo> {
  final _nomController = TextEditingController();
  final _prenomController = TextEditingController();
  final _mobileController = TextEditingController();
  final _wilayeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(17, 40, 17, 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              bienvenuelogo(),
              SizedBox(
                height: 20,
              ),
              progress(1),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Informations personnelles',
                    style: TextStyle(
                      color: const Color(0xff828282),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              textfield("Nom", _nomController),
              SizedBox(
                height: 20,
              ),
              textfield("Prénom", _prenomController),
              SizedBox(
                height: 20,
              ),
              textfield("Mobile", _mobileController),
              SizedBox(
                height: 20,
              ),
              textfield("Wilaya", _wilayeController),
              SizedBox(
                height: 0.3 * MediaQuery.of(context).size.width,
              ),
              Container(
                width: 296.0,
                height: 36.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: const Color(0xff3142ba),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'signup2');
                  },
                  child: Text(
                    'Etape suivante',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

/* --------------------------------------------------------------- */
class AccountInfo extends StatefulWidget {
  const AccountInfo({Key? key}) : super(key: key);

  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  final _nomUtilisateurController = TextEditingController();
  final _motDePasseController = TextEditingController();
  final _confirmerMotDePasseController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(17, 40, 17, 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              bienvenuelogo(),
              SizedBox(
                height: 20,
              ),
              progress(2),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Informations du compte',
                    style: TextStyle(
                      color: const Color(0xff828282),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              textfield("Nom d'utilisateur", _nomUtilisateurController),
              SizedBox(
                height: 20,
              ),
              textfieldpassword("Mot de passe", _motDePasseController),
              SizedBox(
                height: 20,
              ),
              textfieldpassword("Confirmer votre mot de passe",
                  _confirmerMotDePasseController),
              SizedBox(
                height: 20,
              ),
              textfield("Email", _emailController),
              SizedBox(
                height: 0.3 * MediaQuery.of(context).size.width,
              ),
              Container(
                width: 296.0,
                height: 36.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: const Color(0xff3142ba),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'signup3');
                  },
                  child: Text(
                    'Etape suivante',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
/* --------------------------------------------------------------- */

class SmsValidation extends StatefulWidget {
  const SmsValidation({Key? key}) : super(key: key);

  @override
  _SmsValidationState createState() => _SmsValidationState();
}

class _SmsValidationState extends State<SmsValidation> {
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.deepPurpleAccent),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(17, 40, 17, 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                bienvenuelogo(),
                SizedBox(
                  height: 20,
                ),
                progress(3),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: SvgPicture.asset('assets/smsvalidation.svg'),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 200.0,
                  child: Text(
                    'Validez votre numéro',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color(0xff515151),
                      fontWeight: FontWeight.w700,
                      height: 1.5625,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                SizedBox(
                  width: 282.0,
                  height: 87.0,
                  child: Text(
                    'Lorem ipsum dolor sit amet, mei et dicat scripserit persequeris. Ei mea audire abhorreant definitiones,',
                    style: TextStyle(
                      fontFamily: 'Muli',
                      fontSize: 14,
                      color: const Color(0xff414141),
                      height: 2,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 0.01 * MediaQuery.of(context).size.width,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(11, 20, 11, 19),
                  width: 326.0,
                  height: 169.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(0, 0),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      //smscode field
                      Container(
                        width: 210,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            codearea(context, true, false),
                            codearea(context, false, false),
                            codearea(context, false, false),
                            codearea(context, false, true),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 296.0,
                        height: 36.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: const Color(0xff3142ba),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'home');
                          },
                          child: Center(
                            child: Text(
                              'Validation',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget bienvenuelogo() {
  return Container(
    height: 60,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Bienvenue!',
          style: TextStyle(
            fontSize: 36,
            color: Colors.black,
          ),
        ),
        Container(
          height: 60,
          width: 60,
          child: SvgPicture.asset('assets/logo_login.svg'),
        ),
      ],
    ),
  );
}

Widget progress(int step) {
  String pathicon2 = 'assets/account_info.svg';
  String pathicon3 = 'assets/sms.svg';

  Color color2 = const Color(0xffD9D9D9);
  Color color3 = const Color(0xffD9D9D9);

  if (step > 1) {
    color2 = const Color(0xff3142ba);
    pathicon2 = 'assets/account_info_white.svg';
  }
  if (step > 2) {
    color3 = const Color(0xff3142ba);
    pathicon3 = 'assets/sms_white.svg';
  }

  return Container(
    padding: EdgeInsets.only(left: 33, right: 33),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 31.0,
          height: 31.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            color: const Color(0xff3142ba),
            border: Border.all(width: 1.0, color: const Color(0xff3142ba)),
          ),
          // child: Icon(Icons.favorite),
          child: Container(
              padding: EdgeInsets.all(7),
              child: SvgPicture.asset('assets/profile.svg')),
        ),
        Container(
          height: 2,
          width: 50,
          color: color2,
        ),
        Container(
          width: 31.0,
          height: 31.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            color: color2,
          ),
          child: Container(
            padding: EdgeInsets.all(7),
            child: SvgPicture.asset(pathicon2),
          ),
        ),
        Container(
          height: 2,
          width: 50,
          color: color3,
        ),
        Container(
          width: 31.0,
          height: 31.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            color: color3,
          ),
          child: Container(
            padding: EdgeInsets.all(7),
            child: SvgPicture.asset(pathicon3),
          ),
        ),
      ],
    ),
  );
}

Widget textfield(String hinttext, TextEditingController controller) {
  return TextField(
    controller: controller,
    style: TextStyle(
      color: const Color(0xff3142BA),
    ),
    focusNode: FocusNode(),
    decoration: InputDecoration(
      filled: true,
      fillColor: const Color(0x083142ba),
      //hitnText
      contentPadding: EdgeInsets.only(left: 25),
      hintText: hinttext,
      hintStyle: TextStyle(fontSize: 15, color: Color(0xff8E8E8E)),
      //borders
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: BorderSide.none,
      ),
      //focused Border
      focusedBorder: OutlineInputBorder(
        borderSide:
            const BorderSide(width: 1.0, color: const Color(0xff3142BA)),
        borderRadius: BorderRadius.circular(30.0),
      ),
      //labelText: 'Username',
    ),
    textInputAction: TextInputAction.next,
    textAlign: TextAlign.left,
  );
}

Widget textfieldpassword(String hinttext, TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: true,
    enableSuggestions: false,
    autocorrect: false,
    style: TextStyle(
      color: const Color(0xff3142BA),
    ),
    focusNode: FocusNode(),
    decoration: InputDecoration(
      filled: true,
      fillColor: const Color(0x083142ba),
      //hitnText
      contentPadding: EdgeInsets.only(left: 31),
      hintText: hinttext,
      hintStyle: TextStyle(fontSize: 15, color: Color(0xff8E8E8E)),
      //borders
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: BorderSide.none,
      ),
      //focused Border
      focusedBorder: OutlineInputBorder(
        borderSide:
            const BorderSide(width: 1.0, color: const Color(0xff3142BA)),
        borderRadius: BorderRadius.circular(30.0),
      ),
      //labelText: 'Username',
    ),
    textInputAction: TextInputAction.next,
    textAlign: TextAlign.left,
  );
}

Widget codearea(context, bool first, last) {
  return Container(
    height: 55,
    width: 50,
    //padding: EdgeInsets.all(),
    //color: Colors.amber,
    //color: Colors.amber,
    child: Center(
      child: TextFormField(
        keyboardType: TextInputType.number,
        showCursor: false,
        readOnly: false,

        textAlign: TextAlign.center,
        maxLength: 1,
        style: TextStyle(color: Color(0xff3142BA), fontSize: 25),
        //controller: cvc,
        focusNode: FocusNode(),
        decoration: InputDecoration(
          counter: Offstage(),
          //isCollapsed: false,
          filled: true,
          fillColor: const Color(0x083142ba),

          contentPadding: EdgeInsets.all(5),
          //hintStyle: TextStyle(fontSize: 15, color: Color(0xff8E8E8E)),
          //borders
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
          //focused Border
          focusedBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(width: 1.0, color: const Color(0xff3142BA)),
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        //obscureText: true,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          new LengthLimitingTextInputFormatter(1),
        ],

        onChanged: (value) {
          if (value.length == 1 && last == false) {
            FocusScope.of(context).nextFocus();
          }
          if (value.length == 0 && first == false) {
            FocusScope.of(context).previousFocus();
          }
        },
      ),
    ),
  );
}
