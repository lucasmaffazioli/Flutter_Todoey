import 'package:flutter/material.dart';
import 'add_screen.dart';
import 'package:todoey/widgets/task_list.dart';
import '../models/task.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> items = [
    Task(name: 'List item 1'),
    Task(name: 'List item 2'),
    Task(name: 'List item 3'),
  ];

  void addCallback(String newItem) {
    setState(() {
      items.add(Task(name: newItem));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(context: context, builder: (context) => AddScreen(addCallback));
          },
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(30, 30, 0, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      size: 30,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '12 tasks',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                padding: EdgeInsets.all(30),
                child: TaskList(
                  items: items,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
