import 'package:first_app/models/product.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:first_app/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    ProductModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plans Cafe"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:(ProductModel.items!=null && ProductModel.items.isNotEmpty)? ListView.builder(
          itemCount: ProductModel.items.length,
          itemBuilder: (context, index) =>
             ProductWidget(
              item: ProductModel.items[index],
            )
          ,
        ):Center(
          child: 
          CircularProgressIndicator(),
          ),
      ),
      drawer: MyDrawer(),
    );
  }
}
