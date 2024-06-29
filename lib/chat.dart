//import 'dart:html';
//import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kite/chat_services.dart';
import 'package:kite/firebase_auth_implementation/authService.dart';
import 'package:kite/loginPage.dart';
//import 'package:kite/main.dart';

//import 'firebase_auth_implementation/authService.dart';
class ChatPage extends StatelessWidget {
  final String receiveEmail;
  final String receiverID;
   ChatPage({super.key,required this.receiveEmail,required this.receiverID});
  final TextEditingController _messageController=TextEditingController();
  final ChatService _chatService=ChatService();
 final authServices _authservices=authServices();
  final FirebaseAuth _auth=FirebaseAuth.instance;
 User?getCurrentUser(){
    return _auth.currentUser;
  }


  void sendMessage() async{
    if(_messageController.text.isNotEmpty)
      {
        await _chatService.sendMessage(receiverID, _messageController.text);
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
              child: _buildMessage()),
          _buildUserInput(),
        ],
      ),

    );
  }


  Widget _buildMessage(){

 String senderID=getCurrentUser()!.uid;
  return StreamBuilder(

        stream: _chatService.getMessage(receiverID,senderID),
        builder:(context,snapshot){
          if (snapshot.hasError) {
            return const Text("Error");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading..");
          }
          return ListView(
            children: snapshot.data!.docs.map((doc) => _buildMessageItem(doc) ).toList(),

          );
        },
    );
  }

  Widget _buildMessageItem(DocumentSnapshot doc){
    Map<String,dynamic>data=doc.data() as Map<String,dynamic>;
    return Text(data["message"]);

  }
  Widget _buildUserInput(){
    return Row(
      children: [
      Expanded(child: TextFormField(
          controller: _messageController,
          style: const TextStyle(color: Colors.black),
          decoration: const InputDecoration(
            fillColor: Colors.pink,
            icon: Icon(Icons.message),
            border: InputBorder.none,
            hintText: "type a message",
          )
      ),
      ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: IconButton(onPressed:(){sendMessage();},
            icon: const Icon(Icons.arrow_upward,),),
        ),
      ],
    );
  }
}
