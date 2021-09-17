import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  
  final String imageUrl;
  PromoCard({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(    
                    width:200,
                    height:100,
                    decoration: BoxDecoration(
                      image: DecorationImage(image:
                      AssetImage(imageUrl),
                      ),
                      borderRadius: BorderRadius.circular(20),
                     
                    ),
                    
          
    );
  }
}