import 'package:flutter/material.dart';
import 'package:todo/models/task_model.dart';
import 'package:todo/providers/db_provider.dart';
import 'package:todo/ui/widgets/task_item.dart';
import 'package:provider/provider.dart';

class AllTasksTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<DBProvider>(
      builder: (context, value, child) {
        List<Task> allTasks = value.allTasks;
        return ListView.builder(
          itemCount: allTasks.length,
          itemBuilder: (context, index) {
            return TaskItem(allTasks[index]);
          },
        );
      },
    );
  }
}
