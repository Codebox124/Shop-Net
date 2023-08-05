import 'package:flutter/material.dart';

class NotiicationPage extends StatefulWidget {
  const NotiicationPage({super.key});

  @override
  State<NotiicationPage> createState() => _NotiicationPageState();
}

class _NotiicationPageState extends State<NotiicationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Notu")),
    );
  }
}