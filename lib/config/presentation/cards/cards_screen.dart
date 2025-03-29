import 'package:flutter/material.dart';

class CardsScreens extends StatelessWidget {

      static const String name = 'buttons_screen';
  const CardsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: const Placeholder(),
    );
  }
}