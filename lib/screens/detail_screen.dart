import 'package:flutter/material.dart';
import 'package:mad_labs/screens/home_page.dart';

class DetailScreen extends StatelessWidget {
  final Task? task;
  const DetailScreen({Key? key, this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(task?.taskName ?? "No Task Name"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(task?.description ?? "No Task Description"),
      ),
    );
  }
}
