import 'package:flutter/material.dart';

import 'login.dart';

class people extends StatefulWidget {
  people({Key? key}) : super(key: key);

  @override
  State<people> createState() => _people();
}

class _people extends State<people> {
  int currentIndex = 0;
  get onPressed =>
      Navigator.push(context, MaterialPageRoute(builder: (context) => login()));

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => onPressed(),
        child: Container(
            child: Scaffold(
          body: SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 3,
                      right: 40,
                      left: 40),
                  child: Text(
                    'SIGN UP',
                  ))),
        )));
  }
}
