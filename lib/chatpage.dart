//import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kite/chat.dart';
import 'package:kite/chat_services.dart';
import 'package:kite/firebase_auth_implementation/authService.dart';
import 'package:kite/homescreen.dart';
import 'package:kite/user_tile.dart';

class Chat extends StatelessWidget {
  Chat({super.key});

  //chat services
  final ChatService _chatService = ChatService();
  final FirebaseAuth _auth=FirebaseAuth.instance;
  User?getCurrentUser(){
    return _auth.currentUser;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      appBar: AppBar(
        title: Center(child: Text("chat")),
      ),

      body: _buildUserList(),


    );
  }

  Widget _buildUserList() {
    return StreamBuilder(
      stream: _chatService.getUserStream(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text("Error");
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading..");
        }
        return ListView(
          children: snapshot.data!.map<Widget>((userData) =>
              _buildUserListItem(userData, context)).toList(),
        );
      },
    );
  }
}

  Widget _buildUserListItem(Map<String,dynamic>userData, BuildContext context){

    //display all user
    final FirebaseAuth _auth=FirebaseAuth.instance;

    User?getCurrentUser(){
      return _auth.currentUser;
    }

    if(userData['email']!=getCurrentUser()!.email){
    return UserTile(
      text:userData['email'],
      onTap:(){
        Navigator.push(context, MaterialPageRoute(builder:(context)=> ChatPage(
          receiveEmail:userData['email'],
         receiverID: userData['uid'],
        )));
      }
    );}
    else return Container();

  }

