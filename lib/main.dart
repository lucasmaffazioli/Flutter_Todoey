import 'package:flutter/material.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import './models/tasks.dart';

void main() => runApp(Todoey());

class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Tasks>(
      create: (context) => Tasks(),
      child: MaterialApp(
        color: Colors.blueAccent,
        home: TasksScreen(),
      ),
    );
  }
}

// class Data extends ChangeNotifier {
//   List<Task> items = [
//     Task(name: 'List item 1'),
//     Task(name: 'List item 2'),
//     Task(name: 'List item 3'),
//   ];
// }
