import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isCurrentUser;
  const ChatBubble({super.key,required this.message,required this.isCurrentUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isCurrentUser?Colors.pink[900]:Colors.blue[900],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 2.5,horizontal: 25),
      child:Text(message,style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
       // fontFamily: "BUXTONSKETCH",
        fontSize: 18,

      ),)
    );
  }
}

