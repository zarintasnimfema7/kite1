import 'package:flutter/material.dart';
import 'dart:async';
class Excercise extends StatefulWidget {
  const Excercise({super.key});

  @override
  State<Excercise> createState() => _ExcerciseState();
}

class _ExcerciseState extends State<Excercise> {
  int timeLeft=16;
  String word='follow';
  void _startCountDown()
  {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if(timeLeft>0 )
      {
        if( timeLeft>=13){
          setState(() {
            timeLeft--;
            word='Inhale';
          });
        }
        else if( timeLeft<=13 && timeLeft>=9)
        {
          setState(() {
            timeLeft--;
            word='hold';
          });
        }
        else if( timeLeft<=9 && timeLeft>=5)
        {
          setState(() {
            timeLeft--;
            word='Exhale';
          });
        }
        else if( timeLeft<=5 && timeLeft>=0)
        {
          setState(() {
            timeLeft--;
            word='Hold';
          });
        }

      }

      else{
        timer.cancel();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      appBar: AppBar(
        title: const Text("Grounding Exercises",
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: 'BUXTONSKETCH'
          ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Row(
              children: [

                Image.asset(
                  "lib/assets/girl.png",
                  width:190,
                  height: 190,
                ),
                // SizedBox(width: 5,),
                Container(
                  color: Colors.pink.shade900,
                  height: 180,
                  width: 180,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Hey! If you are having trouble to breath or trembling then doing Box Breathing is really effective',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'BUXTONSKETCH',
                        color: Colors.white,
                      ),

                    ),
                  ),

                ),
              ],
            ),
            Image.asset(
              "lib/assets/box.png",
              width:290,
              height: 290,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(timeLeft==0?'Done':timeLeft.toString(),
                  style: const TextStyle(
                    fontSize: 90,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'BUXTONSKETCH',
                  ),
                ),
                const SizedBox(width: 40,),
                MaterialButton(
                  onPressed: (){
                    _startCountDown();
                    timeLeft=16;
                  },
                  color: Colors.pink.shade900,
                  child: const Text('START',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'BUXTONSKETCH',
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Container(
              color:Colors.white ,
              child: Text(word,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: 'BUXTONSKETCH',
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
