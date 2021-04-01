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
        padding: EdgeInsets.only(
          top: 20.0,
          right: 30.0,
          left: 30.0,
        ),
        child: Column(
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            TextField(),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    textColor: Colors.white,
                    child: Text('Add Task'),
                    color: Colors.lightBlueAccent,
                    onPressed: () {},
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
