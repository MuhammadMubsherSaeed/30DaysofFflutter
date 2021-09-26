import 'package:first_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:first_app/models/product.dart';

class HomeDetailPage extends StatelessWidget {
  final Item product;
  const HomeDetailPage({
    Key? key,
    required this.product,
  })  : assert(product != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamcolor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${product.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(MyTheme.darkblue),
                  shape: MaterialStateProperty.all(StadiumBorder())),
              child: "Add to Cart".text.make(),
            ).wh(130, 50),
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(product.id.toString()),
              child: Image.network(product.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      product.name.text.xl4.color(MyTheme.darkblue).bold.make(),
                      product.desc.text
                          .textStyle(context.captionStyle)
                          .xl
                          .make(),
                      10.heightBox,
                      "Et amet et lorem dolor justo sanctus vero diam sed. Sed ea dolor diam sit, lorem sadipscing diam sed aliquyam dolor est lorem, dolore sit gubergren vero ea est ipsum, no clita gubergren elitr nonumy. Est sea et accusam gubergren. Stet sit lorem vero sit sit dolore, lorem ipsum sit."
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .p16(),
                    ],
                  ).py64(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
