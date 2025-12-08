class ProductModelData {
  List<Null>? categories;
  String? sId;
  String? productKey;
  String? name;
  String? description;
  int? price;
  String? category;
  int? stock;
  String? image;
  bool? availability;
  int? iV;
  String? type;

  ProductModelData({
    this.categories,
    this.sId,
    this.productKey,
    this.name,
    this.description,
    this.price,
    this.category,
    this.stock,
    this.image,
    this.availability,
    this.iV,
    this.type,
  });

  ProductModelData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    productKey = json['productKey'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    category = json['category'];
    stock = json['stock'];
    image = json['image'];
    availability = json['availability'];
    iV = json['__v'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['_id'] = this.sId;
    data['productKey'] = this.productKey;
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['category'] = this.category;
    data['stock'] = this.stock;
    data['image'] = this.image;
    data['availability'] = this.availability;
    data['__v'] = this.iV;
    data['type'] = this.type;
    return data;
  }
}
