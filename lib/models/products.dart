class ProductsModel {
  String? id;
  String?name;
  String? description;
  int? price;
  String? status;
  int? rating;
  int? ratedBy;
  String? image;

  ProductsModel({
    this.id,
    this.name,
    this.description,
    this.price,
    this.status,
    this.rating,
    this.ratedBy,
    this.image,
  });

  ProductsModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    description = json["description"];
    price = json["price"];
    status = json["status"];
    rating = json["rating"];
    ratedBy = json["ratedBy"];
    image = json["image"];
  }
}
