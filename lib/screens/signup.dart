import 'package:flutter/material.dart';
import 'package:shopnet/firebase/auth.dart';
import 'package:shopnet/screens/loginpage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formkey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String username = '';
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
                    key: ValueKey("email"),
                    validator: (value) {
                      if (!(value.toString().contains("@"))) {
                        return 'Invalid Email';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (Value) {
                      setState(() {
                        email = Value!;
                      });
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
                    key: ValueKey("username"),
                    validator: (value) {
                      if (value.toString().length < 3) {
                        return 'Username must be more than 4 characters!';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (Value) {
                      setState(() {
                        username = Value!;
                      });
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
                    key: ValueKey("password"),
                    validator: (value) {
                      if (value.toString().length < 6) {
                        return 'Password must be more than 6 characters!';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (Value) {
                      setState(() {
                        password = Value!;
                      });
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
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                        _formkey.currentState!.save();
                         signup(email, password);
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
    );
  }
}
