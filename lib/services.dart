import 'package:flutter/material.dart';
import 'package:kite/activities.dart';
import 'package:kite/exercise.dart';
import 'package:kite/todo.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      appBar: AppBar(
        title: Center(child: Text("Services",
          textAlign: TextAlign.center,
          style: TextStyle(

            fontSize: 40,
            color: Colors.pink.shade900,
            fontWeight: FontWeight.bold,
            fontFamily: "BUXTONSKETCH",
          ),)),

      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=> ToDo()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink.shade900,
                side: BorderSide(color: Colors.black,width: 6),
                fixedSize: Size(400,70),
                shape: RoundedRectangleBorder(),
                elevation: 20,
                shadowColor: Colors.blue.shade900,

              ),
              child: Text("Brain Dump(To Do)",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "BUXTONSKETCH",

                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=> Excercise()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink.shade900,
                side: BorderSide(color: Colors.black,width: 6),
                fixedSize: Size(400,70),
                shape: RoundedRectangleBorder(),
                elevation: 20,
                shadowColor: Colors.blue.shade900,

              ),
              child: Text("Grounding Exercises",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "BUXTONSKETCH",

                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=> Activities()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink.shade900,
                side: BorderSide(color: Colors.black,width: 6),
                fixedSize: Size(400,70),
                shape: RoundedRectangleBorder(),
                elevation: 20,
                shadowColor: Colors.blue.shade900,

              ),
              child: Text("Suggested Activities",
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
    );
  }
}
