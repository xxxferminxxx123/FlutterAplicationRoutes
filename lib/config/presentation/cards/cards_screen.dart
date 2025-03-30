import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CardsScreens extends StatelessWidget {
  static const String name = 'card_screen';
  const CardsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cards Screen')),
      body: ButtonView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class ButtonView extends StatelessWidget {
  const ButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            ElevatedButton(onPressed: null, child: Text('Elevated Disabled')),

            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Elevated Icon'),
            ),
            FilledButton(onPressed: (){}, child: Text('Field')),
            FilledButton.icon(onPressed: (){},
            icon: const Icon(Icons.ac_unit),
            label: const Text('Filed Icon'),
            ),
            IconButton(onPressed: (){}, 
            icon: Icon(Icons.app_registration),
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue),
                iconColor: const MaterialStatePropertyAll(Colors.white)
            ),
            )
          ],
        ),
      ),
    );
  }
}
