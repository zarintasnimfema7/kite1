import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kite/firebase_options.dart';
import 'package:kite/login.dart';
import 'package:kite/welcome.dart';
import 'firebase_options.dart';
import 'package:kite/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    name: 'name-here',
    options: DefaultFirebaseOptions.currentPlatform,
  );
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