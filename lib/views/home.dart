// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// Components
import 'package:shedule_app/components/TaskItem.dart';
import 'package:shedule_app/components/BottomBar.dart';

class Home extends StatefulWidget {
	const Home({super.key});

	@override
	State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
	// Properties
	List<Map> tasks = [
		{'icon': Icons.sunny,'title': 'Wake up', 'description': 'Good morning', 'startTime': '07:00'},
		{'icon': Icons.business,'title': 'Task 2', 'description': '', 'startTime': '07:00'},
		{'icon': Icons.coffee,'title': 'Task 3', 'description': 'This is task', 'startTime': '07:00'},
		{'icon': Icons.bed,'title': 'Bedtime', 'description': 'Good night', 'startTime': '07:00'},
	];

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Theme.of(context).colorScheme.surface,
			body: SafeArea(
				child: Column(
					children: [
						// Date + Add button
						Padding(
							padding: EdgeInsets.symmetric(horizontal: 24),
							child: Row(
								children: [
									Expanded(
										child: Column(
											crossAxisAlignment: CrossAxisAlignment.start,
											children: [
												Text('TODAY', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
												Text('WHATER DATE IT IS', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
											],
										),
									),
									TextButton(
										onPressed: () => print('Add TASK item'),
										child: Container(
											width: 40,
											height: 40,
											decoration: BoxDecoration(
												borderRadius: BorderRadius.circular(12),
												color: Color.fromARGB(255, 38, 38, 46),
											),
											child: Icon(Icons.add),
										),
									), 
								],
							),
						),
						// Date selector
				
						// Task List
						ListView.builder(
							shrinkWrap: true,
							itemCount: tasks.length,
							itemBuilder: (context, index) {
								return TaskItem(
									icon: tasks[index]['icon'] ?? Icons.sunny,
									name: tasks[index]['title'] ?? '',
									description: tasks[index]['description'],
									startTime: tasks[index]['startTime'],
									endTime: tasks[index]['endTime'],
									color: tasks[index]['color'],
								);
							}),
					],
				),
			),
			bottomNavigationBar: BottomBar(currentIndex: 0, callbackFunction: () {}),
		);
	}
}
