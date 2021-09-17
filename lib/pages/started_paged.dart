import 'package:flutter/material.dart';
import 'package:futsal_app/pages/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:futsal_app/pages/sign_in.dart';

class GetStartedPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children:<Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,

            
            ),
            
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.175,left:15,right:15),
                  child: Text('Make It Easy To Order a Futsal Field',
                  textAlign:TextAlign.left,
                  style:GoogleFonts.poppins(
                    color:Color(0xff5be32c),
                    fontSize:34,
                    fontWeight:FontWeight.w400,

                  ),
                  ),
                  
                 
                ),
               Container(
                 alignment: Alignment.center,
                 child: Image.asset('assets/phone.png', 
                width:MediaQuery.of(context).size.width*0.75,
                height:MediaQuery.of(context).size.height*0.30),
               ),


                Padding(
                  padding:  EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height*0.05),
                  child: Column(
                    children: [
                      Container(
                        width:200,
                        height:45,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor:Color(0xff36b11e),
                            shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(66),
                            ),
                          ),
                       onPressed: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                    }, child: Text('Sign In',
                          style:GoogleFonts.poppins(
                            color:Colors.white,
                            fontSize:16,
                            fontWeight:FontWeight.w500,
                          ),
                          ),
                          ),
                          ),
                           Padding(
                             padding:  EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height*0.025),
                             child: Container(
                             width: 200,
                              height:45,
                 
                    child: OutlinedButton(
                      onPressed: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                    },
                    style:OutlinedButton.styleFrom(
                       backgroundColor:Color(0xff0dcb17),
                      side: BorderSide(color:Colors.white),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(66)),
                    ),
                     child: Text(
                      'Sign Up',
                      style: GoogleFonts.poppins(
                        color:Colors.white,
                        fontSize:16,
                        fontWeight:FontWeight.w500,
                      ),
                      ),
                      ),
                  ),
                           ),
                
                   
                    ],
                    
                  ),
                ),
               
              ],
              ),
        ]
        
      ),
    );
  }
}