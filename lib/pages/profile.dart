import 'package:flutter/material.dart';
import 'package:futsal_app/widgets/profile_widget.dart';


class ProfilePage extends StatefulWidget {
 
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth=MediaQuery.of(context).size.width;
    final screenHeight=MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffcfd8dc),
      appBar: AppBar(
        title:Text('Profile')
      ),
      body: 
         Padding(
           padding:  EdgeInsets.symmetric(horizontal:screenWidth*0.05,vertical:screenHeight*0.025),
           child: Container(
              
            width: screenWidth*0.9,
            height: screenHeight*0.85,
           
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(10),
                color: Colors.white,
            ),
        child: ProfileWidgetPage(),

        
        
              
              
              
               ),
               
         ),
      
    );
  }
}