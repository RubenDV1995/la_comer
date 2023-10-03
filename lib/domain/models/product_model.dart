class ProductsModel {
  List<Product> products;

  ProductsModel({
    required this.products,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
    products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
  };
}

class Product {
  int id;
  String title;
  String price;
  String weight;
  String url;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.weight,
    required this.url,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    title: json["title"],
    price: json["price"],
    weight: json["weight"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "price": price,
    "weight": weight,
    "url": url,
  };
}
