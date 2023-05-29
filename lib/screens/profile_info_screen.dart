import 'package:flutter/material.dart';
import 'addCard_screen.dart';
import 'package:flutter_svg/svg.dart';

class InfoProfile extends StatefulWidget {
  const InfoProfile({Key? key}) : super(key: key);

  @override
  _InfoProfileState createState() => _InfoProfileState();
}

// ignore: non_constant_identifier_names
String Profilename = 'Nom Prénom';

class _InfoProfileState extends State<InfoProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: new PreferredSize(
                child: appbar(Profilename, false, context),
                preferredSize:
                    new Size(MediaQuery.of(context).size.width, 150.0)),
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.fromLTRB(17, 15, 17, 40),
                child: Column(
                  children: [
                    Container(),
                    Container(
                        width: 124.0,
                        height: 124.0,
                        child: Stack(
                          children: [
                            Container(
                              width: 124.0,
                              height: 124.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                color: Colors.amber,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                width: 38.0,
                                height: 38.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0xff2bc9b3),
                                ),
                                child: IconButton(
                                  icon: SvgPicture.asset(
                                      'assets/edit_photo_profil.svg'),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      //padding: EdgeInsets.fromLTRB(31, 10, 31, 10),
                      margin: EdgeInsets.only(bottom: 20),
                      width: MediaQuery.of(context).size.width,
                      height: 50.0,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        focusNode: FocusNode(),

                        style: TextStyle(
                          color: const Color(0xff3142BA),
                        ),
                        decoration: InputDecoration(
                          //isCollapsed: false,
                          filled: true,
                          fillColor: const Color(0x083142ba),
                          contentPadding: EdgeInsets.only(left: 31),

                          hintText: 'adresse',
                          hintStyle:
                              TextStyle(fontSize: 15, color: Color(0xff8E8E8E)),
                          //borders

                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.0, color: const Color(0xff3142BA)),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          //focused Border
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.0, color: const Color(0xff3142BA)),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          prefixIcon: Icon(
                            // Based on passwordVisible state choose the icon
                            Icons.place,
                            color: const Color(0xff3142BA),
                          ),

                          // Update the state i.e. toogle the state of passwordVisible variable
                        ),
                        //labelText: 'Username',
                      ),
                      //This will obscure text dynamically
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          //padding: EdgeInsets.fromLTRB(31, 10, 31, 10),
                          margin: EdgeInsets.only(bottom: 20),
                          width: 0.44 * MediaQuery.of(context).size.width,
                          height: 50.0,
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            focusNode: FocusNode(),
                            style: TextStyle(
                              color: const Color(0xff3142BA),
                            ),
                            decoration: InputDecoration(
                              //isCollapsed: false,
                              filled: true,
                              fillColor: const Color(0x083142ba),
                              contentPadding: EdgeInsets.only(left: 31),

                              hintText: 'wilaya',
                              hintStyle: TextStyle(
                                  fontSize: 15, color: Color(0xff8E8E8E)),
                              //borders

                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1.0, color: const Color(0xff3142BA)),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              //focused Border
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1.0, color: const Color(0xff3142BA)),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          //padding: EdgeInsets.fromLTRB(31, 10, 31, 10),
                          margin: EdgeInsets.only(bottom: 20),
                          width: 0.44 * MediaQuery.of(context).size.width,
                          height: 50.0,
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            focusNode: FocusNode(),
                            style: TextStyle(
                              color: const Color(0xff3142BA),
                            ),
                            decoration: InputDecoration(
                              //isCollapsed: false,
                              filled: true,
                              fillColor: const Color(0x083142ba),
                              contentPadding: EdgeInsets.only(left: 31),

                              hintText: 'code postal',
                              hintStyle: TextStyle(
                                  fontSize: 15, color: Color(0xff8E8E8E)),
                              //borders

                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1.0, color: const Color(0xff3142BA)),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              //focused Border
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1.0, color: const Color(0xff3142BA)),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      //padding: EdgeInsets.fromLTRB(31, 10, 31, 10),
                      margin: EdgeInsets.only(bottom: 20),
                      width: MediaQuery.of(context).size.width,
                      height: 50.0,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        focusNode: FocusNode(),

                        style: TextStyle(
                          color: const Color(0xff3142BA),
                        ),
                        decoration: InputDecoration(
                          //isCollapsed: false,
                          filled: true,
                          fillColor: const Color(0x083142ba),
                          contentPadding: EdgeInsets.only(left: 31),

                          hintText: 'phone number',
                          hintStyle:
                              TextStyle(fontSize: 15, color: Color(0xff8E8E8E)),
                          //borders

                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.0, color: const Color(0xff3142BA)),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          //focused Border
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.0, color: const Color(0xff3142BA)),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          suffixIcon: Icon(
                            // Based on passwordVisible state choose the icon
                            Icons.edit,
                            color: const Color(0xff3142BA),
                          ),
                          prefixIcon: Icon(
                            // Based on passwordVisible state choose the icon
                            Icons.phone_android_sharp,
                            color: const Color(0xff3142BA),
                          ),

                          // Update the state i.e. toogle the state of passwordVisible variable
                        ),
                        //labelText: 'Username',
                      ),
                      //This will obscure text dynamically
                    ),
                    Container(
                      //padding: EdgeInsets.fromLTRB(31, 10, 31, 10),
                      margin: EdgeInsets.only(bottom: 20),
                      width: MediaQuery.of(context).size.width,
                      height: 50.0,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        focusNode: FocusNode(),

                        style: TextStyle(
                          color: const Color(0xff3142BA),
                        ),
                        decoration: InputDecoration(
                          //isCollapsed: false,
                          filled: true,
                          fillColor: const Color(0x083142ba),
                          contentPadding: EdgeInsets.only(left: 31),

                          hintText: 'exemple@exemple.com',
                          hintStyle:
                              TextStyle(fontSize: 15, color: Color(0xff8E8E8E)),
                          //borders

                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.0, color: const Color(0xff3142BA)),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          //focused Border
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.0, color: const Color(0xff3142BA)),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          suffixIcon: Icon(
                            // Based on passwordVisible state choose the icon
                            Icons.edit,
                            color: const Color(0xff3142BA),
                          ),
                          prefixIcon: Icon(
                            // Based on passwordVisible state choose the icon
                            Icons.mail_outline_sharp,
                            color: const Color(0xff3142BA),
                          ),

                          // Update the state i.e. toogle the state of passwordVisible variable
                        ),
                        //labelText: 'Username',
                      ),
                      //This will obscure text dynamically
                    ),
                    SizedBox(
                      height: 50,
                    ),
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
                        child: Text(
                          'enregistrer',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
