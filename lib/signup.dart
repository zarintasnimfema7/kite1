
import 'package:flutter/material.dart';
import 'package:kite/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final username = TextEditingController();
 final password = TextEditingController();
 final confirmPassword = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isVisible = false;
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
                         controller: username,
                         validator: (value) {
                           if (value!.isEmpty) {
                             return "username is required";
                           }
                           return null;
                         },
                         decoration: const InputDecoration(
                           icon: Icon(Icons.person),
                           border: InputBorder.none,
                           hintText: "Username",
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
                   Container(
                     height: 55,
                     width: MediaQuery.of(context).size.width * .9,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                         color: Colors.pink.shade900),
                     child: TextButton(
                         onPressed: () {

                               Navigator.push(
                                   context,
                                   MaterialPageRoute(
                                       builder: (context) => const LoginScreen()));

                         },
                         child: const Text(
                           "SIGN UP",
                           style: TextStyle(color: Colors.white),
                         )),
                   ),

                   //Sign up button
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       const Text("Already have an account?"),
                       TextButton(
                           onPressed: () {
                             //Navigate to sign up
                             Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) => const LoginScreen()));
                           },
                           child: const Text("Login"))
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


}

