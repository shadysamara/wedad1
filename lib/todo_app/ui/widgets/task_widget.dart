import 'package:flutter/material.dart';
import 'package:wedad_application/todo_app/models/task_model.dart';

class TaskWidget extends StatefulWidget{
  Task task;
  TaskWidget(this.task);

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3,horizontal: 5),
      decoration: BoxDecoration(
        gradient: widget.task.isComplete? LinearGradient(colors: [
          Color(0xdd8A39E1),
          Color(0xaaB667F1),
        ]):LinearGradient(colors: [
          Color(0xddDD4A48),
          Color(0xaaFF6464),
        ]),
              // color: widget.task.isComplete?Colors.blue:Colors.red,
        borderRadius: BorderRadius.circular(10)),

      child: CheckboxListTile(
        activeColor: Colors.white,
        checkColor: Colors.black,
        value: widget.task.isComplete,
      title: Text(widget.task.title,style: TextStyle(fontSize: 18),),
      onChanged: (v){
        widget.task.isComplete = !widget.task.isComplete;
      setState(() {
        
      });
      },
      
      ),
    );
  }
}