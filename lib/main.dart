import 'package:flutter/material.dart';
import 'package:futsal_app/pages/bookings.dart';
import 'package:futsal_app/pages/details_book.dart';
import 'package:futsal_app/pages/home.dart';
import 'package:futsal_app/pages/profile.dart';
import 'package:futsal_app/pages/splash.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {  
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     routes: {
       '/': (context)=>SplashPage(),
       '/home':(context)=>HomePage(),
       '/details': (context)=>DetailsBook(),
       '/bookings': (context)=>BookingPage(),
       '/profile': (context)=>ProfilePage(),
     },
    );
  }
} 