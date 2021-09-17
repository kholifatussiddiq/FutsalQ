import 'package:flutter/material.dart';
import 'package:futsal_app/pages/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:futsal_app/pages/home.dart';

class SignInPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
      home: Scaffold(
        body:
        SingleChildScrollView(
          padding: const EdgeInsets.only(top:50,left:40,right:40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign In',
              style:GoogleFonts.poppins(
                fontSize:16,
                fontWeight:FontWeight.w300,
                color: Color(0xff1c820b)
              )
              ),
              Text('Make It Easy With Futsal Rent',
              style:GoogleFonts.poppins(
                fontSize:34,
                fontWeight:FontWeight.w600,
                color: Color(0xff1c820b),
              )
              ),
              SizedBox(height:10),
              Center(
                child: Column(children: [Image.asset('assets/ilustrasi_1.png',
                width:280,
                height:240,)]
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text('Username',
                  style:GoogleFonts.poppins(
                    fontSize:16,
                    fontWeight:FontWeight.w300,
                    color:Color(0xff1c820b),
                  ),
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    decoration:
                    InputDecoration(
                    fillColor: Color(0xffF1F0F5),
                    filled: true,
                      enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide:BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide:BorderSide.none,
                      )
                    ),
                  ),
                ]
              ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text('Password',
                  style:GoogleFonts.poppins(
                    fontSize:16,
                    fontWeight:FontWeight.w300,
                    color:Color(0xff1c820b),
                  ),
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    decoration:
                    InputDecoration(
                    fillColor: Color(0xffF1F0F5),
                    filled: true,
                      enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide:BorderSide.none,
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide:BorderSide.none,
                      )
                    ),
                    autofocus: false,
                    obscureText: true,
                  ),
                ]
              ),
              SizedBox(height:10),
              Center(
                child: Container(
                 
                  width: 150,
                  height:45,
                 
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor:Color(0xff1c820b),
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                     child: Text('Sign In',
                     style: GoogleFonts.poppins(
                       fontSize:14,
                       color:Color(0xffffffff)
                     ),),
                     
                     ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10,bottom:25),
                child: Center(
                
                  child: InkWell(
                    onTap: (){
                        Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                    },
                    child: Text('Create New Account',
                    style: GoogleFonts.poppins(
                      color:Color(0xff1c820b),
                      fontSize:14,
                      fontWeight:FontWeight.w300,
                    ),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}