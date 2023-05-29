import 'dart:ui';

import 'package:mpay/Services/signup.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';
import 'dart:convert';

import 'package:mpay/Services/signupConfirmation.dart';

class PersoInfo extends StatefulWidget {
  const PersoInfo({Key? key}) : super(key: key);

  @override
  _PersoInfoState createState() => _PersoInfoState();
}

class _PersoInfoState extends State<PersoInfo> {
  @override
  Map<String, int> wilayas = {
    'Adrar': 1,
    'Chlef': 2,
    'Laghouat': 3,
    'Oum El Bouaghi': 4,
    'Batna': 5,
    'Bejaia': 6,
    'Biskra': 7,
    'Bechar': 8,
    'Blida': 9,
    'Bouira': 10,
    'Tamanrasset': 11,
    'Tebessa': 12,
    'Tlemcen': 13,
    'Tiaret': 14,
    'Tizi Ouzou': 15,
    'Alger': 16,
    'Djelfa': 17,
    'Jijel': 18,
    'Setif': 19,
    'Saida': 20,
    'Skikda': 21,
    'Sidi Bel Abbes': 22,
    'Annaba': 23,
    'Guelma': 24,
    'Constantine': 25,
    'Medea': 26,
    'Mostaganem': 27,
    'MSila': 28,
    'Mascara': 29,
    'Ouargla': 30,
    'Oran': 31,
    'El Bayadh': 32,
    'Illizi': 33,
    'Bordj Bou Arreridj': 34,
    'Boumerdes': 35,
    'El Tarf': 36,
    'Tindouf': 37,
    'Tissemsilt': 38,
    'El Oued': 39,
    'Khenchela': 40,
    'Souk Ahras': 41,
    'Tipaza': 42,
    'Mila': 43,
    'Ain Defla': 44,
    'Naama': 45,
    'Ain Temouchent': 46,
    'Ghardaia': 47,
    'Relizane': 48
  };
  late String dropdownValueCommune;
  late String dropdownValueWilaya;
  int i = 1;
  List<String> communes = [];
  Future<List<String>> readJson(int id) async {
    final String response = await rootBundle.loadString('assets/communes.json');
    final data = await json.decode(response);
    communes.clear();
    for (var i = 0; i < data.length; i++) {
      Map map = data[i];
      if (map.containsValue(id)) {
        communes.add(map["commune"]);
        //print(communes);
      }
    }

    return communes;
  }

  void initState() {
    super.initState();
    dropdownValueCommune = "Commune";
    dropdownValueWilaya = "Wilaya";
    readJson(i).whenComplete(() {
      //dropdownValueCommune = communes.first;
    });
  }

  final _nomController = TextEditingController();
  final _prenomController = TextEditingController();
  final _mobileController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    // readJson(i).whenComplete(() {

    // });
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(17, 40, 17, 35),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                bienvenuelogo(),
                SizedBox(
                  height: 20,
                ),
                progress(1, context),
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
                textfield("Nom", _nomController, 1),
                SizedBox(
                  height: 20,
                ),
                textfield("Prénom", _prenomController, 2),
                SizedBox(
                  height: 20,
                ),
                textfield("Mobile", _mobileController, 3),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(top: 13, bottom: 20),
                  width: double.infinity,
                  child: DropdownButtonFormField(
                    //menuMaxHeight: 300,
                    //itemHeight: 50,
                    validator: (value) => dropdownValueWilaya == "Wilaya"
                        ? 'Veillez choisir une wilaya'
                        : null,
                    hint: Container(
                        child: Text(
                      dropdownValueWilaya,
                      style: TextStyle(fontSize: 14, color: Color(0xff3142ba)),
                    )),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 25, right: 20),
                        //errorStyle: TextStyle(color: Colors.purple),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        filled: true,
                        //hintStyle: TextStyle(color: Colors.grey[800]),

