import 'package:flutter/material.dart';
import 'package:wedad_application/todo_app/data/dummy_data.dart';
import 'package:wedad_application/todo_app/ui/widgets/task_widget.dart';

class InCompleteTasks extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(child:ListView.builder(
      itemCount:tasks.where((element) => element.isComplete==false).toList().length,
      itemBuilder: (context,index){
        return TaskWidget(tasks.where((element) => element.isComplete==false).toList()[index]);
      }));
  }
}