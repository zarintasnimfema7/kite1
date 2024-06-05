import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kite/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:kite/homescreen.dart';
import 'package:kite/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSigningIn=false;

  final FirebaseAuthServices _auth = FirebaseAuthServices();
  final FirebaseAuth _firebaseAuth=FirebaseAuth.instance;

  final mail = TextEditingController();
  final password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isVisible = false;
  bool isLoginTrue = false;


  void dispose()
  {
    super.dispose();
    mail.dispose();
    password.dispose();
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
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery
                            .of(context)
                            .size
                            .height * 0.40,
                        right: 35,
                        left: 35),
                    child:
                    Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.text,
                          controller: mail,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Email is required";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            fillColor: Colors.pink,
                            icon: Icon(Icons.person),
                            border: InputBorder.none,
                            hintText: "Username",
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
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
                                    setState(() {
                                      isVisible = !isVisible;
                                    });
                                  },
                                  icon: Icon(isVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off))),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            _signIn();
                          },
                          child: Container(
                            height: 40,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * .9,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.pink.shade900),
                            child: TextButton(
                                onPressed: () {
                                  _signIn();
                                },
                                child: isSigningIn
                                    ? CircularProgressIndicator(
                                  color: Colors.white,
                                ) : Text(
                                  "LOGIN",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ),
                        SizedBox(height: 20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account?"),
                            GestureDetector(
                                onTap: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUp()),
                                          (route) => false);
                                },

                                child: Text("SIGN UP",
                                  style: TextStyle(
                                      color: Colors.blue
                                  ),))
                          ],
                        ),
                      ],

                    ),
                  ),
                ),
              ),
            ]
          ),
        ));
  }

    void _signIn() async {

      setState(() {
        isSigningIn=true;
      });
      String email = mail.text;
      String pass = password.text;


      User? user = await _auth.signInWithEmailAndPassword(email, pass);

      setState(() {
        isSigningIn=false;
      });

      if (user != null) {
        print("Logged in Successfully.");
        Navigator.pushNamed(context,  '/_HomeScreenState');
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
builder: (context) =>  SignUp()));

},*/