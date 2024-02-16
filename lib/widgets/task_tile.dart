import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;
  final Function longPressCallback;

  TaskTile(this.isChecked, this.taskTitle, this.checkboxCallBack,
      this.longPressCallback);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Color.fromRGBO(45, 149, 150, 100),
        value: isChecked,
        onChanged: checkboxCallBack(),
      ),
    );
  }
}
