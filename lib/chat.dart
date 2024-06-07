import 'package:flutter/material.dart';

import 'add_freind.dart';
import 'noti.dart';

class chat extends StatefulWidget {
  chat({Key? key}) : super(key: key);

  @override
  State<chat> createState() => _chat();
}

class _chat extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(55.0), // here the desired height
            child: AppBar(
              title: Text(
                'ConnectXpat',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 20,
                ),
              ),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.person_add_alt_outlined),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => addfr()));
                },
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.notifications_outlined),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => noti()));
                  },
                ),
              ],
              backgroundColor: Colors.black,
            )),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 3,
                    right: 40,
                    left: 40),
                child: Text(
                  'SIGN UP',
                ))),
      ),
    );
  }
}
