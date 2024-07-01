import 'package:flutter/material.dart';
import 'package:kite/exercise.dart';
import 'package:kite/guided_meditation.dart';
import 'package:kite/random_action_generator.dart';
import 'package:kite/words_of_affirmation.dart';

class six extends StatelessWidget {
  const six({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue.shade300,
      appBar: AppBar(backgroundColor: Colors.indigo.shade800,),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              height: 180,
              width: 500,
              decoration: BoxDecoration(
                  gradient:LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.indigo.shade100,Colors.indigo.shade600],
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Distracting yourself is a great way to not think about all the negative emotions in your mind. You can try below services. ",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontFamily: "BUXTONSKETCH",
                  ),
                ),
              ),
            ),
            SizedBox(height: 80,),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=>Excercise()));},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo.shade600,
                  // side: const BorderSide(color: Colors.black,width: 3),
                  fixedSize: const Size(200,100),
                  //shape: RoundedRectangleBorder(),
                  elevation: 20,
                  shadowColor: Colors.blue.shade900,

                ),
                child: const Text("Box Breathing",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "BUXTONSKETCH",
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=>RandomActionGeneratorPage()));},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo.shade600,
                  // side: const BorderSide(color: Colors.black,width: 3),
                  fixedSize: const Size(200,100),
                  //shape: RoundedRectangleBorder(),
                  elevation: 20,
                  shadowColor: Colors.blue.shade900,
                ),
                child: const Text("Random Action Generator",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "BUXTONSKETCH",
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=>GuidedMeditationPage()));},
                style: ElevatedButton.styleFrom(
                  backgroundColor:Colors.indigo.shade600,
                  // side: const BorderSide(color: Colors.black,width: 3),
                  fixedSize: const Size(200,100),
                  //shape: RoundedRectangleBorder(),
                  elevation: 20,
                  shadowColor: Colors.blue.shade900,
                ),
                child: const Text("Guided Meditation",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "BUXTONSKETCH",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
