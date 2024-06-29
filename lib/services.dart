import 'package:flutter/material.dart';
import 'package:kite/activities.dart';
import 'package:kite/exercise.dart';
import 'package:kite/todo.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/background.png'),
            fit: BoxFit.cover,
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> const ToDo()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade900,
                  side: const BorderSide(color: Colors.black,width: 6),
                  fixedSize: const Size(400,70),
                  shape: const RoundedRectangleBorder(),
                  elevation: 20,
                  shadowColor: Colors.blue.shade900,

                ),
                child: const Text("Brain Dump(To Do)",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "BUXTONSKETCH",

                  ),
                ),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> const Excercise()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade900,
                  side: const BorderSide(color: Colors.black,width: 6),
                  fixedSize: const Size(400,70),
                  shape: const RoundedRectangleBorder(),
                  elevation: 20,
                  shadowColor: Colors.blue.shade900,

                ),
                child: const Text("Grounding Exercises",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "BUXTONSKETCH",

                  ),
                ),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> const Activities()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade900,
                  side: const BorderSide(color: Colors.black,width: 6),
                  fixedSize: const Size(400,70),
                  shape: const RoundedRectangleBorder(),
                  elevation: 20,
                  shadowColor: Colors.blue.shade900,

                ),
                child: const Text("Suggested Activities",
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
