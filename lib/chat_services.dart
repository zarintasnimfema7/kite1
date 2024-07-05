import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kite/message.dart';

class ChatService{
   //get instance of firestore
  final FirebaseFirestore _firestore=FirebaseFirestore.instance;
  final FirebaseAuth _auth=FirebaseAuth.instance;
  //get user stream
Stream<List<Map<String,dynamic>>>getUserStream(){
  return _firestore.collection("Users").snapshots().map((snapshot){
    return snapshot.docs.map((doc){
      final user =doc.data();
      return user;
    }).toList();
  });
}
Future<void> sendMessage(String receiverID, receiveEmail,message) async{
  final String currentUserID=_auth.currentUser!.uid;
  final String? currentUserEmail=_auth.currentUser!.email;
  final Timestamp timestamp=Timestamp.now();

  Message newMessage=Message(
      senderID: currentUserID,
      senderEmail: currentUserEmail,
      receiverID: receiverID,
      receiveEmail: receiveEmail,
      message: message,
      timestamp: timestamp
  );

  List<String?> ids=[currentUserEmail, receiveEmail];
  ids.sort();
  String chatRoomID=ids.join('_');


  await _firestore.collection('chat_rooms')
      .doc(chatRoomID)
      .collection('messages')
      .add(newMessage.toMap());

}

Stream<QuerySnapshot> getMessage(String userEmail,otherUserEmail) {
  List<String>ids=[userEmail,otherUserEmail];
  ids.sort();
  String chatRoomID=ids.join('_');
  return _firestore.collection("chat_rooms")
      .doc(chatRoomID)
      .collection("messages")
      .orderBy("timestamp",descending: false)
      .snapshots();
}


}