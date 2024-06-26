import 'package:flutter/material.dart';
import 'package:kite/pages/1.dart';
import 'package:kite/pages/2.dart';
import 'package:kite/pages/3.dart';
import 'package:kite/pages/4.dart';
import 'package:kite/pages/5.dart';
import 'package:kite/pages/6.dart';
import 'package:kite/pages/7.dart';

class Situation extends StatelessWidget {
  const Situation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        //backgroundColor: Colors.pink.shade900,
        title: Center(child: Text("Situations",
          style: TextStyle(
            fontSize: 40,
            color: Colors.blue.shade900,
            fontWeight: FontWeight.bold,
            fontFamily: "BUXTONSKETCH",
          ),)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const SizedBox(height: 10,),
              Container(
                height: 60,
                width: 400,
                color: Colors.white,
                child: const Center(child: Text("1.Are you feeling anxious?",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontFamily: "BUXTONSKETCH",
                  ),
                )),
              ),
              const SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=>const one()));},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    side: const BorderSide(color: Colors.black,width: 3),
                    fixedSize: const Size(100,45),
                    //shape: RoundedRectangleBorder(),
                    elevation: 20,
                    shadowColor: Colors.blue.shade900,
                  ),
                  child: const Text("yes",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "BUXTONSKETCH",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                height: 60,
                width: 400,
                color: Colors.white,
                child: const Center(child: Text("2.Are you feeling overwhelmed?",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontFamily: "BUXTONSKETCH",
                  ),
                )),
              ),
              const SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>two()));},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    side: const BorderSide(color: Colors.black,width: 3),
                    fixedSize: const Size(100,45),
                    //shape: RoundedRectangleBorder(),
                    elevation: 20,
                    shadowColor: Colors.blue.shade900,
                  ),
                  child: const Text("yes",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "BUXTONSKETCH",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 60,
                width: 400,
                color: Colors.white,
                child: const Center(child: Text("3.Are you angry?",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontFamily: "BUXTONSKETCH",
                  ),
                )),
              ),
              const SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>three()));},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    side: const BorderSide(color: Colors.black,width: 3),
                    fixedSize: const Size(100,45),
                    //shape: RoundedRectangleBorder(),
                    elevation: 20,
                    shadowColor: Colors.blue.shade900,
                  ),
                  child: const Text("yes",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "BUXTONSKETCH",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                height: 60,
                width: 400,
                color: Colors.white,
                child: const Center(child: Text("4.Are you in need of comfort?",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontFamily: "BUXTONSKETCH",
                  ),
                )),
              ),
              const SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>four()));},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    side: const BorderSide(color: Colors.black,width: 3),
                    fixedSize: const Size(100,45),
                    //shape: RoundedRectangleBorder(),
                    elevation: 20,
                    shadowColor: Colors.blue.shade900,
                  ),
                  child: const Text("yes",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "BUXTONSKETCH",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 60,
                width: 400,
                color: Colors.white,
                child: const Center(child: Text("5.Do you need to vent ?",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontFamily: "BUXTONSKETCH",
                  ),
                )),
              ),
              const SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>five()));},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    side: const BorderSide(color: Colors.black,width: 3),
                    fixedSize: const Size(100,45),
                    //shape: RoundedRectangleBorder(),
                    elevation: 20,
                    shadowColor: Colors.blue.shade900,
                  ),
                  child: const Text("yes",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "BUXTONSKETCH",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                height: 60,
                width: 400,
                color: Colors.white,
                child: const Center(child: Text("6.Do you need a distraction?",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontFamily: "BUXTONSKETCH",
                  ),
                )),
              ),
              const SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>six()));},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    side: const BorderSide(color: Colors.black,width: 3),
                    fixedSize: const Size(100,45),
                    //shape: RoundedRectangleBorder(),
                    elevation: 20,
                    shadowColor: Colors.blue.shade900,
                  ),
                  child: const Text("yes",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "BUXTONSKETCH",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 60,
                width: 400,
                color: Colors.white,
                child: const Center(child: Text("7.Are you seeing any physical symptoms?",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontFamily: "BUXTONSKETCH",
                  ),
                )),
              ),
              const SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>seven()));},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    side: const BorderSide(color: Colors.black,width: 3),
                    fixedSize: const Size(100,45),
                    //shape: RoundedRectangleBorder(),
                    elevation: 20,
                    shadowColor: Colors.blue.shade900,
                  ),
                  child: const Text("yes",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "BUXTONSKETCH",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),


            ],
          ),
        ),
      ),
    );
  }
}
