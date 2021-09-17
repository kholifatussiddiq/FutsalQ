import 'package:flutter/material.dart';

class TimePage extends StatefulWidget {
  TimePage({Key key}) : super(key: key);


  @override
  _TimePageState createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {

  TimeOfDay time;
  TimeOfDay picked;
  @override
  void initState() {
    
    super.initState();
    time=TimeOfDay.now();
  }

  Future<Null>selectTime(BuildContext context) async {
    picked=await showTimePicker(
      context: context,
      initialTime:time
    );
    if(picked!=null){
      setState((){
        time=picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          IconButton(
            icon:Icon(Icons.alarm),
            iconSize: 30,

            onPressed:(){
              selectTime(context);
              print(time);
            }
          
          ),
            Text('Time ${time.hour}:${time.minute}', style:
            TextStyle(fontSize:16,
            ))
        ],

    );
  }
}