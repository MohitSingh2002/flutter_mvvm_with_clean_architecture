import 'package:flutter/material.dart';
import 'package:flutter_mvvm_with_clean_architecture/presentation/resources/routes_manager.dart';
import 'package:flutter_mvvm_with_clean_architecture/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {

  MyApp._internal(); // Private named constructor

  static final MyApp instance = MyApp._internal(); // single instance -- singleton

  factory MyApp() => instance; // factory for the class instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: Routes.splashRoute,
    );
  }
}
