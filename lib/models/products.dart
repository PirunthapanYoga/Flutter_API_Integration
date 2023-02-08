class ProductsModel {
  String id;
  String name;
  String description;
  int price;
  String status;
  int rating;
  int ratedBy;
  String image;

  ProductsModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.status,
    required this.rating,
    required this.ratedBy,
    required this.image,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    price: json["price"],
    status: json["status"],
    rating: json["rating"],
    ratedBy: json["ratedBy"],
    image: json["image"].toString(),
  );
}
