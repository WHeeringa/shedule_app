// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  // Task Item Properties
  final IconData icon;
  final String name;
  final String? description;
  final String startTime;
  final String? endTime;
  final String? color;

  // Constructor
  const TaskItem( {super.key, required this.icon, required this.name, this.description, required this.startTime, this.endTime, this.color} );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 42, 42, 58),
          borderRadius: BorderRadius.circular(24),
        ),
        child: InkWell(
          onTap: () {
            print('Task Item Tapped');
          },
          child: Row(
            children: [
              // Icon
              Expanded(
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(icon),
                    ),
                    SizedBox(width: 16),
                    // Name
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 246, 245, 253)),),
                        Text(description!, style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Color.fromARGB(255, 246, 245, 253)),),
                      ],
                    ),
                  ],
                )
              ),
              
              SizedBox(width: 16),
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(6),
                    width: 60,
                    // height: 20,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 31, 31, 32),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      startTime, 
                      style: TextStyle(
                        fontSize: 12, 
                        color: Color.fromARGB(255, 246, 245, 253)
                      ),
                    ),
                  ),
                ],
              ),
              // Checkbox
            ],
          ),
        ),
      ),
    );
  }
}
