class CategoryModelData {
  String? name;

  CategoryModelData({this.name});

  CategoryModelData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['name'] = this.name;

    return data;
  }
}
