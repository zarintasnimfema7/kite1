import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kite/homescreen.dart';
import 'package:kite/signupPage.dart';
import 'package:kite/loginPage.dart';
import 'package:get/get.dart';


class authServices{


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
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    }
    catch(e) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Sign In Failed"),
              content: Text(e.toString()),
            );
          }
      );
    }
  }



}

