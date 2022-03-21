//import 'package:firebase_core/firebase_core.dart';
import 'package:alfacare/pages/login.dart';
import 'package:alfacare/pages/splash.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:alfacare/signup.dart';
import 'package:flutter/material.dart';
//import 'package:signup/login.dart';

//import 'package:get/get.dart';

Future<void>  main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
} 

class MyApp extends StatefulWidget {  
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Alfacare',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: const SplashScreen(),
    //
    // );

    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          // Check for Errors
          if (snapshot.hasError) {
            print("Something Went Wrong");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Alfacare',
            theme: ThemeData(
              primarySwatch: Colors.purple,
            ),
            home: const SplashScreen(),

          );
        });
  }
}