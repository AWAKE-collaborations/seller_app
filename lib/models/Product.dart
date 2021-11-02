//this model contains all product details
//Todo: please add item quantity and rate

class Product {
  final String title, image;

  Product({this.title, this.image});
}

List<Product> demoProducts = [
  Product(title: "Coconut", image: "assets/images/img_1.png"),
  Product(title: "Copra", image: "assets/images/img_2.png"),
  Product(title: "Tender Coconut", image: "assets/images/img_3.png"),
  Product(title: "Grated Coconut", image: "assets/images/img_4.png"),
];
