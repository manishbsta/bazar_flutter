import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/themes/app_theme.dart';

import 'presentation/router/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  final _theme = AppTheme();
  final _appRouter = AppRouter();
  final _prefs = await SharedPreferences.getInstance();

  runApp(
    Bazar(
      prefs: _prefs,
      appTheme: _theme,
      appRouter: _appRouter,
    ),
  );
}

class Bazar extends StatelessWidget {
  const Bazar({
    Key? key,
    required this.appRouter,
    required this.appTheme,
    required this.prefs,
  }) : super(key: key);

  final AppRouter appRouter;
  final AppTheme appTheme;
  final SharedPreferences prefs;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bazar (Beta)',
      theme: appTheme.lightTheme(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
