import 'package:flutter/material.dart';

/// Light & Dark Elevated Buttons


class TElevatedButtonTheme{

  TElevatedButtonTheme._();


  ///---Light Theme


static final lightElevatedButtonTheme = ElevatedButtonThemeData(

  style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.black,
    side: const BorderSide(color: Colors.blue),
    padding: const EdgeInsets.symmetric(vertical: 18),
    textStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),

  ),
);




/// Dark Theme


  static final darkElevatedButtonTheme = ElevatedButtonThemeData(

  style: ElevatedButton.styleFrom(
  elevation: 0,
  foregroundColor: Colors.white,
  side: const BorderSide(color: Colors.blue),
  padding: const EdgeInsets.symmetric(vertical: 18),
  textStyle: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),

  ),
  );

}