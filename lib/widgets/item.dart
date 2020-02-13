import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String name;
  final bool isChecked;
  final Function checkCallback;

  Item({this.name, this.isChecked, this.checkCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
          fontSize: 20,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      contentPadding: EdgeInsets.all(0),
      trailing: Checkbox(
        onChanged: checkCallback,
        value: isChecked,
      ),
    );
  }
}

// class TaskCheckbox extends StatelessWidget {
//   final bool isChecked;
//   final Function callback;

//   TaskCheckbox(this.isChecked, this.callback);

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       onChanged: callback,
//       value: isChecked,
//     );
//   }
// }
