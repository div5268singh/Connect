import 'package:connect/navigation.dart';
import 'package:connect/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'forget.dart';
import 'package:fluttertoast/fluttertoast.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  final _formkey = GlobalKey<FormState>();
  String? errormessage;
  bool isPasswordVisible = false;
  void initState() {
    super.initState();
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FocusNode myFocusNode = new FocusNode();
    return WillPopScope(
        onWillPop: () async => true,
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background2.png'),
                    fit: BoxFit.cover)),
            child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Form(
                    key: _formkey,
                    child: Stack(children: <Widget>[
                      SingleChildScrollView(
                          child: Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 3.5,
                                  right: 40,
                                  left: 40),
                              child: Column(children: [
                                //controller: emailController,
                                TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return ("please enter your mail");
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    emailController.text = value!;
                                  },
                                  textInputAction: TextInputAction.next,
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      prefixIcon: Icon(
                                        Icons.mail,
                                        color: Colors.grey,
                                      ),
                                      labelText: 'Email',
                                      labelStyle: TextStyle(
                                          color: myFocusNode.hasFocus
                                              ? Colors.blue
                                              : Colors.black),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 80,
                                ),
                                TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return ("password is requird");
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    passwordController.text = value!;
                                  },
                                  controller: passwordController,
                                  obscureText: isPasswordVisible,
                                  textInputAction: TextInputAction.done,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color: Colors.grey,
                                      ),
                                      suffixIcon: IconButton(
                                        color: Colors.grey,
                                        icon: isPasswordVisible
                                            ? Icon(Icons.visibility_off)
                                            : Icon(Icons.visibility),
                                        onPressed: () => setState(() =>
                                            isPasswordVisible =
                                                !isPasswordVisible),
                                      ),
                                      labelText: 'Password',
                                      labelStyle: TextStyle(
                                          color: myFocusNode.hasFocus
                                              ? Colors.blue
                                              : Colors.black),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.8,
                                  height:
                                      MediaQuery.of(context).size.height / 18,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    gradient: RadialGradient(
                                        colors: [
                                          Colors.blueAccent,
                                          Colors.indigoAccent,
                                          Colors.tealAccent
                                        ],
                                        //  begin: Alignment.topLeft,
                                        //  end: Alignment(0.8, 1),
                                        // stops: [0.0, 1.0],
                                        tileMode: TileMode.mirror),
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      signIn(emailController.text,
                                          passwordController.text);
                                    },
                                    child: Text(
                                      'LOGIN',
                                      style: TextStyle(
                                        fontFamily: 'Arial',
                                        fontSize: 18,
                                        fontStyle: FontStyle.italic,
                                        color: Colors.white,
                                        height: 1.5,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    //     onTap:
                                    //       signIn,
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 15,
                                ),
                                Container(
                                  child: new Column(
                                    children: <Widget>[
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.5, // <-- Your width
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              17, // <-- Your height
                                          child: SignInButton(
                                            //padding: EdgeInsets.only(right: 5,),
                                            Buttons.FacebookNew,
                                            text: "Login with Facebook",
                                            onPressed: () {},
                                          )),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                40,
                                      ),
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.5, // <-- Your width
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              17,
                                          child: SignInButton(
                                            Buttons.GoogleDark,
                                            text: "Login with Google",
                                            onPressed: () {},
                                          )),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                      ),
                                      Container(
                                          child: Row(children: <Widget>[
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              40,
                                        ),
                                        Expanded(
                                            child: GestureDetector(
                                          onTap: () {
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        forg()));
                                          },
                                          child: Text('Forget Password ?',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.blueAccent,
                                                  fontWeight: FontWeight.bold)),
                                        )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              40,
                                        ),
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () => {
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          reg()))
                                            },
                                            child: Text('New Here SignUp?',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.blueAccent,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        )
                                      ]))
                                    ],
                                  ),
                                ),
                              ])))
                    ])))));
  }

  // Future signIn() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: emailController.text.trim(),
  //       password: passwordController.text.trim());
  // }

  void signIn(String email, String password) async {
    if (_formkey.currentState!.validate()) {
      try {
        await _auth
            .signInWithEmailAndPassword(email: email, password: password)
            .then((uid) => {
                  Fluttertoast.showToast(msg: "Login Succesful"),
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => nav())),
                });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errormessage = "your email";
            break;
          case "wrong-password":
            errormessage = "your password is wrong";
            break;
        }
        Fluttertoast.showToast(msg: errormessage!);
        print(error.code);
      }
    }
  }
}
// mixin _formKey {
// }