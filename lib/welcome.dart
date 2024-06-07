import 'dart:math';
import 'package:get/get.dart';
import 'package:kite/loginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show AssetImage, BoxDecoration, BoxFit, BuildContext, Colors, Column, Container, DecorationImage, EdgeInsets, ElevatedButton, FontWeight, MaterialPageRoute, MediaQuery, Scaffold, SingleChildScrollView, Stack, State, StatefulWidget, Text, TextButton, TextStyle, Widget;

import 'loginPage.dart';
class MyAuth extends StatefulWidget {
  const MyAuth({super.key});

  @override
  State<MyAuth> createState() => _MyAuthState();
}

class _MyAuthState extends State<MyAuth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage ('lib/assets/background.png') ,
              fit: BoxFit.fill)
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30, top: 260),
                  child: Text('Welcome to Kaiteki',
                    style: TextStyle(color: Colors.black,
                      fontSize: 42,
                      fontWeight: FontWeight.bold,),),
                ),
                Center(
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushReplacement(context,
                      MaterialPageRoute(
                          builder: (context) => loginPage()),);
                  },
                      child: Text('Get Started',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                  ),),
                )
              ]
          )),);
  }
}