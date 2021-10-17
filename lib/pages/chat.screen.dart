// ignore_for_file: prefer_const_constructors


import 'package:chatapp/models/message_models.dart';
import 'package:chatapp/pages/messager.scree.dart';
import 'package:flutter/material.dart';

class chatScreen extends StatefulWidget {
  

  @override
  _chatScreenState createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Color(0XFFC62828),
         title: Text('Message'),
       ),
       body: ListView.builder(
         itemCount: chats.length,
         itemBuilder: (BuildContext context,int index){
           final Message chat = chats[index];
         return 
         GestureDetector(
           onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=>messageScreen(user: chat.sender,))) ,
           child: Container(
           padding: EdgeInsets.symmetric(
             horizontal: 20,
             vertical: 15,
           ),
           child: Row(
             children: <Widget>[
               Container(
                 padding: EdgeInsets.all(2),
                 decoration: chat.unread ? BoxDecoration(
                   borderRadius: BorderRadius.all(Radius.circular(40)),
                   border: Border.all(
                     width: 2,
                     color: Theme.of(context).primaryColor,
                   ),
                  //  shape: BoxShape.circle,
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.withOpacity(0.5),
                       spreadRadius: 2,
                       blurRadius: 5,
                    )
                   ],
                 ):
                 BoxDecoration(
                   shape: BoxShape.circle,
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.withOpacity(0.5),
                       spreadRadius: 2,
                       blurRadius: 5,
                    )
                   ],
                 ),
                 child: CircleAvatar(
                   backgroundColor: Colors.white,
                   radius: 35,
                   backgroundImage: AssetImage(chat.sender.imageUrl),
                 ),
               ),
               Container(
                 width: MediaQuery.of(context).size.width*0.65,
                 padding: EdgeInsets.only(left: 20,),
                 child: Column(
                   children: <Widget>[
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Row(
                           children: [
                             Text(chat.sender.name,style: TextStyle(
                               fontSize: 16,
                               fontWeight: FontWeight.bold,
                             ),
                             ), 
                             chat.sender.isOnline?
                             Container(
                               margin: const EdgeInsets.only(left: 5),
                               width: 7,
                               height: 7,
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 color: Theme.of(context).primaryColor,
                               ),
                             )
                             :
                             Container(child: null,)
                           ],
                         ),
                         Text(chat.time,style: TextStyle(
                           fontSize: 11,
                           fontWeight: FontWeight.w300,
                           color: Colors.black54,
                         ),),
                       ],
                     ),
                     SizedBox(height: 10),
                     Container(
                     alignment: Alignment.topLeft,
                     child: Text(chat.text,
                     style: TextStyle(
                       fontSize: 13,
                       color: Colors.black54
                     ),
                     overflow: TextOverflow.ellipsis,
                     maxLines: 2,
                     ),
                     ),
                  ],
                 ),
               )
             ],
           ),
                ),
         );
       }),
        
  );
  }
}