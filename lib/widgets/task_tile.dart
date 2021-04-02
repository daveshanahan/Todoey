import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({
    this.isChecked,
    this.taskTitle,
    this.checkBoxCallBack,
  });
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          // use isChecked to check state and add line through if true
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontSize: 18.0,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}