                        fillColor: Color(0xffF5F6FC)),
                    //value: dropdownValueWilaya,
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xff3142ba),
                    ),
                    focusNode: FocusNode(),
                    style: TextStyle(fontSize: 15, color: Color(0xff3142ba)),
                    iconSize: 30,
                    //underline: Container(),
                    isExpanded: true,
                    items: wilayas.keys.map((String items) {
                      return DropdownMenuItem(
                        child: Text(items),
                        value: items,
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValueWilaya = newValue!;

                        i = wilayas[newValue] as int;

                        //dropdownValueCommune = "Commune";

                        //print('test');
                        readJson(i).whenComplete(() {
                          dropdownValueCommune = communes.first;
                        });
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 13, bottom: 20),
                  width: double.infinity,
                  child: DropdownButtonFormField(
                    value: dropdownValueCommune,
                    validator: (value) => dropdownValueCommune == "Commune"
                        ? 'Veillez choisir une Commune'
                        : null,
                    hint: Container(
                        child: Text(
                      dropdownValueCommune,
                      style: TextStyle(fontSize: 14, color: Color(0xff3142ba)),
                    )),
                    decoration: InputDecoration(
                        //labelText: "Commune",
                        contentPadding: EdgeInsets.only(left: 25, right: 20),
                        //errorStyle: TextStyle(color: Colors.purple),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        filled: true,
                        //hintStyle: TextStyle(color: Colors.grey[800]),

                        fillColor: Color(0xffF5F6FC)),
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xff3142ba),
                    ),
                    focusNode: FocusNode(),
                    style: TextStyle(fontSize: 15, color: Color(0xff3142ba)),
                    iconSize: 30,
                    //underline: Container(),
                    isExpanded: true,
                    items: communes.map((String items) {
                      return DropdownMenuItem(
                        child: Text(items),
                        value: items,
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValueCommune = newValue!;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 0.04 * MediaQuery.of(context).size.width,
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
                      if (_formKey.currentState!.validate()) {
                        _nomController.text = _nomController.text;
                        Navigator.pushReplacementNamed(context, 'signup2',
                            arguments: {
                              'nom': _nomController.text,
                              'prenom': _prenomController.text,
                              'mobile': _mobileController.text,
                              'wilaya': dropdownValueWilaya,
                              'commune': dropdownValueCommune
                            });
                        //Navigator.pushNamed(context, 'signup2');
                      }
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
      ),
    ));
  }
}

class AccountInfo extends StatefulWidget {
  const AccountInfo({Key? key}) : super(key: key);

  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  static final _nomUtilisateurController = TextEditingController();
  static final _motDePasseController = TextEditingController();
  static final _confirmerMotDePasseController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;
  Future<int>? _signUp;
  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context)!.settings.arguments as Map;

    //print(args);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(17, 40, 17, 35),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                bienvenuelogo(),
                SizedBox(
                  height: 20,
                ),
                progress(2, context),
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
                textfield("Nom d'utilisateur", _nomUtilisateurController, 0),
                SizedBox(
                  height: 20,
                ),
                textfieldpassword("Mot de passe", _motDePasseController),
                SizedBox(
                  height: 20,
                ),
                textfieldconfirmpassword("Confirmer votre mot de passe",
                    _confirmerMotDePasseController, _motDePasseController),
                SizedBox(
                  height: 20,
                ),
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
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        print('all things are okay');
                        setState(() {
                          print('setting state');

                          _signUp = postSignUp(
                              args['nom'],
                              args['prenom'],
                              _nomUtilisateurController.text,
                              _motDePasseController.text,
                              args['mobile'],
                              args['wilaya'],
                              "exemple",
                              args['commune'],
                              "",
                              "");

                          _signUp!.whenComplete(() {
                            if (apiresp.error == false) {
                              print('successed');
                              Navigator.pushReplacementNamed(context, 'signup3',
                                  arguments: {
                                    'username': _nomUtilisateurController.text,
                                  });
                            } else {
                              print('failed');

                              String error = apiresp.errorMessage;

                              final snackBar = SnackBar(
                                backgroundColor: const Color(0xFFAFB1C4),
                                duration: Duration(seconds: 30),
                                content: Text(
                                  error,
                                  style: TextStyle(color: Colors.red),
                                ),
                                action: SnackBarAction(
                                  label: 'Ok',
                                  onPressed: () {},
                                ),
                              );

                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          });

                          //buildFutureBuilder();
                          //print(_signUp.toString());
                          // if (_signUp.toString()) {
                          //   print('okaaay');
                          //   Navigator.pushReplacementNamed(context, 'signup3',
                          //       arguments: {
                          //         'username': _nomUtilisateurController.text,
                        });
                      }
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
      ),
    ));
  }

  // FutureBuilder<APIResponse> buildFutureBuilder() {
  //   return FutureBuilder<APIResponse>(
  //     future: _signUp,
  //     builder: (context, snapshot) {
  //       if (snapshot.error == false) {
  //         print("success");
  //         return Text("success");
  //       } else {
  //         print('fail');
  //         return Text("fail");
  //       }
  //     },
  //   );
  // }
}

