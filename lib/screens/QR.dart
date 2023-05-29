import 'package:flutter/widgets.dart';

import 'addCard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
//import 'package:qr_code_scanner/qr_code_scanner.dart';

class QR1 extends StatefulWidget {
  const QR1({Key? key}) : super(key: key);

  @override
  _QR1State createState() => _QR1State();
}

class _QR1State extends State<QR1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: new PreferredSize(
          child: appbar("Transaction", false, context),
          preferredSize: new Size(MediaQuery.of(context).size.width, 150.0)),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 55, 0, 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(),
            Container(
              child: Text(
                'Scan QR Code',
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
              height: 20,
            ),
            Container(
              child: SizedBox(
                width: 282.0,
                height: 46.0,
                child: Text(
                  'Lorem ipsum dolor sit amet, mei et dicat scripserit persequeris. ',
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
            ),
            // SizedBox(
            //   height: 60,
            // ),
            Container(
              padding: EdgeInsets.only(top: 60),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  //SvgPicture.asset('assets/qrcode.svg'),
                  //SvgPicture.asset('assets/qrcode.svg'),
                  //SvgPicture.asset('assets/cadre.svg'),
                  //SvgPicture.asset('assets/qrcode.svg'),
                  Container(
                    alignment: Alignment.center,
                    height: 200,
                    width: 200,
                    //color: Colors.red,
                    child: SvgPicture.asset('assets/cadre.svg'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 0),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: SvgPicture.asset('assets/qrcode.svg'),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              width: 171.0,
              height: 36.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: const Color(0xff3142ba),
              ),
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {},
                child: Center(
                  child: Text(
                    'Scan QR',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                      height: 1.5625,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class QR3 extends StatefulWidget {
  const QR3({Key? key}) : super(key: key);

  @override
  _QR3State createState() => _QR3State();
}

class _QR3State extends State<QR3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: new PreferredSize(
                child: appbar("Transaction", false, context),
                preferredSize:
                    new Size(MediaQuery.of(context).size.width, 150.0)),
            body: Container(
                padding: EdgeInsets.fromLTRB(0, 130, 0, 130),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(),
                    Container(
                      height: 65,
                      width: 65,
                      child: SvgPicture.asset('assets/ok.svg'),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 35, bottom: 20),
                      width: 64.0,
                      child: Text(
                        'Bravo..!',
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
                    Container(
                      child: SizedBox(
                        width: 282.0,
                        height: 60.0,
                        child: Text(
                          'Lorem ipsum dolor sit amet, mei et dicat scripserit persequeris. ',
                          style: TextStyle(
                            fontFamily: 'Muli',
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
                    Spacer(),
                    Container(
                      width: 275.0,
                      height: 36.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: const Color(0xff3142ba),
                      ),
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'Retour',
                            style: TextStyle(
                              fontSize: 16,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w600,
                              height: 1.5625,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}
