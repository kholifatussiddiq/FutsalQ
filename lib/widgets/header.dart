import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      
        color: Color(0xffffffff),
       padding:EdgeInsets.only(top:20,left:10,right:25,),
       child: Row(
         
         children: [
          
           Column(children:[
             Image.asset('assets/Logo.png',
              width:75,
              height:35,
             ),
             Text('FutsalQ',
               style:GoogleFonts.poppins(
                 fontSize: 14,
                 fontWeight: FontWeight.w600,
                 color:Colors.white,
               ),
          ),
         
         
         ],
        ),
       ],
      ),
     );
  }
}