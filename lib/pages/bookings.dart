import 'package:flutter/material.dart';
import 'package:futsal_app/pages/details_order.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingPage extends StatelessWidget {
 


  @override
  Widget build(BuildContext context) {

    final screenWidth=MediaQuery.of(context).size.width;
    final screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffcfd8dc),
      appBar: AppBar(
        title:Text('Pemesanan')
      ),
      body: 
      
      InkWell(
      onTap: (){  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsOrder()),
                    );
      },
              child: Container(
          alignment: Alignment.centerLeft,
          width:screenWidth,
          height:screenHeight*0.20,
          color:Colors.white,
        child: Row(
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: screenWidth*0.05),
              child: Image.asset('assets/catalog_1.jpg',
              width:screenWidth*0.25,
              height:screenHeight*0.125,
              fit: BoxFit.cover,),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical:screenHeight*0.050),
              child: Column(
                children: [
                  Text('Ikan Daun',
                  style:GoogleFonts.poppins(
                    
                    fontSize:16,
                    fontWeight:FontWeight.w600,
                  ),
                  ),
                  Text('11 July 2021',
                  style:GoogleFonts.poppins(
                    fontSize:14,
                    fontWeight:FontWeight.w400,
                  ),
                  ),
                  Text('19.00 - 20.00', style:GoogleFonts.poppins(
                    fontSize:14,
                    fontWeight:FontWeight.w400,
                  ))
                ],
              ),
            ),  
          ],
        ),
        
        
        ),
      ),

    );
  }
}