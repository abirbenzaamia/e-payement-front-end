import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'home.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 195,
            child: Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Container(
                  width: double.infinity,
                  height: 148,
                  padding: EdgeInsets.only(left: 17, right: 10, top: 25),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.0, -1.0),
                      end: Alignment(0.0, 1.0),
                      colors: [
                        const Color(0xff34d3e8),
                        const Color(0xff3142ba)
                      ],
                      stops: [0.0, 1.0],
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'home');
                          },
                          icon: Icon(Icons.arrow_back_ios),
                          color: Colors.white,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_vert),
                            color: Colors.white)
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 97.0,
                    height: 97.0,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffd4f6fa),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 11),
            child: Text(
              'khaled OUARTSI',
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
          Container(
            margin: EdgeInsets.only(top: 7),
            child: Text(
              'ID:785XCR',
              style: TextStyle(
                fontFamily: 'Muli',
                fontSize: 10,
                color: const Color(0xff828282),
                fontWeight: FontWeight.w600,
                height: 2.5,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(34, 45, 17, 0),
            child: Column(
              children: [
                profileElement('assets/account/profile.svg',
                    'Information personnelle', context, 'InfoProfile'),
                profileElement('assets/account/historique.svg',
                    'Mon historique', context, 'home'),
                profileElement(
                    'assets/account/securite.svg', 'Sécurité', context, 'home'),
                profileElement('assets/account/deconnexion.svg',
                    'Se déconnecter', context, 'login'),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    width: 86.0,
                    height: 14.0,
                    child: Text(
                      'M-PAY V 1.011',
                      style: TextStyle(
                        fontSize: 12,
                        color: const Color(0xff414141),
                        height: 2.3333333333333335,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: bottomNav(context),
    ));
  }
}

Widget profileElement(String path, String name, context, String route) {
  return Container(
    //width: double.infinity,

    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
    child: Align(
      alignment: Alignment.topLeft,
      child: FlatButton.icon(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        icon: Container(
          width: 34.0,
          height: 34.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            color: const Color(0xffd4f6fa),
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
