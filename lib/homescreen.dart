import 'package:flutter/material.dart';
import 'package:kite/chatpage.dart';
import 'package:kite/firebase_auth_implementation/authService.dart';
import 'package:kite/help.dart';
import 'package:kite/info.dart';
import 'package:kite/loginPage.dart';
import 'package:kite/services.dart';
import 'package:kite/situations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      appBar: AppBar(
        //backgroundColor: Colors.pink.shade900,
        title: Center(child: Text("Dashboard",
          style: TextStyle(
            fontSize: 30,
            color: Colors.pink.shade900,
            fontWeight: FontWeight.bold,
          ),)),

      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "lib/assets/pic8.png",
              width:210,
              height: 200,
            ),

            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const Situation()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade300,
                side: const BorderSide(color: Colors.black,width: 6),
                fixedSize: const Size(400,150),
                shape: const RoundedRectangleBorder(),
                elevation: 20,
                shadowColor: Colors.blue.shade900,

              ),
              child: Text("Do you want suggesstion based on your situation?",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink.shade900,
                  fontFamily: "BUXTONSKETCH",

                ),
              ),
            ),
            const SizedBox(height: 25,),
            Row(
              children: [
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> const Services()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade900,
                    side: const BorderSide(color: Colors.black,width: 6),
                    fixedSize: const Size(170,70),
                    shape: const RoundedRectangleBorder(),
                    elevation: 20,
                    shadowColor: Colors.blue.shade900,

                  ),
                  child: const Text("Services",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "BUXTONSKETCH",

                    ),
                  ),
                ),
                const SizedBox(width: 13,),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> Chat()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade900,
                    side: const BorderSide(color: Colors.black,width: 6),
                    fixedSize: const Size(170,70),
                    shape: const RoundedRectangleBorder(),
                    elevation: 20,
                    shadowColor: Colors.blue.shade900,

                  ),
                  child: const Text("Chat",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "BUXTONSKETCH",

                    ),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=> const MentalHealthIssuesPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink.shade900,
                side: const BorderSide(color: Colors.black,width: 6),
                fixedSize: const Size(400,70),
                shape: const RoundedRectangleBorder(),
                elevation: 20,
                shadowColor: Colors.blue.shade900,

              ),
              child: const Text("More on mental health issues",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "BUXTONSKETCH",

                ),
              ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=> const ProfessionalHelpPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink.shade900,
                side: const BorderSide(color: Colors.black,width: 6),
                fixedSize: const Size(400,70),
                shape: const RoundedRectangleBorder(),
                elevation: 20,
                shadowColor: Colors.blue.shade900,

              ),
              child: const Text("Profesional Help",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "BUXTONSKETCH",

                ),
              ),
            ),

            IconButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder:(context)=> const loginPage()));
            },
              icon: const Icon(Icons.logout,),),

          ],
        ),
      ),
    );
  }
}
