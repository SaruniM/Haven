// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:haven_rental/screens/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: FirebaseOptions(
      apiKey: "AIzaSyAAUOB11j04nVMMlQCM-7zMWpaTr9YjokU",
      appId: "com.example.haven_rental",
      messagingSenderId: "XXX",
      projectId: "haven-15ef1",
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Haven',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Login(),
    );
  }
}
