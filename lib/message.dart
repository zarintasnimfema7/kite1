import 'package:cloud_firestore/cloud_firestore.dart';

class Message{
  final String? senderID;
  final String? senderEmail;
  final String receiverID;
  final String  receiveEmail;
  final String message;
  final Timestamp timestamp;
  Message({
    required this.senderID,
    required this.senderEmail,
    required this.receiverID,
    required this.receiveEmail,
    required this.message,
    required this.timestamp,
});
  Map<String,dynamic> toMap(){
    return {
      'senderID':senderID,
      'senderEmail':senderEmail,
      'receiverID':receiverID,
      'receiveEmail': receiveEmail,
      'message':message,
      'timestamp':timestamp,
    };
  }
}