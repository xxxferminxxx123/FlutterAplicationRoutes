import 'package:aplication/config/presentation/screens/home/home_screen.dart';
import 'package:aplication/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {

  static const FALSO = false; // ✅ Esto es válido

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: FALSO,
      theme: AppTheme(selectedColor: 0 ).geTheme(),
      home: HomeScreen()
    );
  }
}
