import 'package:flutter/material.dart';
import 'package:todo_flutter/screens/tasks_screen.dart';
import 'package:todo_flutter/widgets/task_tile.dart';
import 'package:todo_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: TasksScreen.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: TasksScreen.tasks[index].name,
            isChecked: TasksScreen.tasks[index].isDone,
            checkBoxCallBack: (bool checkBoxState) {
              setState(() {
                TasksScreen.tasks[index].toggleIsDone();
              });
            },
          );
        });
  }
}
