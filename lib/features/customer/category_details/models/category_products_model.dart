class CategoryProductsModel {
  final String name;
  final String image;
  final String value;
  CategoryProductsModel(
      {required this.name, required this.image, required this.value});

  factory CategoryProductsModel.fromJson(Map<String, dynamic> json) {
    return CategoryProductsModel(
      name: json['name'],
      value: json['value'] ?? "",
      image: json['image'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'value': value,
      'image': image,
    };
  }
}
