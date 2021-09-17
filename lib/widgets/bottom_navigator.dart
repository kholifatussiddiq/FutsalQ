import 'package:flutter/material.dart';



class BottomNavigasi extends StatefulWidget {
 
 
  @override
  _BottomNavigasiState createState() => _BottomNavigasiState();
}

class _BottomNavigasiState extends State<BottomNavigasi> {
  int selectedPage = 0;


  @override
  Widget build(BuildContext context) {
    return Container(
       
       margin: EdgeInsets.only(top:10),

       child: BottomNavigationBar(
         onTap: (index){
      switch(index){
      case 0:
        Navigator.pushNamed(context, "/home");
        break;
      case 1:
        Navigator.pushNamed(context, "/bookings");
        break;
      case 2:
      Navigator.pushNamed(context, "/profile");
      break;
      
    }
 },
         type: BottomNavigationBarType.fixed,
         showSelectedLabels: true,
         unselectedItemColor: Color(0xff000000),
         selectedItemColor: Color(0xFF82C8F7 ),
         elevation: 0,
        
         items: [
            
           BottomNavigationBarItem(
             icon: ImageIcon(
             AssetImage('assets/home.png')
           ),
           label: 'Home',
           ),
           BottomNavigationBarItem(icon: Stack(
                        children: [ImageIcon(
               AssetImage('assets/tickets.png')
             ),
            Container(
        width: 40,
        height: 25,
        alignment: Alignment.topRight,
        
        child: Container(
          width: 30,
          height: 20,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF12DBE9),
              border: Border.all(color: Colors.white, width: 1)),
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Center(
              child: Text("1",
              
                style: TextStyle(fontSize: 10),
              ),
            ),
          ),
        ),
            )
                        ]
           ),
           label: 'My Bookings',
           ),
           
            BottomNavigationBarItem(icon: ImageIcon(
             AssetImage('assets/avatar.png')
           ),
           label: 'Profile',
           ),
 
           
         ],
       ),
     
    );
  }
}