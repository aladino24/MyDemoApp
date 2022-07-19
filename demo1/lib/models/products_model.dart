class Product {
  int? id;
  String? name;
  int? stars;
  String? img;
  int? typeId;
  List<Product> get products => products;

  Product({this.id, this.name, this.stars, this.img, this.typeId});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    stars = json['stars'];
    img = json['img'];
    typeId = json['type_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['stars'] = stars;
    data['img'] = img;
    data['type_id'] = typeId;
    return data;
  }
}
