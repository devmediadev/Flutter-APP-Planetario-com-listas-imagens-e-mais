import 'package:flutter/material.dart';

import 'package:solar_system/pages/home/home_page.dart';

class MyApp extends StatelessWidget {
  final String _appName = 'PlanetMedia';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _appName,
      theme: ThemeData(
        brightness: Brightness.dark,
        cardColor: Colors.black26,
        accentColor: Colors.black87
      ),
      home: HomePage(
        title: _appName,
      ),
    );
  }
}
