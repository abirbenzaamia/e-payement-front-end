import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';
import 'package:device_info/device_info.dart';
import 'package:mpay/Services/postAuth.dart';
import 'dart:io';
import 'package:flutter/services.dart';

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
  Future<int>? _login;
  Future<int>? _postAuth;

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

//getting device info
//for android devices
  Map<String, dynamic> _readAndroidBuildData(AndroidDeviceInfo build) {
    return <String, dynamic>{
      'version.securityPatch': build.version.securityPatch,
      'version.sdkInt': build.version.sdkInt,
      'version.release': build.version.release,
      'version.previewSdkInt': build.version.previewSdkInt,
      'version.incremental': build.version.incremental,
      'version.codename': build.version.codename,
      'version.baseOS': build.version.baseOS,
      'board': build.board,
      'bootloader': build.bootloader,
      'brand': build.brand,
      'device': build.device,
      'display': build.display,
      'fingerprint': build.fingerprint,
      'hardware': build.hardware,
      'host': build.host,
      'id': build.id,
      'manufacturer': build.manufacturer,
      'model': build.model,
      'product': build.product,
      'supported32BitAbis': build.supported32BitAbis,
      'supported64BitAbis': build.supported64BitAbis,
      'supportedAbis': build.supportedAbis,
      'tags': build.tags,
      'type': build.type,
      'isPhysicalDevice': build.isPhysicalDevice,
      'androidId': build.androidId,
      'systemFeatures': build.systemFeatures,
    };
  }

  //for Ios devices
  Map<String, dynamic> _readIosDeviceInfo(IosDeviceInfo data) {
    return <String, dynamic>{
      'name': data.name,
      'systemName': data.systemName,
      'systemVersion': data.systemVersion,
      'model': data.model,
      'localizedModel': data.localizedModel,
      'identifierForVendor': data.identifierForVendor,
      'isPhysicalDevice': data.isPhysicalDevice,
      'utsname.sysname:': data.utsname.sysname,
      'utsname.nodename:': data.utsname.nodename,
      'utsname.release:': data.utsname.release,
      'utsname.version:': data.utsname.version,
      'utsname.machine:': data.utsname.machine,
    };
  }

  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  Map<String, dynamic> _deviceData = <String, dynamic>{};
  String deviceId = "";

  //get device info function
  Future<void> initPlatformState() async {
    Map<String, dynamic> deviceData = <String, dynamic>{};

    try {
      if (Platform.isAndroid) {
        deviceData = _readAndroidBuildData(await deviceInfoPlugin.androidInfo);
      } else if (Platform.isIOS) {
        deviceData = _readIosDeviceInfo(await deviceInfoPlugin.iosInfo);
      }
    } on PlatformException {
      deviceData = <String, dynamic>{
        'Error:': 'Failed to get platform version.'
      };
    }

    if (!mounted) return;

    setState(() {
      _deviceData = deviceData;
    });
  }

  void initState() {
    super.initState();
    initPlatformState();
    initPlatformState().whenComplete(() {
      if (Platform.isAndroid) {
        deviceId = _deviceData['id'];
      } else if (Platform.isIOS) {
        deviceId = _deviceData['identifierForVendor'];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print(deviceId);
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
                        //size: 20,
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
                    //Navigator.pushNamed(context, 'home');

                    _postAuth = postAuth(_usernameController.text,
                        _passwordController.text, deviceId.toString());
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
                    //Navigator.pushNamed(context, 'signup1');
                    //Navigator.pushReplacementNamed(context, 'signup1');
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
