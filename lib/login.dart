import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kite/homescreen.dart';
import 'package:kite/signup.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final username = TextEditingController();
  final password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  //A bool variable for show and hide password
  bool isVisible = false;

  //Here is our bool variable
  bool isLoginTrue = false;




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
                children: <Widget>[
                  SingleChildScrollView(
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.40,
                            right : 35 ,
                            left: 35),
                        child:
                        Column(
                          children: [
                            TextFormField(
                              controller: username,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "username is required";
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
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * .9,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.pink.shade900),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context)=>HomeScreen()));
                                  },
                                  child: const Text(
                                    "LOGIN",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Don't have an account?"),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => const SignUp()));

                                    },
                                    child: const Text("SIGN UP"))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  isLoginTrue
                      ? const Text(
                    "Username or password is incorrect",
                    style: TextStyle(color: Colors.red),
                  )
                      : const SizedBox(),
                  ],
    ),
    ));
  }
}



/*SingleChildScrollView(
child: Container(
padding: EdgeInsets.only(
top: MediaQuery.of(context).size.height * 0.35,
right : 35 ,
left: 35),
child: Column(
children:[
TextField(
decoration: InputDecoration(
fillColor: Colors.white,
filled: true,
hintText: 'Email',
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(10))),
),
SizedBox(
height: 30,
),
TextField(
obscureText: true,
decoration: InputDecoration(
fillColor: Colors.white,
filled: true,
hintText: 'Password',
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(10))),
)*/