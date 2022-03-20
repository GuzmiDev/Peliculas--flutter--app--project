import 'package:flutter/material.dart';
import '../models/menu_option.dart';
import '../screens/screens.dart'; 


class AppRoutes{

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'details', name: 'details', screen: const DetailsScreen(), icon: Icons.list),
  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (context) => const HomeScreen()});
    
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }

    return appRoutes;
  }

 static Route<dynamic> onGenerateRoute( RouteSettings settings){
        return MaterialPageRoute(
          builder: (context) => const AlertScreen()
        );
      }
}