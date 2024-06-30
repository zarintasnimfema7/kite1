import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kite/firebase_options.dart';
import 'package:kite/loginPage.dart';
import 'package:kite/welcome.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'firebase_options.dart';
import 'package:kite/toDoHome.dart';
import 'package:kite/signupPage.dart';
import 'package:kite/homescreen.dart';
import 'package:flutter/src/widgets/app.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    name: 'name-here',
    options: DefaultFirebaseOptions.currentPlatform,
  );


 FirebaseFirestore.instance.settings=const Settings(
   persistenceEnabled: true,
 );

 await Hive.initFlutter();

 var box=await Hive.openBox('mybox');


  runApp(const MyApp());
}
//pompom
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const Notes(),
      home: const MyAuth(),
    );
  }
}