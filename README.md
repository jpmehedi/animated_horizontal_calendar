# animated_horizontal_calendar

A flutter plugin to show animated horizontal view of calendar with date picker.

# Features #
- Select custom date with Date picker
- CustomShape and style for Selected and unSelected Item.
- Swipe behavior
- Animated behavior


## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
## depandancy packeges
- intl
## App Demo
![Edited_20210517_233106](https://user-images.githubusercontent.com/29401466/118532752-1fece500-b769-11eb-8634-d8dd18eab4a3.gif)

## Example
This plugin allow you to do custom styles and shapes for Selected and UnSelected dates
```dart
    Container(
        height: 100,
        child: AnimatedHorizontalCalendar(
        tableCalenderIcon: Icon(Icons.calendar_today, color: Colors.white,),
        date: DateTime.now(),
        textColor: Colors.black45,
        backgroundColor: Colors.white,
        tableCalenderThemeData:  ThemeData.light().copyWith(
            primaryColor: Colors.green,
            accentColor: Colors.red,
            colorScheme: ColorScheme.light(primary: Colors.green),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
        ),
        selectedColor: Colors.redAccent,
        onDateSelected: (date){
        selectedDate = date;
        } 
      ),
    ),
```

