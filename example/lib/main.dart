import 'dart:io';

import 'package:animated_horizontal_calendar/animated_horizontal_calendar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Calender Example")),

      ///This is demo use [AnimatedHorizontalCalendar] calender
      ///You can customized all property

      body: Container(
        height: 100,
        child: AnimatedHorizontalCalendar(
          current: DateTime.now(),
          tableCalenderIcon: Icon(
            Platform.isIOS ? CupertinoIcons.calendar : Icons.calendar_today,
            color: Colors.white,
          ),
          date: selectedDate,
          textColor: Colors.black45,
          backgroundColor: Colors.white,
          tableCalenderThemeData: ThemeData.light().copyWith(
            primaryColor: Colors.green,
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
            colorScheme: ColorScheme.light(primary: Colors.green)
                .copyWith(secondary: Colors.red),
          ),
          selectedColor: Colors.redAccent,
          selectPrevious: false,
          onDateSelected: (date) {
            selectedDate = DateTime.parse(date);
          },
        ),
      ),
    );
  }
}
