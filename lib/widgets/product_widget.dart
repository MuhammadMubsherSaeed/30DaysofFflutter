import 'package:first_app/models/product.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final Item item;

  const ProductWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
              color: Colors.green.shade700, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
