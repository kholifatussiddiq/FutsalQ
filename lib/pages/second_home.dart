import 'package:flutter/material.dart';
import 'package:futsal_app/pages/details_book.dart';
import 'package:futsal_app/widgets/catalog.dart';
import 'package:futsal_app/widgets/fasilitas.dart';
import 'package:futsal_app/widgets/jam.dart';
import 'package:futsal_app/widgets/pilih_lapangan.dart';
import 'package:futsal_app/widgets/tanggal.dart';
import 'package:google_fonts/google_fonts.dart';



class SecondHomePage extends StatelessWidget {
 
 
  @override
  Widget build(BuildContext context) {
     


    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      
     home:Scaffold(
      
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(top:10),
            child: Container(
              decoration:BoxDecoration(
                 border: Border.all(color:Colors.black)
              ),
              
         margin:EdgeInsets.only(top:5),
         height: MediaQuery.of(context).size.height*0.10,
         child: Row(
             children:[
               Expanded(
                   child: Stack(
                             
                      children: [
                       Padding(
                         padding: const EdgeInsets.only(left:25,top:10),
                         child: Container(
                           
                           alignment: Alignment.topLeft,
                           child:
                         Text('Price',
  
                         style:GoogleFonts.poppins(
  
                           fontSize:14,
  
                           fontWeight: FontWeight.w600,
                           color: Colors.grey,
  
                         ),
                         )
  
                         ),
                       ),
                       SizedBox(height:10),
                       Padding(
                         padding: const EdgeInsets.only(top:5),
                         child: Container(
                           alignment: Alignment.center,
                           child:
                         Text('Rp.120.000',
                         style:GoogleFonts.poppins(
                           fontSize:18,
                           fontWeight:FontWeight.w600,
                           color:Colors.red

                         ) 
                         )
                         ),
                       )
     
  
                  
                    ],
                   ),
                  
               ),
               Expanded(
                 child:
                InkWell(
                  onTap: (){  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsBook()),
                    );
                   },               
                                 
                   child: Container(
                     
                   alignment: Alignment.center,
                   color: Colors.green,
                   child: Text('Pesan Sekarang',
                  
                   style:GoogleFonts.poppins(
                     fontSize:18,
                     fontWeight:FontWeight.w600,
                     color: Colors.white,
                   )),
                   
                   ),
                )
                 )
             ]
         ), 
        ),
          ),
       
       body:SingleChildScrollView(
         child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children:[
          
           Stack(children: [
            
            Container(
              
              width: MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height/3,
              
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(5),
                image: DecorationImage(
                  image:AssetImage('assets/catalog_1.jpg'),
                  fit: BoxFit.cover,
                )
              )
              
            ) ,
            Padding(
              padding: const EdgeInsets.only(top:175,left:25),
              child: Text('', 
              style:GoogleFonts.poppins(
                fontSize: 24,
                fontWeight:FontWeight.w600,
                color: Colors.white,
              ),
              ),
            )
            
             
            
           ],
           ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            
             child : Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CatalogWidget(imageUrl:'assets/lapangan_bola.jpg'),
                    CatalogWidget(imageUrl:'assets/catalog_3.jpg'),
                    CatalogWidget(imageUrl:'assets/catalog_1.jpg'),
                    CatalogWidget(imageUrl:'assets/lapangan.png'),
                    CatalogWidget(imageUrl:'assets/lapangan_bola.jpg'),
                    CatalogWidget(imageUrl:'assets/lapangan_bola.jpg'),
                    CatalogWidget(imageUrl:'assets/lapangan_bola.jpg'),
                  ],
           )

          ),

          Padding(
            padding: const EdgeInsets.only(top:10,left:25),
            child: Text('Lapangan Futsal Ikan Daun',
            style:GoogleFonts.poppins(
              fontSize:20,
              fontWeight:FontWeight.w600,

            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Container(
              width: MediaQuery.of(context).size.width*0.25,
              height: MediaQuery.of(context).size.height*0.05,
              decoration:BoxDecoration(
                image:DecorationImage(image: AssetImage('assets/bintang.png'))
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15,top:5),
            child: Row(
                children:[
                   Container(
                width:MediaQuery.of(context).size.width*0.10,
                height:MediaQuery.of(context).size.height*0.030,
                decoration:BoxDecoration(image: DecorationImage(image: AssetImage('assets/placeholder.png'))),
              ),
              Text('Batam Center'),
             
            ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10),
            child: Divider(
              height:6,
              thickness:1,
              indent: 20,
              endIndent: 20,
              color: Colors.green,
            ),
          ),
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(top:10,left:25),
              child: Text('Pilih Tanggal Dan Jam Pemesanan',
              style:GoogleFonts.poppins(
                fontSize:16,
                fontWeight: FontWeight.w600
              ),
            ),
            ),
          ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TestPickerWidget(),

              Padding(
                padding: const EdgeInsets.only(left:5),
                child: TimePage(),
              ),
              Padding(
                padding: const EdgeInsets.only(top:5,left:5),
                child: ChooseField(),
              ),
              ],
            
            
          ),
           Padding(
            padding: const EdgeInsets.only(top:10),
            child: Divider(
              height:6,
              thickness:1,
              indent: 20,
              endIndent: 20,
              color: Colors.green,
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(top:10,left:25),
            child: Text('Fasilitas',
            style:GoogleFonts.poppins(
              fontSize: 16,
              fontWeight:FontWeight.w600,
              color: Colors.black
            )
            ),
          ),
          SizedBox(height:10,width:25),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
          
        child: Row(
           children: [
             FasilitasPage(
               imgUrl:'assets/toilet.png',
               text: 'Toilet',
             ),
             FasilitasPage(
               imgUrl:'assets/mosque.png',
               text:'Musholla'
             ),
             FasilitasPage(
               imgUrl:'assets/ruang_ganti.png',
               text: 'Ruang Ganti',
             ),
             FasilitasPage(
               imgUrl:'assets/rest-area.png',
               text: 'Rest Room'
             ),
              
              FasilitasPage(
               imgUrl:'assets/parking.png',
               text: 'Parking Area'
             )
                  
                 
                 
               ]
             ),
          )

         

         ] 
       ),
       
       )
       
     ),
    );
  }
}