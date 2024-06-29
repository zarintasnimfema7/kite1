import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kite/firebase_auth_implementation/authService.dart';
import 'package:kite/signupPage.dart';
import 'package:flutter/material.dart';



class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();
  final FirebaseFirestore _firestore=FirebaseFirestore.instance;
  final FirebaseAuth _auth=FirebaseAuth.instance;



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
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/pink.jpg'),
            fit: BoxFit.cover,
          )
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontFamily: "BUXTONSKETCH",
                      ),
                    ),
                    const SizedBox(height: 10),
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
                        style: const TextStyle(color: Colors.black),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email is required';
                          }
                          return null;
                        },
                          decoration: const InputDecoration(
                            fillColor: Colors.pink,
                            icon: Icon(Icons.person),
                            border: InputBorder.none,
                            hintText: "Email",
                          )
                      ),
                    ),

                    const SizedBox(height: 20),

                    Container(
                      margin: const EdgeInsets.all(8),
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.pink.shade50),
                      child: TextFormField(
                        controller: password,
                        style: const TextStyle(color: Colors.black),
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
                          icon: const Icon(Icons.lock),
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

                    const SizedBox(height: 30),

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
                                ? const Center(child: CircularProgressIndicator())
                                : const Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                fontFamily: "BUXTONSKETCH",),
                            ))),

                    const SizedBox(height: 20),

                    TextButton(
                        onPressed: (){
                          Navigator.pushReplacement(context,
                            MaterialPageRoute(
                                builder: (context) => const signupPage()),);
                        },
                        child: const Text(
                          "Don't have an account? Sign Up",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontFamily: "BUXTONSKETCH",
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
