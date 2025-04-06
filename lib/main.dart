import 'package:flutter/material.dart';
import 'package:youtube_clone/features/presentation/screens/splash_screen.dart';
import 'package:youtube_clone/features/presentation/themes/dark_theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: DarkTheme.youtubeDarkTheme,
      home: SplashScreen(),
    );
  }
}
