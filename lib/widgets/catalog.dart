import 'package:flutter/material.dart';

class CatalogWidget extends StatelessWidget {
 final String imageUrl;
 CatalogWidget({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return  
    GestureDetector(
      onTap: ()async {
        await showDialog(context: context,
        builder:(_)=>ImageDialog()
        );
      },
          child: Container(
                      width:MediaQuery.of(context).size.width*0.20,
                      height:MediaQuery.of(context).size.height*0.10,
                      decoration:BoxDecoration(
                        image:DecorationImage(image: AssetImage(imageUrl),
                          fit: BoxFit.cover
                        ),
                        )
                      ) 
                    );
    
  }
}

class ImageDialog extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width:MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height*0.50,
        decoration:BoxDecoration(
          image:DecorationImage(image: AssetImage('assets/catalog_1.jpg'),
          fit: BoxFit.cover) )
      ),
    );
  }
}