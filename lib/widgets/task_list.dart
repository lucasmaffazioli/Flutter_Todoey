import 'package:flutter/material.dart';
import 'package:todoey/widgets/item.dart';
import 'package:todoey/models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> items;

  TaskList({this.items});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  // List<Task> items = [
  //   Task(name: 'List 1', isChecked: false),
  //   Task(name: 'List 2', isChecked: false),
  //   Task(name: 'List 3', isChecked: false),
  //   Task(name: 'List 4', isChecked: false),
  // ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return Item(
            name: widget.items[index].name,
            isChecked: widget.items[index].isChecked,
            checkCallback: (isChecked) {
              setState(() {
                widget.items[index].toggleCheckbox();
              });
            },
          );
        });
  }
}
