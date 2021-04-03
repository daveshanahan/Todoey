import 'package:flutter/material.dart';
import 'package:todo_flutter/screens/tasks_screen.dart';
import 'package:todo_flutter/widgets/task_tile.dart';
import 'package:todo_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  TasksList(this.tasks);
  final List<Task> tasks;
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkBoxCallBack: (bool checkBoxState) {
              setState(() {
                widget.tasks[index].toggleIsDone();
              });
            },
          );
        });
  }
}
