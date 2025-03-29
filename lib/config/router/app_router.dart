import 'package:aplication/config/presentation/cards/cards_screen.dart';
import 'package:aplication/config/presentation/screens/buttons/buttons_screens.dart';
import 'package:aplication/config/presentation/screens/home/home_screen.dart';
// import 'package:aplication/config/router/app_router.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(path: '/', 
    builder: (context, state) => HomeScreen()
    ),

    GoRoute(path: '/buttons', 
    name: ButtonsScreens.name,
    builder: (context, state) => ButtonsScreens()
    ),

    GoRoute(path: '/card', 
    name: CardsScreens.name,
    builder: (context, state) => CardsScreens()
    ),
  ],
);
