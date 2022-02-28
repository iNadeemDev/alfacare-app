//import 'package:firebase_core/firebase_core.dart';
import 'package:alfacare/pages/splash.dart';
//import 'package:alfacare/signup.dart';
import 'package:flutter/material.dart';
//import 'package:signup/login.dart';

//import 'package:get/get.dart';

void  main() {
  //WidgetsFlutterBinding.ensureInitialized;
  //await Firebase.initializeApp();
  runApp(const MyApp());
} 

class MyApp extends StatefulWidget {  
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alfacare',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      
    );
  }
}