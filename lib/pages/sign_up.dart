import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:futsal_app/pages/sign_in.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';
import 'package:futsal_app/pages/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUpPage extends StatefulWidget  {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}


class _SignUpPageState extends State<SignUpPage> {

  String fullName;
  String username;
  String password;
  String email;
  String phonenumber;

  bool isEmailValid=true;
  bool isUploaded=false;
  TextEditingController emailController =  TextEditingController();
  final TextEditingController controllerfullname = TextEditingController();
  final TextEditingController controllerusername = TextEditingController();
  final TextEditingController controllerpassword = TextEditingController();
  final TextEditingController controllerphonenumber = TextEditingController();

  @override
  Widget build(BuildContext context) {

    Widget uploadedImage(){
      return Center(
        child: InkWell(
          onTap: (){
            setState(() {
             isUploaded=!isUploaded;
            });
          },
                  child: Column(
                    children:[
                      Image.asset('assets/poto_profile.png',
                        width:250,
                        height:125,
                      ),
            ],
          ),
        ),
      );
    }

    Widget showImage(){
      return Center(
        child: InkWell(
          onTap: (){
            setState(() {
             isUploaded=!isUploaded;
            });
          },
                  child: Column(
                    children:[
                      Image.asset('assets/oo.png',
                        width:250,
                        height:125,
                      ),
                    ],
                  ),
        ),
      );
     }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:
        SingleChildScrollView(
          padding: const EdgeInsets.only(
              top:70,
              left:40,
              right:40
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text(
                'Sign Up',
              style: GoogleFonts.poppins(
                fontSize:16,
                fontWeight:FontWeight.w300,
                color:Color(0xff4141A4),
              ),
              ),
              SizedBox(height:2),
              Text('Create Your Account Now !',
              style:GoogleFonts.poppins(
                fontSize:34,
                fontWeight:FontWeight.w600,
                color: Color(0xff4141A4)
              ),
              ),

              SizedBox(height:5),
             
                isUploaded?showImage(): uploadedImage(),

                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text ('Full Name',
                        style:GoogleFonts.poppins(
                          fontSize:16,
                          fontWeight:FontWeight.w300,
                          color:Color(0xff4141A4),
                        ),
                      ),
                  SizedBox(height: 5),
                  TextFormField(
                    controller: controllerfullname,
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
                          borderSide:BorderSide(color:Color(0xff4141A4)),
                        )
                    ),
                    onChanged: (value) {
                      setState(() => fullName = value);
                    },
                  ),
                    ]
                ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text('Username',
                      style:GoogleFonts.poppins(
                        fontSize:16,
                        fontWeight:FontWeight.w300,
                        color:Color(0xff4141A4),
                      ),
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      controller: controllerusername,
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
                            borderSide:BorderSide(color:Color(0xff4141A4)),
                          )
                      ),
                      onChanged: (value) {
                        setState(() => username = value);
                      },
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
                        color:Color(0xff4141A4),
                      ),
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      controller: controllerpassword,
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
                            borderSide:BorderSide(color:Color(0xff4141A4)),
                          )
                      ),
                      onChanged: (value) {
                        setState(() => password = value);
                      },
                    ),
                  ]
              ),

              Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children:[
                       Text('Email',
                         style:GoogleFonts.poppins(
                           fontSize:16,
                           fontWeight:FontWeight.w300,
                           color:Color(0xff4141A4),
                         ),
                       ),
                       SizedBox(height: 5),
                       TextFormField(
                           controller: emailController,
                           onChanged: (value){
                             print(value);
                             bool isValid = EmailValidator.validate(value);
                             print(isValid);
                             if(isValid){
                               setState((){
                                 setState(() => email = value);
                                 isEmailValid=true;
                               });
                             }else{
                               setState((){
                                 isEmailValid=false;
                               });
                             }

                    },
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
                        borderSide:BorderSide(color:isEmailValid?Color(0xff4141A4):Color(0xffFD4F56)),
                      )
                    ),
                    style:TextStyle(
                      color:isEmailValid?Color(0xff4141A4):Color(0xffFD4F56)
                    )
                  ),
                ]
              ),
           
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text('Phone Number',
                  style:GoogleFonts.poppins(
                    fontSize:16,
                    fontWeight:FontWeight.w300,
                    color:Color(0xff4141A4),
                  ),
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    controller: controllerphonenumber,
                    keyboardType:TextInputType.number,
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
                        borderSide:BorderSide(color:Color(0xff4141A4)),
                      )
                    ),
                    onChanged: (value) {
                      setState(() => phonenumber = value);
                    },
                  ),
                ]
              ),
              SizedBox(height: 10),
               Center(
                child: Container(
                 
                  width: 150,
                  height:45,
                 
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor:Color(0xff4141A4),
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Sign Up',
                      style: GoogleFonts.poppins(
                          fontSize:14,
                       color:Color(0xffffffff)
                     ),
                     ),
                     
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
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                    },
                    child: Text('Back To Sign In ',
                    style: GoogleFonts.poppins(
                      color:Color(0xff4141A4),
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