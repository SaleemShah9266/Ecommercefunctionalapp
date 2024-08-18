import 'package:flutter/material.dart';

/// Light & Dark Elevated Buttons


class TOutlinedButtonTheme{

  TOutlinedButtonTheme._();


  ///---Light Theme


  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(

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


  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(

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