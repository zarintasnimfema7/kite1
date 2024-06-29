import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  const Activities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.pink.shade100,
        title: const Text("Suggested Activities",
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: 'BUXTONSKETCH'
          ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(height: 10.0),
            Row(
              children: [
                ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade800,
                    side: const BorderSide(color: Colors.black,width: 3),
                    fixedSize: const Size(170,150),
                    //shape: RoundedRectangleBorder(),
                    elevation: 20,
                    shadowColor: Colors.pink.shade900,
                  ),
                  child: const Text("Pick up things near you",
                    style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "BUXTONSKETCH",
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade800,
                    side: const BorderSide(color: Colors.black,width: 3),
                    fixedSize: const Size(170,150),
                    //shape: RoundedRectangleBorder(),
                    elevation: 20,
                    shadowColor: Colors.blue.shade900,
                  ),
                  child: const Text("Try the 5-4-3-2-1 method",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "BUXTONSKETCH",
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20.0),
            Row(
              children: [
                ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade800,
                    side: const BorderSide(color: Colors.black,width: 3),
                    fixedSize: const Size(170,150),
                    //shape: RoundedRectangleBorder(),
                    elevation: 20,
                    shadowColor: Colors.pink.shade900,
                  ),
                  child: const Text("Read a really funny joke",
                    style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "BUXTONSKETCH",
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade800,
                    side: const BorderSide(color: Colors.black,width: 3),
                    fixedSize: const Size(170,150),
                    //shape: RoundedRectangleBorder(),
                    elevation: 20,
                    shadowColor: Colors.blue.shade900,
                  ),
                  child: const Text("Remmember about all the happy things in your life",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "BUXTONSKETCH",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade800,
                    side: const BorderSide(color: Colors.black,width: 3),
                    fixedSize: const Size(170,150),
                    //shape: RoundedRectangleBorder(),
                    elevation: 20,
                    shadowColor: Colors.pink.shade900,
                  ),
                  child: const Text("Do    10 jumping jacks",
                    style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "BUXTONSKETCH",
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade800,
                    side: const BorderSide(color: Colors.black,width: 3),
                    fixedSize: const Size(170,150),
                    //shape: RoundedRectangleBorder(),
                    elevation: 20,
                    shadowColor: Colors.blue.shade900,
                  ),
                  child: const Text("Watch some funny cat videos",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "BUXTONSKETCH",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade800,
                    side: const BorderSide(color: Colors.black,width: 3),
                    fixedSize: const Size(170,150),
                    //shape: RoundedRectangleBorder(),
                    elevation: 20,
                    shadowColor: Colors.pink.shade900,
                  ),
                  child: const Text("Visualize a memory that makes you happy",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "BUXTONSKETCH",
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade800,
                    side: const BorderSide(color: Colors.black,width: 3),
                    fixedSize: const Size(170,150),
                    //shape: RoundedRectangleBorder(),
                    elevation: 20,
                    shadowColor: Colors.blue.shade900,
                  ),
                  child: const Text("Listen to soothing music",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "BUXTONSKETCH",
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
