class Product{
  final String name;
  final String price;
  final String img;

  const Product({
    required this.name,
    required this.price,
    required this.img,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['title'].toString(),
      price: json['price'].toString(),
      img: json['thumbnail'].toString(),
    );
  }
}

