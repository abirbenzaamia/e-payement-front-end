import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isChecked = false;
  bool _passwordVisible = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Color(0xff3142ba);
    }
    return Color(0xff3142ba);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(32, 50, 32, 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: SvgPicture.asset('assets/logo_login.svg'),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                //padding: EdgeInsets.fromLTRB(31, 10, 31, 10),
                //padding: EdgeInsets.only(left: 31),
                width: 302.0,
                height: 50.0,

                child: TextField(
                  controller: _usernameController,
                  style: TextStyle(
                    color: const Color(0xff3142BA),
                  ),
                  focusNode: FocusNode(),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0x083142ba),
                    //hitnText
                    contentPadding: EdgeInsets.only(left: 31),
                    hintText: "Nom d'utilisateur",
                    hintStyle:
                        TextStyle(fontSize: 15, color: Color(0xff8E8E8E)),
                    //borders
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                    //focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 1.0, color: const Color(0xff3142BA)),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    //labelText: 'Username',
                  ),
                  textInputAction: TextInputAction.next,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      //padding: EdgeInsets.fromLTRB(31, 10, 31, 10),
                      //padding: EdgeInsets.only(left: 31),
                      width: 302.0,
                      height: 50.0,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        focusNode: FocusNode(),
                        controller: _passwordController,
                        style: TextStyle(
                          color: const Color(0xff3142BA),
                        ),
                        decoration: InputDecoration(
                          //isCollapsed: false,
                          filled: true,
                          fillColor: const Color(0x083142ba),
                          contentPadding: EdgeInsets.only(left: 31),

                          hintText: 'mot de passe',
                          hintStyle:
                              TextStyle(fontSize: 15, color: Color(0xff8E8E8E)),
                          //borders
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                          //focused Border
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.0, color: const Color(0xff3142BA)),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              // Based on passwordVisible state choose the icon
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: const Color(0xff3142BA),
                            ),
                            onPressed: () {
                              // Update the state i.e. toogle the state of passwordVisible variable
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                          //labelText: 'Username',
                        ),
                        obscureText:
                            !_passwordVisible, //This will obscure text dynamically
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(
                                () {
                                  isChecked = value!;
                                },
                              );
                            },
                          ),
                          Text(
                            'Rester connecter',
                            style: TextStyle(
                                fontSize: 12, color: const Color(0xff8E8E8E)),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Mot de passe oublier',
                        style: TextStyle(
                            fontSize: 12, color: const Color(0xffF5305C)),
                      ),
                    )
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
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'home');
                  },
                  child: Text(
                    'Se connecter',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Text(
                  'Ou',
                  style:
                      TextStyle(fontSize: 14, color: const Color(0xff828282)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 168.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: const Color(0xff34d3e8),
                ),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'signup1');
                  },
                  child: Text(
                    "S'inscrire",
                    style:
                        TextStyle(color: const Color(0xff3142BA), fontSize: 15),
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
