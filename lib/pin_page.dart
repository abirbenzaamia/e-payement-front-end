import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:pinput/pin_put/pin_put_state.dart';

class codePIN extends StatefulWidget {
  const codePIN({Key? key}) : super(key: key);

  @override
  _codePINState createState() => _codePINState();
}

class _codePINState extends State<codePIN> {
  final codePin = TextEditingController();
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
        body: Container(
          padding: EdgeInsets.fromLTRB(10, 69, 10, 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-1.0, -0.98),
              end: Alignment(0.32, 0.37),
              colors: [const Color(0xff34d3e8), const Color(0xff3142ba)],
              stops: [0.0, 1.0],
            ),
          ),
          child: Column(
            children: [
              Container(
                child: SvgPicture.asset('assets/logo.svg'),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Text(
                  'Entrer le code PIN',
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              //code pin
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  right: 0.1 * MediaQuery.of(context).size.width,
                  left: 0.1 * MediaQuery.of(context).size.width,
                ),
                height: 80,
                alignment: Alignment.center,
                child: PinPut(
                  eachFieldWidth: 10,
                  eachFieldHeight: 100,
                  withCursor: true,
                  obscureText: '•',
                  fieldsCount: 6,
                  enabled: false,
                  selectedFieldDecoration: _pinPutDecoration.copyWith(
                    color: Colors.amber,
                  ),
                  controller: codePin,
                  pinAnimationType: PinAnimationType.scale,
                  textStyle:
                      const TextStyle(color: Colors.white, fontSize: 50.0),
                ),
              ),

              Spacer(),
              Container(
                padding: EdgeInsets.fromLTRB(45, 5, 45, 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          pinbutton('1'),
                          pinbutton('2'),
                          pinbutton('3'),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          pinbutton('4'),
                          pinbutton('5'),
                          pinbutton('6'),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          pinbutton('7'),
                          pinbutton('8'),
                          pinbutton('9'),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          pinbutton('0'),
                        ],
                      )
                    ]),
              ),
              Container(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(
                        onPressed: () {
                          setState(() {
                            if (codePin.text == "") {
                              codePin.text = "";
                            } else {
                              codePin.text = codePin.text
                                  .substring(0, (codePin.text).length - 1);
                            }
                          });
                          //print(codePin);
                        },
                        child: Text(
                          'supprimer',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        )),
                    FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        child: Text(
                          'OK',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget pinbutton(String num) {
    return FlatButton(
      onPressed: () {
        setState(() {
          codePin.text += num;
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      textColor: Colors.white,
      height: 55,
      minWidth: 60,
      child: Text(
        num,
        style: TextStyle(
          fontSize: 36,
        ),
      ),
    );
  }
}
