


import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices{

  FirebaseAuth _auth=FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(String username,String password) async{
    try {
      UserCredential credential =await _auth.createUserWithEmailAndPassword(
          email: username,
          password: password);
      return credential.user;
    }
    catch (e){
      print("Some error occured");
    }
    return null;
  }

  signInWithEmailAndPassword(String name, String pass) {}
}


FirebaseAuth _auth=FirebaseAuth.instance;


Future<User?> signInWithEmailAndPassword(String username,String password) async{
  try {
    UserCredential credential =await _auth.signInWithEmailAndPassword(
        email: username,
        password: password);
    return credential.user;
  }
  catch (e){
    print("Some error occured");
  }
  return null;
}

