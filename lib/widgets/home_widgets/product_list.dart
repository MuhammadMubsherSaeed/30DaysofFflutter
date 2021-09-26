import 'package:first_app/models/product.dart';
import 'package:first_app/pages/home_detail_page.dart';
import 'package:first_app/widgets/home_widgets/product_image.dart';
import 'package:first_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: ProductModel.items.length,
      itemBuilder: (context, index) {
        final product = ProductModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPage(product: product),
            ),
          ),
          child: ProductItem(
            product: product,
          ),
        );
      },
    );
  }
}

class ProductItem extends StatelessWidget {
  final Item product;

  // ignore: unnecessary_null_comparison
  const ProductItem({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(product.id.toString()),
          child: ProductImage(
            image: product.image,
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            product.name.text.lg.color(MyTheme.darkblue).bold.make(),
            product.desc.text.textStyle(context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${product.price}".text.bold.xl.make(),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(MyTheme.darkblue),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                  child: "Add to Cart".text.make(),
                )
              ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).white.roundedLg.square(150).make().py16();
  }
}
