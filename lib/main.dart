import 'package:flutter/material.dart';
import 'package:wedad_application/shady_widget.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:FirstScreen()));
}
class FirstScreen extends StatelessWidget{
  Map<String,String> userDetails = {
    'name':'Omar Ahmed Ali',
    'univ':'Isamic Unversity Of Gaza',
    'address':'Palestine - Gaza'
  };
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFAD8B73),
        title: Text('MyFirstScreen'),
        centerTitle: true,
        actions: [
        
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag)),
          IconButton(onPressed: (){
            print('you have just pressed on login');
          }, icon: Icon(Icons.login))
              ,
        ],
      ),
bottomNavigationBar: BottomNavigationBar(
  items: [
    BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favourite')
  ],),
    body: Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: 
      [
      ShadyWidget(shadyLabel: 'Name: ',shadyDescription: userDetails['name']!),
      ShadyWidget(shadyLabel:'University: ',shadyDescription:userDetails['univ']!),
      ShadyWidget(shadyLabel:'Address: ',shadyDescription:userDetails['address']!),
        ]),
    ),);
  }
}