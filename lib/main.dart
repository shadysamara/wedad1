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
  String imageUrl = 'https://images.unsplash.com/photo-1469474968028-56623f02e42e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMDg4MDd8MHwxfHNlYXJjaHwyfHxuYXR1cmV8ZW58MHx8fHwxNjQ2Mjk0NTEx&ixlib=rb-1.2.1&q=80&w=1080';
  getSum(int num1,int y){}
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

      child: SingleChildScrollView(child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: 
      [
        /*
1- create your local folder, prefered assets/images
2- add images to your local folder
3- defeine all your images in pubspec.yaml
4- use image.asset wiget to display your image
        */
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            Container(
              
              margin: EdgeInsets.symmetric(horizontal: 5),
              child:  ClipRRect(
              borderRadius:BorderRadius.circular(20) ,
                child: Image.asset('assets/images/image1.jfif',height: 200,width: 300,fit:BoxFit.cover
           ,),
              ),
            ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
              
            child:  ClipRRect(
              borderRadius:BorderRadius.circular(20) ,child: Image.asset('assets/images/image2.jfif',height: 200,width:300,fit:BoxFit.cover ,))),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
              child:  ClipRRect(
              borderRadius:BorderRadius.circular(20) ,child: Image.asset('assets/images/image3.jfif',height: 200,width: 300,fit:BoxFit.cover ,))),
          
          ],),
        ),
      // Image.network(imageUrl,loadingBuilder:(context,widget,chunks){
      //   if(chunks==null){
      //     return widget;
      //   }else{
      //     return Center(child: CircularProgressIndicator(),);
      //   }
      // } ,),
      ShadyWidget(shadyLabel: 'Name: ',shadyDescription: userDetails['name']!),
      ShadyWidget(shadyLabel:'University: ',shadyDescription:userDetails['univ']!),
      ShadyWidget(shadyLabel:'Address: ',shadyDescription:userDetails['address']!),
        ]),
    )),);
  }
}