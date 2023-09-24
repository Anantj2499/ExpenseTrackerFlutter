import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(221, 62, 1, 1));
var kdarkColorScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(221, 0, 32, 37),
    brightness: Brightness.dark);
void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
          useMaterial3: true,
          colorScheme: kdarkColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: kdarkColorScheme.background,
              foregroundColor: kdarkColorScheme.onBackground),
          cardTheme: const CardTheme().copyWith(
              color: kdarkColorScheme.secondaryContainer,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  foregroundColor: kdarkColorScheme.onPrimaryContainer,
                  backgroundColor: kdarkColorScheme.primaryContainer)),
          textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: kColorScheme.onSecondaryContainer,
                  fontSize: 16))),
      theme: ThemeData().copyWith(
          colorScheme: kColorScheme,
          useMaterial3: true,
          appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: kColorScheme.onPrimaryContainer,
              foregroundColor: kColorScheme.primaryContainer),
          cardTheme: const CardTheme().copyWith(
              color: kColorScheme.secondaryContainer,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: kColorScheme.primaryContainer)),
          textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: kColorScheme.onSecondaryContainer,
                  fontSize: 16))),
      home: const Expenses(),
    ),
  );
}
