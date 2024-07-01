import 'package:flutter/material.dart';
import 'package:kite/activities.dart';
import 'package:kite/exercise.dart';
import 'package:kite/grounding_exercise.dart';
import 'package:kite/random_action_generator.dart';
import 'package:kite/toDoHome.dart';
import 'package:kite/todo_tile.dart';
import 'package:kite/five_four_three_two_one.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kite/words_of_affirmation.dart';



class Services extends StatelessWidget {
  Services({super.key});

  final _mybox = Hive.openBox('mybox');

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
                  //Navigator.push(context, MaterialPageRoute(builder:(context)=> const toDoHome()));
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
                child: const Text("Box Breathing",
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
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>  RandomActionGeneratorPage()));
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
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>  FiveFourThreeTwoOnePage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade900,
                  side: const BorderSide(color: Colors.black,width: 6),
                  fixedSize: const Size(400,70),
                  shape: const RoundedRectangleBorder(),
                  elevation: 20,
                  shadowColor: Colors.blue.shade900,

                ),
                child: const Text("5-4-3-2-1",
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
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>  GroundingExercisePage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade900,
                  side: const BorderSide(color: Colors.black,width: 6),
                  fixedSize: const Size(400,70),
                  shape: const RoundedRectangleBorder(),
                  elevation: 20,
                  shadowColor: Colors.blue.shade900,

                ),
                child: const Text("Grounding Excercise",
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
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>  WordsOfAffirmationPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade900,
                  side: const BorderSide(color: Colors.black,width: 6),
                  fixedSize: const Size(400,70),
                  shape: const RoundedRectangleBorder(),
                  elevation: 20,
                  shadowColor: Colors.blue.shade900,

                ),
                child: const Text("Words of Affirmation",
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
