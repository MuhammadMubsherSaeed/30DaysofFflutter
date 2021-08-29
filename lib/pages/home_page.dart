import 'package:first_app/models/product.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:first_app/widgets/product_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => ProductModel.products[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Plans Cafe"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ProductWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
