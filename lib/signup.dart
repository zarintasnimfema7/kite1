import 'package:kite/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:kite/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:kite/login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final FirebaseAuthServices _auth = FirebaseAuthServices();

  final mail = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();


  bool isSigningUp=false;

  final formKey = GlobalKey<FormState>();
  bool isVisible = false;


  void dispose()
  {
    super.dispose();
    mail.dispose();
    password.dispose();
  }

  @override

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
         body: Stack(
           children: [
          SingleChildScrollView(
           child: Form(
             key: formKey,
             child: Padding(
               padding: EdgeInsets.only(
             top: MediaQuery.of(context).size.height * 0.1,
             right : 35 ,
             left: 35),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const ListTile(
                     title: Text(
                       "Register New Account",
                       style:
                       TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                     ),
                   ),

                   Center(
                     child: Container(
                       margin: EdgeInsets.all(8),
                       padding:
                       const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(8),
                           color: Colors.pink.shade50),
                       child: TextFormField(
                         controller: mail,
                         validator: (value) {
                           if (value!.isEmpty) {
                             return "Email is required";
                           }
                           return null;
                         },
                         decoration: const InputDecoration(
                           icon: Icon(Icons.person),
                           border: InputBorder.none,
                           hintText: "Email",
                         ),
                       ),
                     ),
                   ),

                   //Password field
                   Container(
                     margin: const EdgeInsets.all(8),
                     padding:
                     const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                         color: Colors.pink.shade50),
                     child: TextFormField(
                       controller: password,
                       validator: (value) {
                         if (value!.isEmpty) {
                           return "password is required";
                         }
                         return null;
                       },
                       obscureText: !isVisible,
                       decoration: InputDecoration(
                           icon: const Icon(Icons.lock),
                           border: InputBorder.none,
                           hintText: "Password",
                           suffixIcon: IconButton(
                               onPressed: () {
                                 //In here we will create a click to show and hide the password a toggle button
                                 setState(() {
                                   //toggle button
                                   isVisible = !isVisible;
                                 });
                               },
                               icon: Icon(isVisible
                                   ? Icons.visibility
                                   : Icons.visibility_off))),
                     ),
                   ),

                   //Confirm Password field
                   // Now we check whether password matches or not
                   Container(
                     margin: const EdgeInsets.all(8),
                     padding:
                     const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                         color: Colors.pink.shade50),
                     child: TextFormField(
                       controller: confirmPassword,
                       validator: (value) {
                         if (value!.isEmpty) {
                           return "password is required";
                         } else if (password.text != confirmPassword.text) {
                           return "Passwords don't match";
                         }
                         return null;
                       },
                       obscureText: !isVisible,
                       decoration: InputDecoration(
                           icon: const Icon(Icons.lock),
                           border: InputBorder.none,
                           hintText: "Confirm password",
                           suffixIcon: IconButton(
                               onPressed: () {
                                 //In here we will create a click to show and hide the password a toggle button
                                 setState(() {
                                   //toggle button
                                   isVisible = !isVisible;
                                 });
                               },
                               icon: Icon(isVisible
                                   ? Icons.visibility
                                   : Icons.visibility_off))),
                     ),
                   ),

                   const SizedBox(height: 10),
                   //Login button
                    GestureDetector(
                        onTap:  (){
                          _signUp() ;

                     }, child: Container(
                     height: 55,
                     width: MediaQuery.of(context).size.width * .9,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                         color: Colors.pink.shade900),
                     child: TextButton (
                         onPressed: () {
                           _signUp();
                        },
                         child: isSigningUp? CircularProgressIndicator(
                           color: Colors.white,
                         ) : Text(
                           "SIGN UP",
                           style: TextStyle(color: Colors.white),
                         )),
                   ),
                    ),
                   SizedBox(
                        height: 20,
                      ),
                   //Sign up button
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                        Text("Already have an account?"),
                       GestureDetector(
                           onTap: () {
                             Navigator.pushAndRemoveUntil(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) => LoginScreen()),
                                     (route) => false);
                           },
                           child:  Text("Login",
                           style: TextStyle(
                             color: Colors.blue,
                           ),))
                     ],
                   )
                 ],
               ),
             ),
           ),
         ),
         ],),),
    );
  }

  void _signUp() async {

    setState(() {
      isSigningUp=true;
    });


    String email = mail.text;
    String pass = password.text;
    String conpass = confirmPassword.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, pass);

    setState(() {
      isSigningUp=false;
    });

    if (user != null) {
      print("User created successfully.");
      Navigator.pushNamed(context, '/LoginScreen');
    } else
      {
        print("Some error happened.");
      }
  }
}

/*TextButton(
onPressed: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) =>  LoginScreen()));
},*/