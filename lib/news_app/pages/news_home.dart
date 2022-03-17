
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wedad_application/news_app/models/news_model.dart';
import 'package:wedad_application/news_app/widgets/news_widget.dart';

class NewsHome extends StatelessWidget{
  AllNewsModel allNewsModel = AllNewsModel();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return  ListView.builder(
       itemCount: allNewsModel.articles!.length,
       itemBuilder: (context,index){
         return InkWell(
           onTap: (){
         
             launch(allNewsModel.articles![index].url!);
           },
           child: CustomNewsWidget(allNewsModel.articles![index]));
       })
   ;
  }
}