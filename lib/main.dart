import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopnet/firebase_options.dart';
import 'package:shopnet/screens/home.dart';
import 'package:shopnet/screens/loginpage.dart';
import 'package:shopnet/screens/splashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/landingPage' : (BuildContext context )=> MyApp(),
        '/loginPage' : (BuildContext context )=> LoginPage(),
        // '/HomePage' : (BuildContext context )=> HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
      home:SplashScreen() ,
    );
  }
}