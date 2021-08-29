class ProductModel {
  static final products = [
    Item(
        id: 001,
        name: "Plants",
        desc: "ABC",
        price: 999,
        color: "#33505a",
        image:
            "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F608990c4bcf2c7b4802c9725%2FIndoor-plants%2F960x0.jpg%3Ffit%3Dscale")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
