import 'package:flutter/material.dart';

class Config {
  static TextTheme get textTheme => const TextTheme(
        displayLarge: TextStyle(fontSize: 50, fontFamily: 'MoreSugarMedium'),
        displayMedium: TextStyle(fontSize: 35, fontFamily: 'MoreSugarMedium'),
        displaySmall: TextStyle(fontSize: 20, fontFamily: 'MoreSugarMedium'),
        titleLarge: TextStyle(fontSize: 32, fontFamily: 'MoreSugarMedium'),
        titleMedium: TextStyle(fontSize: 28, fontFamily: 'MoreSugarMedium'),
        titleSmall: TextStyle(fontSize: 24, fontFamily: 'MoreSugarMedium'),
        bodyLarge: TextStyle(fontSize: 18, fontFamily: 'MoreSugarRegular'),
        bodyMedium: TextStyle(fontSize: 16, fontFamily: 'MoreSugarRegular'),
        bodySmall: TextStyle(fontSize: 14, fontFamily: 'MoreSugarRegular'),
        labelLarge: TextStyle(fontSize: 14, fontFamily: 'MoreSugarMedium'),
        labelMedium: TextStyle(fontSize: 12, fontFamily: 'MoreSugarRegular'),
        labelSmall: TextStyle(fontSize: 10, fontFamily: 'MoreSugarRegular'),
      );

  static Widget get hGap5 => const SizedBox(width: 5);
  static Widget get hGap10 => const SizedBox(width: 10);
  static Widget get hGap15 => const SizedBox(width: 15);
  static Widget get hGap20 => const SizedBox(width: 20);
  static Widget get hGap30 => const SizedBox(width: 30);

  static Widget get vGap5 => const SizedBox(height: 5);
  static Widget get vGap10 => const SizedBox(height: 10);
  static Widget get vGap15 => const SizedBox(height: 15);
  static Widget get vGap20 => const SizedBox(height: 20);
  static Widget get vGap30 => const SizedBox(height: 30);
  static Widget get vGap60 => const SizedBox(height: 60);
}
