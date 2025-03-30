import 'package:aplication/config/menu/menu_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Material 3')),
      body: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount  : appMenuItems.length,
      itemBuilder: (context, index) {

       final menuItem = appMenuItems[index]; // ✅ Obtener la instancia correcta

        return CustomListType(menuItem: menuItem);
        // final menuItem = appMenuItems[index];
        // return Text(menuItem.title);
      },
    );
  }
}

class CustomListType extends StatelessWidget {
  const CustomListType({
    super.key,
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    
    final colors = Theme.of(context).colorScheme;
    
    return ListTile(
      leading: Icon(menuItem.icon, color:colors.primaryFixedDim),
      trailing: Icon(Icons.arrow_forward_ios_rounded,color:colors.primary ,),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () => {
         
        //  Navigator.of(context).push(
        //     MaterialPageRoute(builder: (context)=>
        //       const ButtonsScreens()
        //     )
        //  )

        //Navigator.pushNamed(context, menuItem.link)

        context.push( menuItem.link )
      },
    );
  }
}
