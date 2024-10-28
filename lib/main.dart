import 'package:flutter/material.dart';
// Views
import 'package:shedule_app/views/Home.dart';
// Theme
import 'package:shedule_app/themes/theme.dart';

void main() {
  runApp(const AppRoot());
}

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}


/* 
Main colors 
Black - Color.fromARGB(255, 31, 31, 32)
Off-Black - Color.fromARGB(255, 42, 42, 58)
Blue Purple - Color.fromARGB(255, 138, 100, 253)
Off-White - Color.fromARGB(255, 246, 245, 253)
White - Colors.white

*/