import 'package:aplication/config/router/app_router.dart';
import 'package:aplication/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {

  static const bool   falso = false; 


  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: falso,
      theme: AppTheme(selectedColor: 0 ).geTheme(),
    );
  }
}