class SmsValidation extends StatefulWidget {
  const SmsValidation({Key? key}) : super(key: key);

  @override
  _SmsValidationState createState() => _SmsValidationState();
}

class _SmsValidationState extends State<SmsValidation> {
  Future<int>? _signUpConfirmation;

  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context)!.settings.arguments as Map;
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
                progress(3, context),
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
                            _signUpConfirmation = postSignUpConfirmation(
                                args['username'], "0000");
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

/* --------------------------------------------------------------- */

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

Widget progress(int step, context) {
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
          child: IconButton(
            padding: EdgeInsets.all(7),
            onPressed: () {
              //print('step ====== ${step}');
              if (step == 2) {
                Navigator.popAndPushNamed(context, 'signup1');
              }
            },
            icon: SvgPicture.asset('assets/profile.svg'),
          ),
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
          child: IconButton(
            onPressed: () {
              if (step == 3) {
                //Navigator.pop(context);
              } else {}
            },
            icon: SvgPicture.asset(pathicon2),
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

Widget textfield(String hinttext, TextEditingController controller, int i) {
  TextInputType textInput;
  if (i == 3) {
    textInput = TextInputType.phone;
  } else {
    textInput = TextInputType.name;
  }
  return TextFormField(
    controller: controller,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Ce champ ne doit pas être vide';
      }
      if (i == 3) {
        if (value.length != 10 ||
            value[0] != "0" ||
            (value[1] != "7" && value[1] != "5" && value[1] != "6")) {
          //print('error');
          return 'Veillez saisir un numéro valide';
        }
      }
      return null;
    },
    style: TextStyle(
      color: const Color(0xff3142BA),
    ),
    keyboardType: textInput,
    focusNode: FocusNode(),
    decoration: InputDecoration(
      labelText: hinttext,
      labelStyle: TextStyle(
        color: const Color(0xff3142BA),
      ),
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
  return TextFormField(
    controller: controller,
    validator: (value) {
      if (value!.isEmpty) {
        return 'Ce champ ne doit pas être vide';
      }
      if (value.length < 8) {
        return 'le mot de passe doit contenir au minimun 8 caractères';
      }

      return null;
    },
    obscureText: true,
    enableSuggestions: false,
    autocorrect: false,
    style: TextStyle(
      color: const Color(0xff3142BA),
    ),
    focusNode: FocusNode(),
    decoration: InputDecoration(
      labelText: "Mot de passe",
      labelStyle: TextStyle(
        color: const Color(0xff3142BA),
      ),
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

Widget textfieldconfirmpassword(String hinttext,
    TextEditingController controller, TextEditingController controllerConfirm) {
  return TextFormField(
    controller: controller,
    validator: (value) {
      if (value != controllerConfirm.text &&
          controllerConfirm.text.length >= 8) {
        return 'Vous devez saisir le même mot de passe';
      }

      return null;
    },
    obscureText: true,
    enableSuggestions: false,
    autocorrect: false,
    style: TextStyle(
      color: const Color(0xff3142BA),
    ),
    focusNode: FocusNode(),
    decoration: InputDecoration(
      filled: true,
      labelText: "Confirmer votre mot de passe",
      labelStyle: TextStyle(
        color: const Color(0xff3142BA),
      ),
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
