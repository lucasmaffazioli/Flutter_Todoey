import 'package:flutter/material.dart';
import 'package:todoey/tasks_screen.dart';

void main() => runApp(Todoey());

class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blueAccent,
      home: TasksScreen(),
    );
  }
}
