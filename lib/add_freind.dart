import 'package:flutter/material.dart';

class addfr extends StatefulWidget {
  addfr({Key? key}) : super(key: key);

  @override
  State<addfr> createState() => _addfr();
}

class _addfr extends State<addfr> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Add Friend',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 20,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.black,
            ),
            body: SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 3,
                        right: 40,
                        left: 40),
                    child: Text(
                      'SIGN UP',
                    )))));
  }
}
