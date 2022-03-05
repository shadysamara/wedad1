import 'package:flutter/material.dart';
import 'package:wedad_application/instegram_clone/post.dart';
import 'package:wedad_application/instegram_clone/user_widget.dart';

class InstegramWidget extends StatelessWidget{
  Post post;
  InstegramWidget(this.post);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          UserWidget(post.user),
          SizedBox(height: 5,),
          Image.network(post.imageUrl,width: double.infinity,height: 300,fit: BoxFit.cover,),
          Row(children:[
            IconButton(onPressed: (){}, icon: Image.asset('assets/images/like.png')),
                      IconButton(onPressed: (){}, icon: Image.asset('assets/images/comment.png')),
                                IconButton(onPressed: (){}, icon: Image.asset('assets/images/share.png'))
          ])
        ,Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Text(post.title,style: TextStyle(fontSize: 16),))
        ],
      ),
    )
     ;
  }
}