
class Product {
  late int id;
  late String description;
  late String name;
  late String category;
  late String image;
  late double price;
  late int quantity;

  Product({
    required this.id,
    required this.description,
    required this.name,
    required this.price,
    required this.image,
    required this.category,
    required this.quantity,
  });
}
