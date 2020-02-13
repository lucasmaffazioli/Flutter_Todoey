import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  final Function callback;

  final textFieldController = TextEditingController();

  AddScreen(this.callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        // padding: EdgeInsets.all(50),
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          top: 50,
          left: 50,
          right: 50,
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 36),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              controller: textFieldController,
              decoration: InputDecoration(
                focusColor: Colors.lightBlueAccent,
                fillColor: Colors.red,
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              padding: EdgeInsets.all(15),
              onPressed: () {
                callback(textFieldController.text);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
