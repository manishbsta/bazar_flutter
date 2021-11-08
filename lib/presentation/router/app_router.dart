import '../screens/product_details.dart';

import 'app_routes.dart';
import '../screens/favorites_screen.dart';
import '../screens/home_screen.dart';
import '../screens/search_screen.dart';
import '../screens/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings rSettings) {
    switch (rSettings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(title: 'Bazar'),
        );

      case AppRoutes.productDetails:
        return MaterialPageRoute(
          builder: (_) => const ProductDetails(),
        );

      case AppRoutes.search:
        return MaterialPageRoute(
          builder: (_) => const SearchScreen(),
        );

      case AppRoutes.favorites:
        return MaterialPageRoute(
          builder: (_) => const FavoritesScreen(),
        );

      case AppRoutes.settings:
        return MaterialPageRoute(
          builder: (_) => const SettingsScreen(),
        );

      default:
        return null;
    }
  }
}
