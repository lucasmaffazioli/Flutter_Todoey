import 'package:flutter/material.dart';
import 'package:todoey/widgets/item.dart';
import 'package:todoey/models/task.dart';
import '../models/tasks.dart';
import 'package:provider/provider.dart';

class TaskList extends StatefulWidget {
  final List<Task> items;

  TaskList({this.items});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Tasks>(
      builder: (context, tasks, child) {
        return ListView.builder(
            itemCount: tasks.taskCount,
            itemBuilder: (context, index) {
              final Task task = tasks.getTasks[index];
              return Item(
                name: task.name,
                isChecked: task.isChecked,
                checkCallback: (isChecked) {
                  tasks.toggleCheckbox(task);
                },
                longpressCallback: () {
                  tasks.removeTask(task);
                },
              );
            });
      },
    );
  }
}
