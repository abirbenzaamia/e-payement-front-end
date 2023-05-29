import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'addCard_screen.dart';

class General extends StatefulWidget {
  const General({Key? key}) : super(key: key);

  @override
  _GeneralState createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: new PreferredSize(
                child: appbar("Général", false, context),
                preferredSize:
                    new Size(MediaQuery.of(context).size.width, 150.0)),
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.fromLTRB(17, 30, 17, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Paramètre',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff828282),
                        fontWeight: FontWeight.w600,
                        height: 1.6666666666666667,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    parametre(Color(0xff2BC9B3), 'assets/general/securite.svg',
                        'Sécurité et mot de passe', context, 'setPassword'),
                    parametre(Color(0xffA774FB), 'assets/general/langue.svg',
                        'changer la langue', context, 'home'),
                    parametre(Color(0xff4268E2), 'assets/general/apropos.svg',
                        'A propos', context, 'apropos'),
                    parametre(Color(0xffF5305C), 'assets/general/support.svg',
                        'Support', context, 'home'),
                    parametre(
                        Color(0xff828282),
                        'assets/general/deconnexion.svg',
                        'Se déconnecter',
                        context,
                        'login'),
                  ],
                ),
              ),
            )));
  }
}

Widget parametre(
    Color boxcolor, String path, String name, context, String route) {
  return Container(
    //width: double.infinity,

    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
    child: Align(
      alignment: Alignment.topLeft,
      // ignore: deprecated_member_use
      child: FlatButton.icon(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        icon: Container(
          width: 34.0,
          height: 34.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: boxcolor,
          ),
          child: Container(
            padding: EdgeInsets.all(7),
            child: SvgPicture.asset(path),
          ),
        ),
        label: Text(
          name,
          style: TextStyle(
            fontSize: 16,
            color: const Color(0xff515151),
            height: 1.5625,
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.left,
        ),
      ),
    ),
  );
}
