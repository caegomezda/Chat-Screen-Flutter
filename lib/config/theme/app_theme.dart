import 'package:flutter/material.dart';

const Color _customeColor = Color.fromARGB(15, 179, 99, 46);

const List<Color> _colorThemes = [
  _customeColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {

  final int selectedColor;

  AppTheme ({
    this.selectedColor = 0
  }): assert( _colorThemes.length - 1 >= selectedColor && selectedColor >= 0, "Colors must be between 0 and ${_colorThemes.length}" );

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor]
    );
  }

}