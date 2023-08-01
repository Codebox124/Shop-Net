import 'package:flutter/material.dart';
import 'package:shopnet/firebase/auth.dart';
import 'package:shopnet/screens/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  String username = '';
  final _formkey = GlobalKey<FormState>();
  bool isLogin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
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
                    "Sign In",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome back! Don’t have an account?",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupPage()));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    key: ValueKey("email"),
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
                    key: ValueKey("password"),
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
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                        _formkey.currentState!.save();
                        signin(email, password);
                      }
                    },
                    child: Container(
                      height: 50,
                      color: Colors.green,
                      child: Center(
                        child: Text(
                          "Login",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Remember Me"),
                      Text("Forget Password ?"),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(child: Text("Or")),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 0.5),
                    ),
                    height: 50,
                    child: Center(
                      child: Text(
                        "Login with Google",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 0.5),
                    ),
                    height: 50,
                    child: Center(
                      child: Text(
                        "Login with Apple",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
