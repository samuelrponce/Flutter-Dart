import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.teal,
  Colors.blue,
  Colors.black,
  Colors.white

];

class AppTheme{

    final int selectedColor;

    AppTheme({
      this.selectedColor=0
    }):assert(selectedColor>=0, 'Selected color must be greater than 0'),
      assert(selectedColor < colorList.length, 'Selected color must be less or equal than ${colorList.length -1 }');
    

    ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: false
      )
      );
}