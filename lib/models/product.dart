class Item {
  final String id;
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

final products = [
  Item(
      id: "FYP001",
      name: "Plants",
      desc: "ABC",
      price: 999,
      color: "#33505a",
      image:
          "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwatchandlearn.scholastic.com%2Fvideos%2Fanimals-and-plants%2Fplants%2Fwhat-are-plants.html&psig=AOvVaw2mxgchgy6hAAogMSAu_dU6&ust=1630261031875000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKDYqe-p1PICFQAAAAAdAAAAABAD")
];
