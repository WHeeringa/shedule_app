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
          color: Theme.of(context).colorScheme.primary,
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
                        color: Theme.of(context).colorScheme.surface,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(icon),
                    ),
                    SizedBox(width: 16),
                    // Name
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        Text(description!, style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),),
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
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      startTime, 
                      style: TextStyle(fontSize: 12),
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
