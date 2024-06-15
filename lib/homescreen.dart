import 'package:flutter/material.dart';
import 'package:kite/help.dart';
import 'package:kite/info.dart';
import 'package:kite/loginPage.dart';
import 'package:kite/loginPage.dart';
import 'package:kite/services.dart';
import 'package:kite/signupPage.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:kite/situations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>const Situation()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade300,
                  side: BorderSide(color: Colors.black,width: 6),
                  fixedSize: Size(400,150),
                  shape: RoundedRectangleBorder(),
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
              SizedBox(height: 40,),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=> Services()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade900,
                      side: BorderSide(color: Colors.black,width: 6),
                      fixedSize: Size(170,70),
                      shape: RoundedRectangleBorder(),
                      elevation: 20,
                      shadowColor: Colors.blue.shade900,

                    ),
                    child: Text("Services",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: "BUXTONSKETCH",

                      ),
                    ),
                  ),
                  SizedBox(width: 13,),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade900,
                      side: BorderSide(color: Colors.black,width: 6),
                      fixedSize: Size(170,70),
                      shape: RoundedRectangleBorder(),
                      elevation: 20,
                      shadowColor: Colors.blue.shade900,

                    ),
                    child: Text("Chat",
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
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> MentalHealthIssuesPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade900,
                  side: BorderSide(color: Colors.black,width: 6),
                  fixedSize: Size(400,70),
                  shape: RoundedRectangleBorder(),
                  elevation: 20,
                  shadowColor: Colors.blue.shade900,

                ),
                child: Text("More on mental health issues",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "BUXTONSKETCH",

                  ),
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> ProfessionalHelpPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade900,
                  side: BorderSide(color: Colors.black,width: 6),
                  fixedSize: Size(400,70),
                  shape: RoundedRectangleBorder(),
                  elevation: 20,
                  shadowColor: Colors.blue.shade900,

                ),
                child: Text("Profesional Help",
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
        ),
      ),
    );
  }
}
