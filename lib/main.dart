import 'package:flutter/material.dart';
import 'package:test2/screens/Names.dart';
import 'package:test2/screens/Tasbeh_Screen.dart';

void main() {
  runApp(Azkar());
}

class Azkar extends StatelessWidget {
  const Azkar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tasbeh(),
      
    );
  }
}
