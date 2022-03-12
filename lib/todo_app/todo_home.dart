import 'package:flutter/material.dart';
import 'package:wedad_application/todo_app/ui/pages/all_tasks.dart';
import 'package:wedad_application/todo_app/ui/pages/complete_tasks.dart';
import 'package:wedad_application/todo_app/ui/pages/incomplete_tasks.dart';

class TodoHomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return DefaultTabController(
     length: 3,
     child: Scaffold(
       appBar: AppBar(
         backgroundColor:Colors.black38,
         title: Text('TODO APP'),
         bottom: TabBar(tabs: [
           Tab(icon: Icon(Icons.list),),
            Tab(icon: Icon(Icons.done),), 
            Tab(icon: Icon(Icons.cancel),)
         ],indicatorWeight: 5,
         indicatorColor: Colors.white,),
         ),
         body: TabBarView(children: [
           AllTasks(),
           CompleteTasks(),
           InCompleteTasks()
         ]),
     ),
   );
  }
}