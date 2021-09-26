import 'package:first_app/pages/cart_page.dart';
import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/login_page.dart';
import 'package:first_app/utilis/routes.dart';
import 'package:first_app/widgets/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PlantsCafe());
}

class PlantsCafe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.ligthTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      // initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
