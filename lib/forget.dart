import 'package:connect/login.dart';
import 'package:flutter/material.dart';
import 'otp.dart';

class forg extends StatefulWidget {
  forg({Key? key}) : super(key: key);
  // bool shouldPop = true;
  @override
  State<forg> createState() => _forgState();
}

class _forgState extends State<forg> {
  get onPressed =>
      Navigator.push(context, MaterialPageRoute(builder: (context) => login()));

  @override
  Widget build(BuildContext context) => WillPopScope(
      onWillPop: () async => onPressed(),
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background2.png'),
                  fit: BoxFit.cover)),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          // top: MediaQuery.of(context).size.height * 5,
                          top: MediaQuery.of(context).size.height / 2.3,
                          right: 40,
                          left: 40),
                      child: Column(children: [
                        TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          enableInteractiveSelection:
                              false, // will disable paste operation
                          focusNode: new AlwaysDisabledFocusNode(),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Enter Your Email',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(
                                Icons.mail,
                                color: Colors.grey,
                              ),
                              labelText: 'Email ID',
                              border: OutlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 260.0,
                          height: 42.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.blueAccent,
                                  Colors.indigoAccent,
                                  Colors.tealAccent
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment(0.8, 1),
                                tileMode: TileMode.mirror),
                          ),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => otp()));
                              },
                              child: Text(
                                'GET OTP',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 18,
                                  color: Colors.white,
                                  height: 1,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )
                      ]))))));

  // Future<bool> onWillPop() async {
  //
  // }
}
