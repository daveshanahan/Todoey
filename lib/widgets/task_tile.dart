import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  // adding isChecked here in task tile to lift state up and make it available to
  // children
  bool isChecked = false;

  void checkBoxCallBack(bool checkBoxState) {
    setState(() {
      isChecked = checkBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
          // use isChecked to check state and add line through if true
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontSize: 18.0,
        ),
      ),
      trailing: TaskCheckBox(
        isChecked,
        checkBoxCallBack,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  // can construct this stateless widget with the checkBoxState, which is final
  // takes isChecked from tasktile stateful widget
  TaskCheckBox(this.checkBoxState, this.toggleCheckBoxState);

  final bool checkBoxState;
  final Function toggleCheckBoxState;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
    );
  }
}
