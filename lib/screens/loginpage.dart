import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  onTap: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 18, color: Colors.green),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromARGB(255, 231, 231, 231),
                  ),
                ),
                SizedBox(height: 30,),
                 TextField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Password",
                    
                    
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromARGB(255, 231, 231, 231),
                  ),
                ),
                 SizedBox(height: 30,),
                 Container(
                  height: 50,
                  color: Colors.green,
                  child: Center(
                    child: Text("Login",style: TextStyle(color: Colors.white),),
                  ),
                 )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
