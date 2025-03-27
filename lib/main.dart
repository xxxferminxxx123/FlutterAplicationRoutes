import 'package:aplication/config/presentation/cards/cards_screen.dart';
import 'package:aplication/config/presentation/screens/buttons/buttons_screens.dart';
import 'package:aplication/config/presentation/screens/home/home_screen.dart';
import 'package:aplication/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {

  static const bool   falso = false; 
  static const String rutaCard = '/card';
  static const String buttons = '/buttons';

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: falso,
      theme: AppTheme(selectedColor: 0 ).geTheme(),
      home: HomeScreen(),
      routes: {
          buttons:(context) =>const ButtonsScreens()
        ,rutaCard:(context) =>const CardsScreens()
      },
    );
  }
}
