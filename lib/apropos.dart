import 'package:flutter/material.dart';
import 'addCard.dart';

class Apropos extends StatefulWidget {
  const Apropos({Key? key}) : super(key: key);

  @override
  _AproposState createState() => _AproposState();
}

class _AproposState extends State<Apropos> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xffECECEC),
            appBar: new PreferredSize(
                child: appbar("A propos", false, context),
                preferredSize:
                    new Size(MediaQuery.of(context).size.width, 150.0)),
            body: SingleChildScrollView(
                child: Container(
              padding: EdgeInsets.fromLTRB(17, 30, 17, 0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(17, 11, 0, 0),
                    margin: EdgeInsets.only(bottom: 8),
                    width: 326.0,
                    height: 134.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: const Color(0xffffffff),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'A Propos MPAY',
                          style: TextStyle(
                            fontFamily: 'Muli',
                            fontSize: 16,
                            color: const Color(0xff515151),
                            fontWeight: FontWeight.w700,
                            height: 1.5625,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        SizedBox(
                          width: 284.0,
                          height: 83.0,
                          child: Text(
                            'Lorem ipsum dolor sit amet, mei et dicat scripserit persequeris. Ei mea audire abhorreant definitiones,',
                            style: TextStyle(
                              fontFamily: 'Muli',
                              fontSize: 14,
                              color: const Color(0xff414141),
                              height: 2,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 326.0,
                    height: 66.0,
                    padding: EdgeInsets.fromLTRB(17, 11, 0, 0),
                    margin: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: const Color(0xffffffff),
                    ),
                    child: SizedBox(
                      width: 296.0,
                      height: 47.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                            width: 60,
                            child: Text(
                              'Version',
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color(0xff515151),
                                fontWeight: FontWeight.w700,
                                height: 1.5625,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 296.0,
                            height: 21.0,
                            child: Text(
                              'V1.23  (125X58566)',
                              style: TextStyle(
                                fontSize: 14,
                                color: const Color(0xff414141),
                                height: 2,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 326.0,
                    height: 50.0,
                    margin: EdgeInsets.only(bottom: 8),
                    padding: EdgeInsets.only(
                        right: 0.3 * MediaQuery.of(context).size.width),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: const Color(0xffffffff),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Conditions d'utilisation",
                        style: TextStyle(
                          fontSize: 16,
                          color: const Color(0xff515151),
                          fontWeight: FontWeight.w700,
                          height: 1.5625,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Container(
                    width: 326.0,
                    height: 50.0,
                    padding: EdgeInsets.only(
                        right: 0.29 * MediaQuery.of(context).size.width),
                    margin: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: const Color(0xffffffff),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Noter dans Google play',
                        style: TextStyle(
                          fontSize: 16,
                          color: const Color(0xff515151),
                          fontWeight: FontWeight.w700,
                          height: 1.5625,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
            ))));
  }
}
