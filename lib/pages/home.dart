import 'package:flutter/material.dart';
import 'package:futsal_app/widgets/bottom_navigator.dart';
import 'package:futsal_app/widgets/custom_list.dart';
import 'package:futsal_app/widgets/field_card.dart';
import 'package:google_fonts/google_fonts.dart';



class HomePage extends StatelessWidget {
 
  

  @override
  Widget build(BuildContext context) {
    Widget header() {
     return Container(
      
        color: Color(0xfff3f3f3),
       padding:EdgeInsets.only(top:20,left:10,right:25,),
       child: Row(
         
         children: [
          
           Column(children:[
             Image.asset('assets/oo.png',
              width:75,
              height:35,   
          ),
           Text('FutsalQ',
          style:GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color:Colors.green,
           ),
          ),
         
         
         ],
        ),
       ],
      ),
     );
    }

    Widget body(){
      return Container(
        child: Column(  
          crossAxisAlignment:CrossAxisAlignment.start, 
          children:[
            SizedBox(height:10),
            
            Padding(
              padding: const EdgeInsets.only(left:15),
              child: Text('Most Popular',
              style:GoogleFonts.poppins(
                fontSize:18,
                fontWeight:FontWeight.w600,
                color:Color(0xff000000),
                ),
              ),
            ),
            
            SizedBox(height:5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                  child: Padding(padding:EdgeInsets.only(left:25),
                  child: Row(
                  children:[
                   FieldCard(
                     text:'Lapangan Futsal Ikan Daun',
                     imageUrl:'assets/lapangan1.png',
                   ),
                   SizedBox(width:5),
                   FieldCard(
                     text:'Lapangan Futsal Shoping Centre',
                     imageUrl:'assets/lapangan2.jpg',
                   ),
                   SizedBox(width:5),
                   FieldCard(
                     text:'M-Barca - Futsal Majesty',
                     imageUrl:'assets/lapangan4.jpg',
                   ),
                   SizedBox(width:5),
                   FieldCard(
                     text:'Sport Hilll Centre Futsal',
                     imageUrl:'assets/lapangan3.jpg',
                   ),
                    SizedBox(width:5),
                    FieldCard(
                     text:'Lapangan Futsal Triniti',
                     imageUrl:'assets/lapangan5jpg',
                   ),
                  ]
                
               ),
              ),
            ),
            
            SizedBox(height:5),
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Text('Futsal Field',
              style: GoogleFonts.poppins(
                  fontSize:18,
                  fontWeight: FontWeight.w600,
                  color:Color(0xff000000),
              ),
              ),
            ),
           
           Center(
             child: Padding(
               padding: const EdgeInsets.only(top:10),
               child: 
               SingleChildScrollView(
                child: Column(
                    children: [
                    CustomList(
                      imageUrl: 'assets/catalog_1.jpg',
                      title:'Ikan Daun',
                      price:'Rp. 90.000'
                    ),
                    SizedBox(height:10),
                    CustomList(
                      imageUrl: 'assets/lapangan.png',
                      title:'Shoping Centre',
                      price:'Rp. 150.000'
                    ),
                    SizedBox(height:10),
                    CustomList(
                      imageUrl: 'assets/catalog_3.jpg',
                      title:'M-Barca',
                      price:'Rp. 150.000'
                    ),
                     SizedBox(height:10),
                    CustomList(
                      imageUrl: 'assets/catalog_1.jpg',
                      title:'Sport Hilll',
                      price:'Rp. 150.000'
                    ),
                     SizedBox(height:10),
                    CustomList(
                      imageUrl: 'assets/lapangan_bola.jpg',
                      title:'Triniti',
                      price:'Rp. 150.000'
                    ),


                    ],

                 ),
               ),
              

               ),
             ),
           
            
            
          ]
          ),
          
      );
    }

    return Scaffold(
      
      backgroundColor: Color(0xffDCDCDC),
    
     bottomNavigationBar: BottomNavigasi(),

   body: SingleChildScrollView(
   
    child:Column(
     
     crossAxisAlignment: CrossAxisAlignment.start,
     
      children: [
          header(),
          body()
          ],
        ),
      ),
    );
  }
}