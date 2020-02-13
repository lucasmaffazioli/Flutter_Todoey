class Task {
  final String name;
  bool isChecked;

  Task({this.name, this.isChecked});

  void toggleCheckbox() {
    isChecked = !isChecked;
  }
}
