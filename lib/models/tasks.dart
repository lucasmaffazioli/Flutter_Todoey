import 'package:flutter/material.dart';
import '../models/task.dart';

class Tasks extends ChangeNotifier {
  List<Task> items = [
    Task(name: 'List item 1'),
  ];

  void addTask(name) {
    items.add(
      Task(name: name),
    );
    notifyListeners();
  }

  int get taskCount {
    return items.length;
  }
}
