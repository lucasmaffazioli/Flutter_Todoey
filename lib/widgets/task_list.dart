import 'package:flutter/material.dart';
import 'package:todoey/widgets/item.dart';
import 'package:todoey/models/task.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> items = [
    Task(name: 'List 1', isChecked: false),
    Task(name: 'List 2', isChecked: false),
    Task(name: 'List 3', isChecked: false),
    Task(name: 'List 4', isChecked: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Item(
            name: items[index].name,
            isChecked: items[index].isChecked,
            checkCallback: (isChecked) {
              setState(() {
                items[index].toggleCheckbox();
              });
            },
          );
        });
    // return ListView(
    //   children: <Widget>[
    //     Item(),
    //     Item(),
    //   ],
    // );
  }
}
