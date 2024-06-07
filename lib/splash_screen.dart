import 'package:flutter/material.dart';
import 'login.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 2), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => login()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.png'), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              child: Align(
                  alignment: Alignment.center,
                  child: Image(
                    width: MediaQuery.of(context).size.width / 1.5,
                    image: AssetImage(
                      "assets/connect.png",
                    ),
                  )),
            )));
  }
}
