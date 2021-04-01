import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_flutter/widgets/tasks_list.dart';
import 'add_task_screen.dart';

List<String> taskList = ['Buy Milk', 'Buy Eggs', 'Buy Detergent'];

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          // need to define a function for the showModalBottomSheet builder, where you
          // define what is returned when the bottom sheet is displayed
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(),
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 60.0,
              left: 30.0,
              right: 30.0,
              bottom: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    20.0,
                  ),
                  topLeft: Radius.circular(
                    20.0,
                  ),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}

// ListView.builder(
// padding: EdgeInsets.only(
// top: 30.0,
// right: 30.0,
// left: 30.0,
// ),
// itemCount: taskList.length,
// itemBuilder: (BuildContext context, int index) {
// return ListTile(
// leading: Text(
// taskList[index],
// style: TextStyle(
// fontSize: 18.0,
// ),
// ),
// trailing: Checkbox(
// value: false,
// onChanged: null,
// ),
// );
// },
// ),
