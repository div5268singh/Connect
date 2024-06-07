import 'package:flutter/material.dart';

class otp extends StatefulWidget {
  otp({Key? key}) : super(key: key);

  @override
  State<otp> createState() => _otpState();
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

class _otpState extends State<otp> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
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
                            top: MediaQuery.of(context).size.height / 2.3,
                            right: 40,
                            left: 40),
                        child: Column(children: [
                          TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            enableInteractiveSelection: false,
                            focusNode: new AlwaysDisabledFocusNode(),
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Enter OTP Here',
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
                                labelText: 'OTP',
                                border: OutlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Colors.transparent),
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
                              child: Text(
                                'NEXT',
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
                        ]))))));
  }
}
