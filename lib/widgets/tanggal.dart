import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TestPickerWidget extends StatefulWidget {
  @override
  _TestPickerWidgetState createState() => _TestPickerWidgetState();
}

class _TestPickerWidgetState extends State<TestPickerWidget> {
  DateTime _selectedDate;
  TextEditingController _textEditingController = TextEditingController()..text=DateFormat('MMM d , y').format(DateTime.now()).toString();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:5,right: 10),
      
      child: Container(
          
          width: MediaQuery.of(context).size.width*0.25,
          child: TextField(
          
            focusNode: AlwaysDisabledFocusNode(),
            controller: _textEditingController,
            onTap: () {
              _selectDate(context);
            },
          ),
        
      ),
    );
  }

  _selectDate(BuildContext context) async {
    DateTime newSelectedDate = await showDatePicker(
        context: context,
        initialDate:  DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2040),
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData.light().copyWith(
              colorScheme: ColorScheme.dark(
                primary: Colors.deepPurple,
                onPrimary: Colors.white,
                surface: Colors.blueGrey,
                onSurface: Colors.black,
              ),
              dialogBackgroundColor: Colors.white,
            ),
            child: child,
          );
        });

    if (newSelectedDate != null) {
      _selectedDate = newSelectedDate;
      _textEditingController
        ..text = DateFormat.yMMMd().format(_selectedDate)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: _textEditingController.text.length,
            affinity: TextAffinity.upstream));
    }
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}