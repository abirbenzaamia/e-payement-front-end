// ignore_for_file: public_member_api_docs
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';
import 'pin_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => codePIN())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-1.0, -0.98),
              end: Alignment(0.32, 0.37),
              colors: [const Color(0xff34d3e8), const Color(0xff3142ba)],
              stops: [0.0, 1.0],
            ),
          ),
          child: Center(child: SvgPicture.asset('assets/logo.svg')),
        ),
      ),
    );
    //backgroundColor: Colors.blue);
  }
}
