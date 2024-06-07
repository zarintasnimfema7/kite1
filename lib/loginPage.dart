import 'package:kite/firebase_auth_implementation/authService.dart';
import 'package:kite/homescreen.dart';
import 'package:kite/signupPage.dart';
import 'package:kite/main.dart';
import 'package:kite/welcome.dart';
import 'package:kite/firebase_auth_implementation/authService.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';



class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  var isLogin = false;
  bool isVisible = false;
  var authService = authServices();

  Future<void> form(BuildContext context) async {
    if (formKey.currentState!.validate()) {


      setState(() {
        isLogin = true;
      });


      var data = {
        "email": email.text,
        "password": password.text,
      };


      await authService.login(data, context);
      setState(() {
        isLogin = false;
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/background.png'),
            fit: BoxFit.cover,
          )
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: const EdgeInsets.all(8),
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.pink.shade50),
                      child: TextFormField(
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.black),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email is required';
                          }
                          return null;
                        },
                          decoration: InputDecoration(
                            fillColor: Colors.pink,
                            icon: Icon(Icons.person),
                            border: InputBorder.none,
                            hintText: "Email",
                          )
                      ),
                    ),

                    SizedBox(height: 20),

                    Container(
                      margin: const EdgeInsets.all(8),
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.pink.shade50),
                      child: TextFormField(
                        controller: password,
                        style: TextStyle(color: Colors.black),
                        keyboardType: TextInputType.visiblePassword,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        obscureText: !isVisible,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password is required';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.pink,
                          icon: Icon(Icons.lock),
                          border: InputBorder.none,
                          hintText: "Password",
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isVisible = !isVisible;
                                  });
                                },
                                icon: Icon(isVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off))),
                        ),
                    ),

                    SizedBox(height: 30),

                    SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink.shade900),
                            onPressed: () {
                              isLogin ? print("Loading") : form(context);
                            },
                            child: isLogin
                                ? Center(child: CircularProgressIndicator())
                                : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold),
                            ))),

                    SizedBox(height: 20),

                    TextButton(
                        onPressed: (){
                          Navigator.pushReplacement(context,
                            MaterialPageRoute(
                                builder: (context) => signupPage()),);
                        },
                        child: Text(
                          "Don't have an account? Sign Up",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
