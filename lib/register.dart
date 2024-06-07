import 'package:connect/login.dart';
import 'package:flutter/material.dart';

class reg extends StatefulWidget {
  reg({Key? key}) : super(key: key);
  @override
  State<reg> createState() => _regState();
}

class _regState extends State<reg> {
  String? errorMessage;
  final nameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  // final mobileEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  get onPressed =>
      Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => onPressed(),
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background2.png'), fit: BoxFit.cover),
          ),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 2.5,
                          right: 40,
                          left: 40),
                      child: Column(children: [
                        TextFormField(
                          controller: nameEditingController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ("Name is requird");
                            }
                            return null;
                          },
                          onSaved: (value) {
                            nameEditingController.text = value!;
                          },
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.grey,
                              ),
                              labelText: 'Name',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ("Email is requird");
                            }
                            return null;
                          },
                          onSaved: (value) {
                            nameEditingController.text = value!;
                          },
                          textInputAction: TextInputAction.next,
                          controller: emailEditingController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(
                                Icons.mail,
                                color: Colors.grey,
                              ),
                              labelText: 'Email ID',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(
                                Icons.phone,
                                color: Colors.grey,
                              ),
                              labelText: 'Mobile',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ("Password is requird");
                            }
                            return null;
                          },
                          onSaved: (value) {
                            nameEditingController.text = value!;
                          },
                          textInputAction: TextInputAction.next,
                          controller: passwordEditingController,
                          obscureText: true,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey,
                              ),
                              labelText: 'Password',
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
                                // stops: [0.0, 1.0],
                                tileMode: TileMode.mirror),
                          ),
                          child: GestureDetector(
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
                        )
                      ]))))),
    );
  }
}
