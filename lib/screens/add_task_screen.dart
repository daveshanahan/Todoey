import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(
          30.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    height: 50.0,
                    textColor: Colors.white,
                    child: Text('Add Task'),
                    color: Colors.lightBlueAccent,
                    onPressed: () {
                      // add task to task list
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
