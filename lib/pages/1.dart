import 'package:flutter/material.dart';

class one extends StatelessWidget {
  const one({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue.shade300,
      appBar: AppBar(backgroundColor: Colors.blue.shade700,),

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
                   colors: [Colors.blue.shade100,Colors.blue.shade900],
                 )
               ),
               child: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Text("Hey, Its ok to feel anxious. The below activities might help you.",
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
               child: ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=>const one()));},
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.blue.shade800,
                  // side: const BorderSide(color: Colors.black,width: 3),
                   fixedSize: const Size(200,100),
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
             SizedBox(height: 20,),
             Align(
               alignment: Alignment.center,
               child: ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=>const one()));},
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.blue.shade800,
                  // side: const BorderSide(color: Colors.black,width: 3),
                   fixedSize: const Size(200,100),
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
             SizedBox(height: 20,),
             Align(
               alignment: Alignment.center,
               child: ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=>const one()));},
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.blue.shade800,
                  // side: const BorderSide(color: Colors.black,width: 3),
                   fixedSize: const Size(200,100),
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
           ],
         ),
       ),
    );
  }
}
