import 'package:flutter/material.dart';

const colorList = <Color> [
    Colors.black
   ,Colors.blue
   ,Colors.green
   ,Colors.white
   ,Colors.orange
   ,Colors.pink
  ];

const MUST_PICK_COLOR = 'Select color must  be greater then 0';

class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor = 0 
  }):assert( selectedColor  >= 0 , MUST_PICK_COLOR
  );

  ThemeData geTheme() => ThemeData(

     useMaterial3:true
    ,colorSchemeSeed: colorList[selectedColor] 

  );

}