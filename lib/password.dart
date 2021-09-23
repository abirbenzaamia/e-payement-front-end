import 'package:flutter_svg/svg.dart';

import 'addCard.dart';
import 'package:flutter/material.dart';
import 'signup_pages.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({Key? key}) : super(key: key);

  @override
  _SetPasswordState createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  final _actualPassword = TextEditingController();
  final _actualPasswordConfirmation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: new PreferredSize(
                child: appbar("Mot de passe", false, context),
                preferredSize:
                    new Size(MediaQuery.of(context).size.width, 150.0)),
            body: SingleChildScrollView(
                child: Container(
              padding: EdgeInsets.fromLTRB(17, 30, 17, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(),
                        Container(
                          margin: EdgeInsets.only(bottom: 15),
                          child: SizedBox(
                            width: 90.0,
                            child: Text(
                              'Attention !',
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color(0xfff5305c),
                                fontWeight: FontWeight.w700,
                                height: 1.5625,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          child: SizedBox(
                            width: 282.0,
                            height: 46.0,
                            child: Text(
                              'Lorem ipsum dolor sit amet, mei et dicat scripserit persequeris. ',
                              style: TextStyle(
                                fontSize: 14,
                                color: const Color(0xff414141),
                                height: 2,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    child: Text(
                      'Mot de passe actuel',
                      style: TextStyle(
                        fontFamily: 'Muli',
                        fontSize: 15,
                        color: const Color(0xff3142ba),
                        fontWeight: FontWeight.w600,
                        height: 1.6666666666666667,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  textfieldpassword('Mot de passe', _actualPassword),
                  SizedBox(
                    height: 20,
                  ),
                  textfieldpassword('Confirmer votre mot de passe',
                      _actualPasswordConfirmation),
                  SizedBox(
                    height: 150,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(),
                        Container(
                          width: 275.0,
                          height: 36.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: const Color(0xff3142ba),
                          ),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'setNewPassword');
                            },
                            child: Text(
                              'enregistrer',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ))));
  }
}

class SetNewPassword extends StatefulWidget {
  const SetNewPassword({Key? key}) : super(key: key);

  @override
  _SetNewPasswordState createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {
  final _newPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: new PreferredSize(
                child: appbar("Mot de passe", false, context),
                preferredSize:
                    new Size(MediaQuery.of(context).size.width, 150.0)),
            body: SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.fromLTRB(17, 30, 17, 40),
                    child: Column(
                      children: [
                        Container(),
                        Container(
                          margin: EdgeInsets.only(bottom: 15),
                          child: SizedBox(
                            width: 90.0,
                            child: Text(
                              'Attention !',
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color(0xfff5305c),
                                fontWeight: FontWeight.w700,
                                height: 1.5625,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          child: SizedBox(
                            width: 282.0,
                            height: 46.0,
                            child: Text(
                              'Lorem ipsum dolor sit amet, mei et dicat scripserit persequeris. ',
                              style: TextStyle(
                                fontSize: 14,
                                color: const Color(0xff414141),
                                height: 2,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        textfieldpassword('Nouveau mot de passe', _newPassword),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(11, 25, 11, 19),
                          width: 326.0,
                          height: 143.0,
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
                              Text(
                                'New pin',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: const Color(0xff414141),
                                  fontWeight: FontWeight.w600,
                                  height: 1.6666666666666667,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(
                                height: 21,
                              ),
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
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 120,
                        ),
                        Container(
                          width: 275.0,
                          height: 36.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: const Color(0xff3142ba),
                          ),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'passwordFinal');
                            },
                            child: Text(
                              'enregistrer',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    )))));
  }
}

class PasswordFinal extends StatefulWidget {
  const PasswordFinal({Key? key}) : super(key: key);

  @override
  _PasswordFinalState createState() => _PasswordFinalState();
}

class _PasswordFinalState extends State<PasswordFinal> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: new PreferredSize(
                child: appbar("Mot de passe", false, context),
                preferredSize:
                    new Size(MediaQuery.of(context).size.width, 150.0)),
            body: Container(
                padding: EdgeInsets.fromLTRB(17, 90, 17, 40),
                child: Column(
                  children: [
                    Container(),
                    Container(
                      height: 140,
                      width: 128,
                      //color: Colors.amber,
                      child: SvgPicture.asset('assets/password.svg'),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: 68.0,
                      child: Text(
                        'Bravo..! ',
                        style: TextStyle(
                          fontFamily: 'Muli',
                          fontSize: 16,
                          color: const Color(0xff2bc9b3),
                          fontWeight: FontWeight.w700,
                          height: 1.5625,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 282.0,
                      height: 46.0,
                      child: Text(
                        'Lorem ipsum dolor sit amet, mei et dicat scripserit persequeris. ',
                        style: TextStyle(
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
                      height: 44,
                    ),
                    Container(
                      width: 275.0,
                      height: 36.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: const Color(0xff3142ba),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'home');
                        },
                        child: Text(
                          'Retour',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}
