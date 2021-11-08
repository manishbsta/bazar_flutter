class Product {
  final String id;
  final String title;
  final String price;

  Product({
    required this.id,
    required this.title,
    required this.price,
  });

  Product copyWith({
    String? id,
    String? title,
    String? price,
  }) {
    return Product(
      id: id ?? this.id,
      title: title ?? this.title,
      price: price ?? this.price,
    );
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['_id'],
      title: map['title'],
      price: map['price'],
    );
  }
}
