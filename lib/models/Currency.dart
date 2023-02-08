class Currency {
  String? type;
  String? abb;

  Currency({
    this.type,
    this.abb,
  });

  Currency.fromJson(Map<String, dynamic> json){
    type= json["type"];
    abb= json["abb"];
  }
}