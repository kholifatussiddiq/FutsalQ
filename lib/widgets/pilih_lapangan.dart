import 'package:flutter/material.dart';

class ChooseField extends StatefulWidget {
  ChooseField({Key key}) : super(key: key);

  @override
  _ChooseFieldState createState() => _ChooseFieldState();
}

class _ChooseFieldState extends State<ChooseField> {
  String valueChoose;
  List listitems=[
    "Lapangan A","Lapangan B","Lapangan C"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10),
      child: DropdownButton(
        hint: Text('Pilih Lapangan'),
        icon: Icon(Icons.arrow_drop_down),
        value:valueChoose,
        underline: Container(
          height:1,
          color:Colors.black
        ),
        onChanged: (newValue) {
          setState(() {
            valueChoose=newValue;
          });
        },
        items: listitems.map((valueItem){
          return DropdownMenuItem(
            value:valueItem,
            child: Text(valueItem),
          );
        }).toList(),

      ),
    ) ;
  }
}