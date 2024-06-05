


import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices{

  FirebaseAuth _auth=FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(String mail,String password) async{
    try {
      UserCredential credential =await _auth.createUserWithEmailAndPassword(
          email: mail,
          password: password);
      return credential.user;
    } on FirebaseAuthException catch (e){
      print("Some error occured");
    }
    return null;
  }

  signInWithEmailAndPassword(String mail, String pass) {}
}


FirebaseAuth _auth=FirebaseAuth.instance;


Future<User?> signInWithEmailAndPassword(String mail,String password) async{
  try {
    UserCredential credential =await _auth.signInWithEmailAndPassword(
        email: mail,
        password: password);
    return credential.user;
  } on FirebaseAuthException catch (e){
    print("Some error occured");
  }
  return null;
}

