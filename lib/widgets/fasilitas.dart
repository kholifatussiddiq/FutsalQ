import 'package:flutter/material.dart';


class FasilitasPage extends StatelessWidget {
  final String imgUrl;
  final String text;
  FasilitasPage({this.imgUrl, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
               children: [
                Padding(
                  padding: const EdgeInsets.only(left:0),
                  child: Image.asset(imgUrl,
                  width:MediaQuery.of(context).size.width*0.25,
                  height:MediaQuery.of(context).size.height*0.075
                  ),
                  
                ),
                SizedBox(height:10),
                Padding(
                  padding: const EdgeInsets.only(left:0),
                  child: Text(text),
                )  
               ]
    );
  }
}