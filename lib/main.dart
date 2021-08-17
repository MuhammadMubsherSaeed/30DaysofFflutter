import 'package:first_app/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PlantsCafe());
}

class PlantsCafe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
