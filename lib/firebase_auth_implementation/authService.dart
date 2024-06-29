//import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kite/homescreen.dart';
import 'package:kite/loginPage.dart';


class authServices{

  final FirebaseAuth _auth=FirebaseAuth.instance;
  final FirebaseFirestore _firestore=FirebaseFirestore.instance;

userCreation(data,context) async{
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: data['email'],
      password: data['password'],
    );


    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => loginPage()),
    );
  }
  catch(e) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Sign up Failed"),
            content: Text(e.toString()),
          );
        }
    );
  }
}







  login(data,context) async{
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: data['email'],
        password: data['password'],
      );


      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
    catch(e) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Sign In Failed"),
              content: Text(e.toString()),
            );
          }
      );
    }
  }
 Future<void>signout() async{
  return await _auth.signOut();
 }


}

