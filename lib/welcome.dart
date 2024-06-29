import 'package:kite/loginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show AssetImage, BoxDecoration, BoxFit, BuildContext, Colors, Column, Container, DecorationImage, EdgeInsets, ElevatedButton, FontWeight, MaterialPageRoute, MediaQuery, Scaffold, SingleChildScrollView, Stack, State, StatefulWidget, Text, TextButton, TextStyle, Widget;

class MyAuth extends StatelessWidget {
  const MyAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage ('lib/assets/pink.jpg') ,
              fit: BoxFit.fill)
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 70, top: 100),
                  child: Text('Welcome to ',
                    style: TextStyle(color: Colors.pink.shade900,
                      fontSize: 52,
                      fontWeight: FontWeight.bold,
                      fontFamily: "BUXTONSKETCH",
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 80, top: 200),
                  child: const Text('kaiteki ',
                    style: TextStyle(color: Colors.black,
                      fontSize:102,
                      fontWeight: FontWeight.bold,
                      fontFamily: "BUXTONSKETCH",),),
                ),

                Center(
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushReplacement(context,
                      MaterialPageRoute(
                          builder: (context) => const loginPage()),);
                  },
                      child: Text('Get Started',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink.shade900,
                          fontFamily: "BUXTONSKETCH",
                        ),
                  ),),
                )
              ]
          )),);
  }
}