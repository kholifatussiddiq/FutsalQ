import 'package:flutter/material.dart';
import 'package:futsal_app/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileWidgetPage extends StatefulWidget {
  
  @override
  _ProfileWidgetPageState createState() => _ProfileWidgetPageState();
}

class _ProfileWidgetPageState extends State<ProfileWidgetPage> {
  
  @override
  Widget build(BuildContext context) {
      final screenWidth=MediaQuery.of(context).size.width;
    final screenHeight=MediaQuery.of(context).size.height;

    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children:[
              Padding(
                padding:  EdgeInsets.symmetric(vertical: screenHeight*0.05),
                child: Center(
                  child: Image.asset('assets/oo.png',
                  height: screenHeight*0.1,
                  width: screenWidth*0.3
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:screenWidth*0.05),
                child: Text('Name',
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight:FontWeight.w600
                ),
                ),
              ),
              SizedBox(
                width: screenWidth*0.90,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal:screenWidth*0.05),
                  child: TextFormField(
             
                    decoration:
                    InputDecoration(
                      fillColor: Color(0xFFE6EEED),
                      filled: true,
                      
                      labelText: 'Kholifatussiddiq',labelStyle: GoogleFonts.poppins(
                        fontSize:16,
                        fontWeight:FontWeight.w600
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide:BorderSide.none,
                      )
                    )
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:screenWidth*0.05,vertical:screenHeight*0.010),
                child: Text('Username',
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  
                  fontSize:14,
                  fontWeight:FontWeight.w600
                )
                ),
              ),
              SizedBox(
                width: screenWidth*0.9,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal:screenWidth*0.05),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Color(0xffE6EEED),
                      filled: true,
                      labelText:'kholifatussiddi2021',
                      labelStyle: GoogleFonts.poppins(
                        fontSize:16,
                        fontWeight:FontWeight.w600
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(100),
                        borderSide:BorderSide.none
                      )
                    ),
                  ),
                ),
              ),
               Padding(
                padding:  EdgeInsets.symmetric(horizontal:screenWidth*0.05,vertical:screenHeight*0.010),
                child: Text('Phone Number',
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  
                  fontSize:14,
                  fontWeight:FontWeight.w600
                )
                ),
              ),
              SizedBox(
                width: screenWidth*0.9,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal:screenWidth*0.05),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Color(0xffE6EEED),
                      filled: true,
                      labelText:'087787188835',
                      labelStyle: GoogleFonts.poppins(
                        fontSize:16,
                        fontWeight:FontWeight.w600
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(100),
                        borderSide:BorderSide.none
                      )
                    ),
                  ),
                ),
              ),
               Padding(
                padding:  EdgeInsets.symmetric(horizontal:screenWidth*0.05,vertical:screenHeight*0.010),
                child: Text('Email',
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  
                  fontSize:14,
                  fontWeight:FontWeight.w600
                )
                ),
              ),
              SizedBox(
                width: screenWidth*0.9,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal:screenWidth*0.05),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Color(0xffE6EEED),
                      filled: true,
                      labelText:'kholifatussiddiq@gmail.com',
                      labelStyle: GoogleFonts.poppins(
                        fontSize:16,
                        fontWeight:FontWeight.w600
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(100),
                        borderSide:BorderSide.none
                      )
                    ),
                  ),
                ),
              ),
              
                 Padding(
                  padding:  EdgeInsets.only(top:10,right:25),
                  child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                       
                        width:screenWidth*0.30,
                        height: screenHeight*0.075,
                        child: TextButton(
                          
                          style: TextButton.styleFrom(
                          
                            backgroundColor:Color(0xff4141A4),
                            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                        
                          ),
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HomePage()),
                              );
                          }, child: Text('Simpan',style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight:FontWeight.w600,
                              color:Colors.white
                          )),
                          ),
                      ),
                    ],
                  ),
                ),
              
               

            ]
        

    );
  }
}