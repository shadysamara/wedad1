import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedad_application/news_app/data/fake_response.dart';
import 'package:wedad_application/news_app/models/news_model.dart';
import 'package:wedad_application/news_app/pages/news_details.dart';
import 'package:wedad_application/news_app/pages/news_home.dart';

class MainPage extends StatelessWidget{
   AllNewsModel allNewsModel = AllNewsModel();
   PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.black54,
       title: Text('News App'),
    
      
     ),
     body: Center(child: PageView(
       controller: pageController,
       children: [
         NewsHome(),
         NewsDetails()
       ],
     ),),
   );
  }
}