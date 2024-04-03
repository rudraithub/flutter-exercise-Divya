import 'package:flutter/material.dart';

class datetime extends StatefulWidget {
  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<datetime> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime)
      setState(() {
        selectedTime = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker Example',
        style: TextStyle(color: Colors.white),
        ),
        backgroundColor:Colors.black,
      ),
      backgroundColor: Colors.amber[200],
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: Text('Select Date',
                              style: TextStyle(color: Colors.white),
              ),
               style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink, 
                ),// Set backg
            ),
            Text(
              '${selectedDate.year}-${selectedDate.month}-${selectedDate.day}',
              style: TextStyle(fontSize: 24.0,color: Colors.blue),
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () => _selectTime(context),
              child: Text(
                'Select Time',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink, // Set background color here
              ),
            ),
            Text(
              '${selectedTime.hour}:${selectedTime.minute}',
              style: TextStyle(fontSize: 24.0,color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
