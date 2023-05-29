import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'signup_screens.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'home_screen.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  final titre = TextEditingController();
  final nom = TextEditingController();
  final prenom = TextEditingController();
  final ncarte = TextEditingController();
  final cvc = TextEditingController();
  final exp = TextEditingController();
  final _controller = AdvancedSwitchController();

  String dropdownValue = 'Visa';
  var items = <String>['Visa', 'MasterCard', 'Verve'];
  var textColor = Color(0xff8E8E8E);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: new PreferredSize(
            child: appbar("Ajouter une carte", false, context),
            preferredSize: new Size(MediaQuery.of(context).size.width, 150.0)),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.fromLTRB(15, 40, 15, 10),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                titlerow('Titre', 'assets/addCard/titre.svg'),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 13, bottom: 25),
                  child: textfield('Ex: Shopping', titre, 0),
                ),
                titlerow('Banque', 'assets/addCard/banque.svg'),
                Container(
                  margin: EdgeInsets.only(top: 13, bottom: 25),
                  padding: EdgeInsets.only(left: 25, right: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0x083142ba),

                    //color: Colors.amber,
                  ),
                  child: DropdownButton(
                    value: dropdownValue,
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: textColor,
                    ),
                    style: TextStyle(fontSize: 14, color: textColor),
                    iconSize: 30,
                    underline: Container(),
                    isExpanded: true,
                    //dropdownColor: Color(0x083142ba),

                    //focusColor: Colors.red,
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        child: Text(items),
                        value: items,
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    onTap: () {
                      textColor = Color(0xff3142BA);
                    },
                  ),
                ),
                titlerow('Utilisateur', 'assets/addCard/utilisateur.svg'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 0.44 * MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 13, bottom: 25),
                      child: textfield('Nom', nom, 0),
                    ),
                    Container(
                      height: 50,
                      width: 0.44 * MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 13, bottom: 25),
                      child: textfield('Prénom', prenom, 0),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      titlerow('Card number', 'assets/addCard/banque.svg'),
                      titlerow('CVC', 'assets/addCard/banque.svg'),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 0.67 * MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 13, bottom: 25),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: ncarte,
                        focusNode: FocusNode(),
                        decoration: InputDecoration(
                          //isCollapsed: false,
                          filled: true,
                          fillColor: const Color(0x083142ba),

                          contentPadding: EdgeInsets.only(left: 15),
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
                        //obscureText: true,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          new LengthLimitingTextInputFormatter(19),
                          CardNumberInputFormatter(),
                        ],
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 0.23 * MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 13, bottom: 25),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: cvc,
                        focusNode: FocusNode(),
                        decoration: InputDecoration(
                          //isCollapsed: false,
                          filled: true,
                          fillColor: const Color(0x083142ba),

                          contentPadding: EdgeInsets.only(left: 15),
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
                        //obscureText: true,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          new LengthLimitingTextInputFormatter(4),
                        ],
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                  ],
                ),
                titlerow('Expiration', 'assets/addCard/expiration.svg'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 0.4 * MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 13),
                      child: textfield('', exp, 0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          //padding: EdgeInsets.only(bottom: 4),
                          child: Text(
                            'Utiliser par défault',
                            style: TextStyle(
                              fontSize: 12,
                              color: const Color(0xff2bc9b3),
                              height: 2.0833333333333335,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        AdvancedSwitch(
                          controller: _controller,
                          activeColor: const Color(0xff2bc9b3),
                          inactiveColor: Colors.grey.shade200,
                          borderRadius:
                              BorderRadius.all(const Radius.circular(15)),
                          width: 35,
                          height: 16,
                          enabled: true,
                          disabledOpacity: 0.5,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Couleurs',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff414141),
                        fontWeight: FontWeight.w600,
                        height: 1.6666666666666667,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 50,
                      width: 170,
                      padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
                      margin: EdgeInsets.only(right: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            padding: EdgeInsets.all(2),
                            iconSize: 40,
                            //autofocus: true,
                            onPressed: () {},
                            icon: Container(
                              width: 39.0,
                              height: 39.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                gradient: LinearGradient(
                                  begin: Alignment(0.0, -1.0),
                                  end: Alignment(0.0, 1.0),
                                  colors: [
                                    const Color(0xfffedf9c),
                                    const Color(0xfff5305c)
                                  ],
                                  stops: [0.0, 1.0],
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            padding: EdgeInsets.all(2),
                            iconSize: 40,
                            //autofocus: true,
                            onPressed: () {},
                            icon: Container(
                              width: 39.0,
                              height: 39.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                gradient: LinearGradient(
                                  begin: Alignment(0.0, -1.0),
                                  end: Alignment(0.0, 1.0),
                                  colors: [
                                    const Color(0xffa774fb),
                                    const Color(0xff6144f2)
                                  ],
                                  stops: [0.0, 1.0],
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            padding: EdgeInsets.all(2),
                            iconSize: 40,
                            //autofocus: true,
                            onPressed: () {},
                            icon: Container(
                              width: 39.0,
                              height: 39.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 25, bottom: 25),
                  width: 296.0,
                  height: 36.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: const Color(0xff3142ba),
                  ),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    onPressed: () {
                      //Navigator.pushNamed(context, 'signup3');
                    },
                    child: Center(
                      child: Text(
                        'Ajouter la carte',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ])),
        ),
        bottomNavigationBar: bottomNav(context),
      ),
    );
  }
}

Widget appbar(String title, bool more_vert, context) {
  Widget more = Container();
  if (more_vert) {
    more = IconButton(
        onPressed: () {}, icon: Icon(Icons.more_vert), color: Colors.white);
  }
  return new Container(
    width: 360.0,
    height: 63.0,
    padding: EdgeInsets.only(left: 17, right: 10),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment(0.0, -1.0),
        end: Alignment(0.0, 1.0),
        colors: [const Color(0xff34d3e8), const Color(0xff3142ba)],
        stops: [0.0, 1.0],
      ),
    ),
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
          title,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        Spacer(),
        more,
      ],
    ),
  );
}

Widget titlerow(String text, path) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SvgPicture.asset(path),
      SizedBox(
        width: 8,
      ),
      Text(
        text,
        style: TextStyle(
          fontSize: 15,
          color: const Color(0xff414141),
          fontWeight: FontWeight.w600,
          height: 1.6666666666666667,
        ),
        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
        textAlign: TextAlign.left,
      ),
    ],
  );
}

class CardNumberInputFormatter extends TextInputFormatter {
  TextEditingValue formatEditUpdate(
      TextEditingValue oldVaue, TextEditingValue newValue) {
    var text = newValue.text;
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    var buffer = new StringBuffer();
    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 4 == 0 && nonZeroIndex != text.length) {
        buffer.write('  ');
      }
    }
    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: new TextSelection.collapsed(offset: string.length));
  }
}
