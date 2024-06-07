import 'package:flutter/material.dart';

class noti extends StatefulWidget {
  noti({Key? key}) : super(key: key);

  @override
  State<noti> createState() => _noti();
}

class _noti extends State<noti> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Notification',
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
