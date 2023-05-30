import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFE5F2EF),
  100: Color(0xFFBFE0D8),
  200: Color(0xFF95CBBE),
  300: Color(0xFF6AB6A3),
  400: Color(0xFF4AA690),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF258E74),
  700: Color(0xFF1F8369),
  800: Color(0xFF19795F),
  900: Color(0xFF0F684C),
});
const int _primaryPrimaryValue = 0xFF2A967C;

const MaterialColor primaryAccent = MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFF9CFFDD),
  200: Color(_primaryAccentValue),
  400: Color(0xFF36FFBA),
  700: Color(0xFF1DFFB2),
});
const int _primaryAccentValue = 0xFF69FFCC;