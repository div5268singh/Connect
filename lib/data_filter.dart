import 'package:flutter/material.dart';

class filter extends StatefulWidget {
  filter({Key? key}) : super(key: key);

  @override
  State<filter> createState() => _filter();
}

class _filter extends State<filter> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Date Filter',
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
