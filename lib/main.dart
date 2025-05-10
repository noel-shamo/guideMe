import 'package:flutter/material.dart';
import 'utils/theme.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guide Me - Find your way, Book your time',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppTheme.primaryColor),
        textTheme: AppTheme.textTheme,
        scaffoldBackgroundColor: AppTheme.bgColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: AppTheme.primaryButtonStyle,
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: AppTheme.secondaryButtonStyle,
        ),
      ),
      home: const HomePage(),
    );
  }
}
