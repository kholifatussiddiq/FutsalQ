import 'package:flutter/material.dart';

import 'package:futsal_app/pages/home.dart';

import 'package:google_fonts/google_fonts.dart';



class DetailsBook extends StatelessWidget {
  
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Container(
            width:MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height*0.075,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(10),
            ),
            child: RaisedButton(
              color: Colors.blue,
              child: Text('Pesan Sekarang',
              style:GoogleFonts.poppins(
                fontSize: 16,
                fontWeight:FontWeight.w600,
                color: Colors.white,
              )),
              onPressed: (){
                showDialog(
                context: context,
                builder:(context){
                Future.delayed(Duration(seconds: 2),(){
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context)=>HomePage()
                  ),);
                }); 
                 
                    return AlertDialog(
                      
                      title:Text("Pesanan Berhasil !",
                      textAlign: TextAlign.center,
                      style:GoogleFonts.poppins(
                        fontSize:24,
                        fontWeight:FontWeight.w600,
                      )
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      content:Container(
                        width:MediaQuery.of(context).size.width*0.25,
                        height:MediaQuery.of(context).size.height*0.10,
                        child: Image.asset('assets/success.png')),
    
                        actions: <Widget>[ 
                        FlatButton(
                          onPressed: () {  },
                          child:null )
                    
                      ]
                    
                    );
                }
                );
            
              },
            ),
          )
  ),
      appBar: AppBar(
        title:Text('Details',
        ),
        ),
        body: SingleChildScrollView(

            child:Stack(
                children: [ 
                  Container(
                width:MediaQuery.of(context).size.width*1,
                height:MediaQuery.of(context).size.height*0.5,
                color: Colors.blueGrey,
               
                ),
                
               Center(
                
                 child: Padding(
                   padding: const EdgeInsets.only(top:10),
                   child: Stack(
                      children: [
                         Center(
                        child: Container(
                          
                         width:MediaQuery.of(context).size.width*0.95,
                        height:MediaQuery.of(context).size.height*0.35,
                        decoration: BoxDecoration(
                         borderRadius:BorderRadius.circular(10),
                        color: Colors.white,
                        ),
                         
                     
                      
                          child: 
                          Stack(
                                  children: [
                                    Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*0.05,vertical:MediaQuery.of(context).size.height*0.05),
                                  child: Text('Lapangan Ikan Daun',
                                  
                                  textAlign: TextAlign.right,
                                  style:GoogleFonts.poppins(
                                    
                                    fontSize:18,
                                    fontWeight:FontWeight.w600,
                                  )
                                  
                                  ),
                                 
                                ),
                              ],
                            
                            ),
                            Column(
                              crossAxisAlignment:CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.10,vertical:MediaQuery.of(context).size.height*0.09),
                                  child: Text('Minggu , 11 July 2021 ',
                                  textAlign: TextAlign.right,
                                  style:GoogleFonts.poppins(
                                    fontSize:16,
                                    fontWeight:FontWeight.w500,
                                  )),
                                ),
                              ],
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children:[
                                Padding(
                                   padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.20,vertical:MediaQuery.of(context).size.height*0.125),
                                   child: Text('19.00 - 20.00 ',
                                  textAlign: TextAlign.right,
                                  style:GoogleFonts.poppins(
                                    fontSize:16,
                                    fontWeight:FontWeight.w500,
                                  )),
                                )
                              ]
                            ),
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children:[
                                Padding(
                                   padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.20 , vertical:MediaQuery.of(context).size.height*0.155),
                                   child: Text('Lapangan A ',
                                  textAlign: TextAlign.right,
                                  style:GoogleFonts.poppins(
                                    fontSize:16,
                                    fontWeight:FontWeight.w500,
                                  )),
                                )
                              ]
                            )

                          ]
                          ),
                          
                        ),

                      ),

                      

                   
                   
                     
                      
              
                    Padding(
                     padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.10,vertical:MediaQuery.of(context).size.height*0.050),
                     child: Container(
                        width:MediaQuery.of(context).size.width*0.30,
                          height:MediaQuery.of(context).size.height*0.25,
                          decoration: BoxDecoration(
                           borderRadius:BorderRadius.circular(10),
                           image: DecorationImage(image: AssetImage('assets/catalog_1.jpg'),fit: BoxFit.cover)  
                          
                     ),
                   ),                   
                 ),
                
              
                 Padding(
                   padding:  EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height*0.325),
                   child: Center(
                     child: Stack(
                          children: [Container(
                         width:MediaQuery.of(context).size.width*0.95,
                              height:MediaQuery.of(context).size.height*0.25,
                              
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                           color: Colors.lightBlue,
                        ),
                       
                       ),
                       Column(
                        children:[
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1,vertical: MediaQuery.of(context).size.height*0.030),
                            child: Text('Kode Booking : AB400',
                            style:GoogleFonts.poppins(
                              fontSize:16,
                              fontWeight:FontWeight.w600,
                              color: Colors.white
                            )),
                          )
                          
                        ]
                        
                       ),
                       Column(
                         children:[
                           Padding(
                            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1,vertical: MediaQuery.of(context).size.height*0.075),
                             child: Text('Price                  : Rp. 120.000',
                             style:GoogleFonts.poppins(
                               fontSize:20,
                               fontWeight:FontWeight.w600,
                               color:Colors.white
                             )),
                           )
                         ]
                       )
                      
                          ]
                     ),
                   ),
                 )
                
                
                  ]
                   ),
               )
               ),
              
              
              ]
              
            ),
            
                
        ),
      

       ),

    );
  }
}