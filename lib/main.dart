import 'package:flutter/material.dart';

void main() {
  runApp(PlantsCafe());
}

class PlantsCafe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("Welcome to 30 days of flutter"),
          ),
        ),
      ),
    );
  }
}
