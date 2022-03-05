import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedad_application/instegram_clone/dummy_data.dart';
import 'package:wedad_application/instegram_clone/instegram_widget.dart';
import 'package:wedad_application/instegram_clone/user_widget.dart';

class InstegramHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Image.asset('assets/images/logo.png',
       color: Colors.white,
       height: 40,
       width: 150,
       ),
       backgroundColor: Colors.black54,),
   body: Container(child: Container(child: ListView.builder(
     itemCount: posts.length,
     itemBuilder:(context,index){
       return InstegramWidget(posts[index]);
     }),),),
   );
  }
}