import 'package:chatapp/models/message_models.dart';
import 'package:chatapp/models/user_model.dart';
import 'package:flutter/material.dart';

class messageScreen extends StatefulWidget {
  final User user;

  messageScreen({required this.user});
  @override
  _messageScreenState createState() => _messageScreenState();
}

class _messageScreenState extends State<messageScreen> {
  @override
  _chatBuble(Message message, bool isMe) {
    if (isMe) {
      return Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topRight,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.80,
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xFFFFCDD2),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  )
                ],
              ),
              child: Text(
                message.text,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                message.time,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black45,
                ),
              ),
              SizedBox(width: 10),
              Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
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
                  radius: 15,
                  backgroundImage: AssetImage(message.sender.imageUrl),
                ),
              ),
            ],
          )
        ],
      );
    } else {
      return Column(children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.80,
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                    )
                  ],
                ),
                child: Text(
                  message.text,
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
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
                    radius: 15,
                    backgroundImage: AssetImage(message.sender.imageUrl),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  message.time,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black45,
                  ),
                )
              ],
            )
          ],
        )
      ]);
    }
  }

  _sendMessage(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(icon: Icon(Icons.photo),
          iconSize: 25,
          color: Colors.redAccent,
          onPressed: (){},),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(hintText: 'Send a Message'),
              textCapitalization: TextCapitalization.sentences,
            ),
          ),
          IconButton(icon: Icon(Icons.send),
          iconSize: 25,
          color: Colors.redAccent,
          onPressed: (){},)
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    int prevUserId;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFFC62828),
          brightness: Brightness.dark,
          centerTitle: true,
          title: RichText(
            textAlign: TextAlign.right,
            text: TextSpan(children: [
              TextSpan(
                  text: widget.user.name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  )),
            ]),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: ListView.builder(
                  reverse: true,
              padding: EdgeInsets.all(20),
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                final Message message = messages[index];
                final bool isMe = message.sender.id == admin.id;
                // final bool isSameUser = prevUserId == message.sender.id;
                // prevUserId = message.sender.id;
                return _chatBuble(message, isMe);
              },
            ),
            ),
            _sendMessage()
          ],
        ));
  }
}
