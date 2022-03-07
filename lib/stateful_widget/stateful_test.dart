import 'package:flutter/material.dart';
import 'package:wedad_application/stateful_widget/interst.dart';

class X extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return XState();
  }
}
class XState extends State<StatefulWidget>{
  List<Intrest> intrestsList = [
    Intrest('Video Gaming', false),
     Intrest('Playing football', false),
      Intrest('Programming', false),
       Intrest('Reading books', false),
        Intrest('Shopping', false),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
    appBar: AppBar(title: Text('XSTATE'),),
     body: Column(
       children: [
         Expanded(
          
           child: ListView.builder(
             itemCount: intrestsList.length,
             itemBuilder: (context,index){
               return CheckboxListTile(value: intrestsList[index].isChecked, onChanged: (value){
                 intrestsList[index].isChecked = value!;
                 setState(() {
                   
                 });
               },title: Text(intrestsList[index].title),);
             }),
         ),
       intrestsList.where((e)=>e.isChecked==true).length==0?
       Container():
       Wrap(
         children: [
           Text('I like ',style: TextStyle(fontSize: 20),),
          ... intrestsList.where((e)=>e.isChecked==true).map((e) {
           bool isLastCheckedItem =  e==intrestsList.where((e)=>e.isChecked==true).last;
            return Text(e.title+ (isLastCheckedItem?'.':', '),style: TextStyle(fontSize: 20),);
          }).toList()
         ],
       ),
       SizedBox(height: 200,)
       ],
     ),
   );
  }
}