import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(21, 17, 21, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Adobe XD layer: 'BlueBg' (shape)
                Container(
                  width: 326.0,
                  height: 170.0,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    gradient: LinearGradient(
                      begin: Alignment(0.0, -1.0),
                      end: Alignment(0.0, 1.0),
                      colors: [
                        const Color(0xff34d3e8),
                        const Color(0xff3142ba)
                      ],
                      stops: [0.0, 1.0],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(0, 3),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text.rich(
                              TextSpan(
                                style: TextStyle(
                                  fontFamily: 'Muli',
                                  fontSize: 12,
                                  color: const Color(0xffffffff),
                                  height: 1.5,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Bonjour',
                                    style:
                                        TextStyle(//ontWeight: FontWeight.w300,
                                            ),
                                  ),
                                  TextSpan(
                                    text: ',\nOuartsi Khaled',
                                    style: TextStyle(
                                        //fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ],
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'DZD',
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.55),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '15.525,00',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset('assets/schema.svg'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/mescartes.svg'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Mes cartes',
                            style: TextStyle(
                              fontSize: 14,
                              color: const Color(0xff2e2b2b),
                              height: 1.7857142857142858,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),

                    Spacer(),
                    //It's a button
                    Container(
                      width: 170.0,
                      height: 37.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(37.0),
                        color: const Color(0xff4268e2),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff3142ba),
                            offset: Offset(0, 0),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: TextButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, 'addCard');
                        },
                        icon: Icon(
                          Icons.add_circle_outline_rounded,
                          color: Colors.white,
                        ),
                        label: Text(
                          'Ajouter une carte',
                          style: TextStyle(
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            height: 1.7857142857142858,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Opérations récentes',
                      style: TextStyle(
                          color: const Color(0xff828282), fontSize: 15),
                    ),
                    Spacer(),
                    //It's a button
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color(0x45ccd8df),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Center(
                            child: SvgPicture.asset('assets/search.svg')),
                        //child: Center(child: SvgPicture.asset('assets/search.svg')),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 326.0,
                  height: 21.0,
                  padding: EdgeInsets.only(
                    right: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11.0),
                    color: const Color(0xfffbfbfb),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        //it's a date
                        '03-06-21 ',
                        style: TextStyle(
                            color: const Color(0xffAFAFAF), fontSize: 10),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //recyclerView
                operation('Encours', "Salim M'hani", '03-06-21', '10:35:20',
                    '6.250,00'),
                SizedBox(
                  height: 20,
                ),
                operation('Effectuée', "Souad bara", '03-06-21', '10:35:20',
                    '15.200,00'),
                SizedBox(
                  height: 20,
                ),
                operation('Annulée', "Adel Lmine", '03-06-21', '10:35:20',
                    '221.000,00'),
                SizedBox(
                  height: 20,
                ),
                operation('Annulée', "Adel Lmine", '03-06-21', '10:35:20',
                    '221.000,00'),
                SizedBox(
                  height: 20,
                ),
                operation('Annulée', "Adel Lmine", '03-06-21', '10:35:20',
                    '221.000,00'),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: bottomNav(context),
        floatingActionButton: Container(
          width: 117.0,
          height: 37.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28.0),
            gradient: LinearGradient(
              begin: Alignment(0.0, -1.0),
              end: Alignment(0.0, 1.0),
              colors: [const Color(0xff34d3e8), const Color(0xff3142ba)],
              stops: [0.0, 1.0],
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 0),
                blurRadius: 6,
              ),
            ],
          ),
          child: TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, 'QR1');
              },
              icon: SvgPicture.asset('assets/payer.svg'),
              label: Text(
                'PAYER',
                style: TextStyle(
                  fontSize: 15,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w600,
                  height: 1.5625,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              )),
        ),
      ),
    );
  }
}

Widget operation(String state, nom, date, heure, montant) {
  String path = "";
  Color color = Color(0xffA774FB);
  Color montantColor = Color(0xffD68C0C);
  if (state == 'Encours') {
    path = 'assets/encours.svg';

    color = Color(0xffA774FB);
    montantColor = Color(0xffD68C0C);
  }

  if (state == 'Effectuée') {
    path = 'assets/effectuee.svg';
    color = Color(0xff2BC9B3);
    montantColor = Color(0xff1BAB2A);
  }
  if (state == 'Annulée') {
    path = 'assets/annulee.svg';
    color = Color(0xffF5305C);
    montantColor = Color(0xffC9C9C9);
  }

  return Row(
    children: [
      Container(
        margin: EdgeInsets.only(right: 17),
        padding: EdgeInsets.all(8),
        width: 34.0,
        height: 34.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: color,
        ),
        child: SvgPicture.asset(path),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            nom,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff515151),
            ),
          ),
          Row(
            children: [
              Text(
                date + ' ' + heure,
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xffAFAFAF),
                ),
              ),
            ],
          )
        ],
      ),
      Spacer(),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            montant,
            style: TextStyle(color: montantColor, fontSize: 16),
          ),
          Text(
            state,
            style: TextStyle(color: Color(0xffAFAFAF), fontSize: 10),
          ),
        ],
      )
    ],
  );
}

Widget bottomNav(context) {
  return BottomAppBar(
    //color: Colors.amber,
    child: Container(
      padding: EdgeInsets.fromLTRB(17, 9, 17, 9),
      width: 360.0,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
        color: const Color(0xffffffff),
        boxShadow: [
          BoxShadow(
            color: const Color(0x0d000000),
            offset: Offset(0, -6),
            blurRadius: 6,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: const Color(0x3634d3e8),
            ),
            child: IconButton(
                padding: EdgeInsets.all(2),
                iconSize: 40,
                //autofocus: true,
                onPressed: () {},
                icon: Center(
                    child: SvgPicture.asset('assets/navBar/navBar1.svg'))),
          ),
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              //color: const Color(0x3634d3e8),
            ),
            child: IconButton(
                padding: EdgeInsets.all(2),
                iconSize: 40,
                //autofocus: true,
                onPressed: () {},
                icon: Center(
                    child: SvgPicture.asset('assets/navBar/navBar2.svg'))),
          ),
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              //color: const Color(0x3634d3e8),
            ),
            child: IconButton(
                padding: EdgeInsets.all(2),
                iconSize: 40,
                //autofocus: true,
                onPressed: () {
                  Navigator.pushNamed(context, 'account');
                },
                icon: Center(
                    child: SvgPicture.asset('assets/navBar/navBar3.svg'))),
          ),
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              //color: const Color(0x3634d3e8),
            ),
            child: IconButton(
                padding: EdgeInsets.all(2),
                iconSize: 40,
                //autofocus: true,
                onPressed: () {},
                icon: Center(
                    child: SvgPicture.asset('assets/navBar/navBar4.svg'))),
          ),
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              //color: const Color(0x3634d3e8),
            ),
            child: IconButton(
                padding: EdgeInsets.all(2),
                iconSize: 40,
                //autofocus: true,
                onPressed: () {
                  Navigator.pushNamed(context, 'general');
                },
                icon: Center(
                    child: SvgPicture.asset('assets/navBar/navBar5.svg'))),
          ),
        ],
      ),
    ),
  );
}
