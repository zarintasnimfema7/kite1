import 'package:flutter/material.dart';
import 'package:kite/loginPage.dart';
import 'package:kite/loginPage.dart';
import 'package:kite/signupPage.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:ElevatedButton(
          child: Text('Log out'),
          onPressed: (){
            Navigator.pushReplacement(context,
              MaterialPageRoute(
                  builder: (context) => loginPage(),),);
          },
        )
      ),
    );
  }
}
