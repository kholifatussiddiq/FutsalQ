import 'package:flutter/material.dart';
import 'package:futsal_app/pages/second_home.dart';
import 'package:google_fonts/google_fonts.dart';

class FieldCard extends StatelessWidget {
  final String text;
  final String imageUrl;
  FieldCard({this.imageUrl,this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondHomePage()),
                    );
      },
          child: Container(              
                width:150,
                height:200,
                child: Align(
                  alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left:10,bottom:15),
                      child: Text(text,
                      style:GoogleFonts.poppins(
                        fontSize:16,
                        fontWeight: FontWeight.w500,
                        color:Colors.white,
                      ),
                  ),
                    ),
                ),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image:AssetImage(imageUrl),
                    fit: BoxFit.cover),
                 
                  ),
      ),
    );
}
}
  