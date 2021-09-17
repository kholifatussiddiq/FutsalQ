import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:futsal_app/pages/second_home.dart';

class CustomList extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  CustomList({this.imageUrl,this.title,this.price});

  @override
  Widget build(BuildContext context) {
    return InkWell(
  onTap: (){  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondHomePage()),
                    );
      },

          child: Container(
                   alignment: Alignment.centerLeft,
                   width:MediaQuery.of(context).size.width*0.90,
                   height:MediaQuery.of(context).size.height*0.30,
                 
                   decoration: BoxDecoration(
                     borderRadius:BorderRadius.circular(10),
                     color: Colors.white70
                     
                   ), 
                   child:Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children:[
                       Container(
                         width:MediaQuery.of(context).size.width*0.40,
                         height:MediaQuery.of(context).size.height*0.30,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           image:DecorationImage(image: AssetImage(imageUrl),
                           fit: BoxFit.cover
                           )
                         ),
                         ),
                       
                         Padding(
                           padding: const EdgeInsets.only(left:5,top:75),
                             
                              child: Column(
                               children: [
                                 Text(title,
                                 style:GoogleFonts.poppins(
                                   fontSize:16,
                                   fontWeight:FontWeight.w600,
                                 )
                                 ),
                                 SizedBox(height:5),
                                 Image.asset('assets/stars.png'),
                                 SizedBox(height:5),
                                 Text(price,
                                 textAlign: TextAlign.left,
                                 style:GoogleFonts.poppins(
                                   fontSize:14,
                                   fontWeight:FontWeight.w600,
                                   color:Colors.redAccent
                                 ),
                                 )
                               ],
                             ),
                           ),
                           
                         
                         
                       
                       
                       
                       
                     ]
                   ) 
                     ),
    );
                 
  }
}