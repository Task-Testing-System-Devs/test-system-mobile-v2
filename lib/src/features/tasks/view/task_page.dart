import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key, required this.taskId});

  final String taskId;

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(widget.taskId));
  }
}
