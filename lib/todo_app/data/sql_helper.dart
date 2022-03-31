import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:wedad_application/todo_app/models/task_model.dart';

class SqlHelper{
  initDatabase()async{
  int x = 8;
  // GET THE APPLICATION DIRECTORY
  Directory appDocDir = await getApplicationDocumentsDirectory();
  String databasePath = appDocDir.path+'/khaledTasks.db';
  // CREATE CONNECTION TO DATABASE
  Database database = await openDatabase(databasePath,version: 1,onCreate: (db,v){
    db.execute('CREATE TABLE OsamaTasks (id INTEGER PRIMARY KEY AUTOINCREMENT, taskName TEXT, isComplete INTEGER)');
  });
  }
  addTaskToDb(Task task){}
  updateTask(Task task){}
  getAllTasks(){}
  deleteTask(Task task){}
}