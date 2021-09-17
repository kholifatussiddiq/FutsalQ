import 'dart:async';

import 'package:flutter/material.dart';
import 'package:futsal_app/pages/started_paged.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashPage extends StatefulWidget {
 
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 3),(){
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context)=>GetStartedPage()
        ));

      });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body:Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
        
           height: 300,
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/futsal.png'),
                    fit: BoxFit.cover
                ),
                shape: BoxShape.circle
        
          )
          ),
          Text('FutsalQ',
          style:GoogleFonts.poppins(
            color: Color(0xff1ff300),
            fontSize: 32,
            fontWeight: FontWeight.w600
            ))
        
        ],),
      )
    );
  }
}