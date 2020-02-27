import 'dart:collection';

import 'package:flutter/material.dart';
import '../models/task.dart';

class Tasks extends ChangeNotifier {
  List<Task> _items = [
    Task(name: 'List item 1'),
  ];

  void addTask(name) {
    _items.add(
      Task(name: name),
    );
    notifyListeners();
  }

  UnmodifiableListView<Task> get getTasks {
    return UnmodifiableListView(_items);
  }

  void toggleCheckbox(Task task) {
    task.toggleCheckbox();
    notifyListeners();
  }

  void removeTask(Task task) {
    _items.remove(task);
    notifyListeners();
  }

  int get taskCount {
    return _items.length;
  }
}
