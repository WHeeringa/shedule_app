// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomBar extends StatelessWidget {
  // BottomBar Properties
  final int currentIndex;
  final Function callbackFunction;

  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), ),
  ];
  // Constructor
  BottomBar({super.key, required this.currentIndex, required this.callbackFunction});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      // onTap: callbackFunction,
      items: items
    );
  }
}
