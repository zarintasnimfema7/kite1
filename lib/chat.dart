

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kite/chat_bubble.dart';
import 'package:kite/chat_services.dart';
import 'package:kite/firebase_auth_implementation/authService.dart';
import 'package:kite/loginPage.dart';
import 'package:kite/message.dart';
import 'package:kite/random_action_generator.dart';
class ChatPage extends StatelessWidget {
  final String receiveEmail;
  final String receiverID;
   ChatPage({super.key,required this.receiveEmail,required this.receiverID});
  final TextEditingController _messageController=TextEditingController();
  final ChatService _chatService=ChatService();
  final FirebaseAuth _auth=FirebaseAuth.instance;
  final authServices _authService=authServices();
 User?getCurrentUser(){
    return _auth.currentUser;
  }


  void sendMessage() async{
    if(_messageController.text.isNotEmpty)
      {
        await _chatService.sendMessage(receiverID,receiveEmail,_messageController.text);
        _messageController.clear();
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(receiveEmail),
      ),
      body: Column(
        children: [
          Expanded(
              child:_buildMessage(),
          ),
          _buildUserInput(),
        ],
      ),

    );
  }


  Widget _buildMessage(){
 String? senderEmail=_auth.currentUser!.email;

  return StreamBuilder(

        stream: _chatService.getMessage(receiveEmail,senderEmail),
        builder:(context,snapshot){
    if (snapshot.hasError) {
    return const Text("Error");
    }

    if (snapshot.connectionState == ConnectionState.waiting) {

      return const Text("Loading..");

    }
    if(snapshot.hasData){

    }

          return ListView(
            children: snapshot.data!.docs.map((doc) => _buildMessageItem(doc) ).toList(),

          );
        },

    );
  }

  Widget _buildMessageItem(DocumentSnapshot doc){
   Map<String,dynamic>data=doc.data() as Map<String,dynamic>;
   bool isCurrentUser=data['senderEmail']==_auth.currentUser!.email;
   var alignment= isCurrentUser?Alignment.centerRight:Alignment.centerLeft;
   return Container(
    child: Column(
      crossAxisAlignment: isCurrentUser?CrossAxisAlignment.end:CrossAxisAlignment.start,
      children: [
        ChatBubble(
            message: data['message'],
            isCurrentUser: isCurrentUser)
      ],
    )
     );


  }
  Widget _buildUserInput(){
    return Row(
      children: [
      Expanded(child: TextFormField(
          controller: _messageController,
          style: const TextStyle(color: Colors.black),
          decoration: const InputDecoration(
            fillColor: Colors.pink,
            icon: Icon(Icons.message,
            ),
            border: InputBorder.none,
            hintText: "type a message",
          )
      ),
      ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.pink.shade900,
              shape: BoxShape.circle,
            ),
            margin: EdgeInsets.only(right: 20),
            child: IconButton(onPressed:(){sendMessage();},
              icon: const Icon(Icons.arrow_upward,
              color: Colors.white,),),
          ),
        ),
      ],
    );
  }
}
