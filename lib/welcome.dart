import 'package:flutter/material.dart';
import 'package:kite/login.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      //change 1
      body: Center(
          child:Text("Welcome to Kaiteki",
          style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (
            ) {  Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const LoginScreen()));
        },
        child: Text(
          'Next',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.pink.shade900,
          ),
        ),
       backgroundColor: Colors.white,
      ),
    );
  }
}






/*floatingActionButton: FloatingActionButton(
        onPressed: (
            ) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const LoginScreen()));
        },
        child: Text(
          'Next',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
       // backgroundColor: Colors.pink[400],
      ),*/