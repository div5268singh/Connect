import 'package:connect/groups.dart';
import 'package:connect/people.dart';
import 'package:flutter/material.dart';

import 'add_freind.dart';
import 'data_filter.dart';
import 'noti.dart';

class dash extends StatefulWidget {
  dash({Key? key}) : super(key: key);

  @override
  State<dash> createState() => _dash();
}

class _dash extends State<dash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(
                    MediaQuery.of(context).size.height /
                        7.5), // here the desired height
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
                    IconButton(
                      icon: Icon(Icons.settings_input_composite_outlined),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => filter()));
                      },
                    )
                  ],
                  backgroundColor: Colors.black,
                  bottom: TabBar(
                    labelStyle: TextStyle(fontSize: 20),
                    tabs: [
                      Tab(
                        text: 'People',
                      ),
                      Tab(
                        text: 'Group',
                      )
                    ],
                    indicator: BoxDecoration(
                      color: Colors.white,
                    ),
                    unselectedLabelColor: Colors.white,
                    // indicatorColor: Color(0xffff00a8),
                    labelColor: Colors.black,
                  ),
                )),
            body: TabBarView(
              children: [
                people(),
                group(),
              ],
            ),
          )),
    );
  }
}
