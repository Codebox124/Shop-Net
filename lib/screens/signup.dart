import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shopnet/firebase/auth.dart';
import 'package:shopnet/screens/loginpage.dart';

import 'home.dart';
import 'homePage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _registerFormKey = GlobalKey<FormState>();

  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _nameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _registerFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.green,
                    height: 150,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Welcome back! have an account ?",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 18, color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      controller: _emailTextController,
                      validator: (value) {
                        if (!(value.toString().contains("@"))) {
                          return 'Invalid Email';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Email",
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color.fromARGB(255, 231, 231, 231),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: _nameTextController,
                      validator: (value) {
                        if (value.toString().length < 3) {
                          return 'Username must be more than 4 characters!';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Username",
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color.fromARGB(255, 231, 231, 231),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: _passwordTextController,
                      validator: (value) {
                        if (value.toString().length < 6) {
                          return 'Password must be more than 6 characters!';
                        } else {
                          return null;
                        }
                      },
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Password",
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color.fromARGB(255, 231, 231, 231),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () async {
                        if (_registerFormKey.currentState!.validate()) {
                          User? user = await FireAuth.registerUsingEmailPassword(
                            name: _nameTextController.text,
                            email: _emailTextController.text,
                            password: _passwordTextController.text,
                          );
      
                          if (user != null) {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                
                                builder: (context) => HomePage(user: user),
                              ),
                              ModalRoute.withName('/'),
                            );
                          }
                        }
                      },
                      child: Container(
                        height: 50,
                        color: Colors.green,
                        child: Center(
                          child: Text(
                            "SignUp",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
