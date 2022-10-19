class Product {
  int? id;
  String? brand;
  String? name;
  String? price;
  late dynamic priceSign;
  dynamic currency;
  String? imageLink;
  String? productLink;
  String? websiteLink;
  String? description;
  double? rating;
  late dynamic category;
  String? productType;
  late List<dynamic> tagList;
  String? createdAt;
  String? updatedAt;
  String? productApiUrl;
  String? apiFeaturedImage;
  late List<dynamic> productColors;

  Product(
      {required this.id,
      required this.brand,
      required this.name,
      required this.price,
      required this.priceSign,
      required this.currency,
      required this.imageLink,
      required this.productLink,
      required this.websiteLink,
      required this.description,
      required this.rating,
      required this.category,
      required this.productType,
      required this.tagList,
      required this.createdAt,
      required this.updatedAt,
      required this.productApiUrl,
      required this.apiFeaturedImage,
      required this.productColors});

  Product.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.brand = json["brand"];
    this.name = json["name"];
    this.price = json["price"];
    this.priceSign = json["price_sign"];
    this.currency = json["currency"];
    this.imageLink = json["image_link"];
    this.productLink = json["product_link"];
    this.websiteLink = json["website_link"];
    this.description = json["description"];
    this.rating = json["rating"];
    this.category = json["category"];
    this.productType = json["product_type"];
    this.tagList = json["tag_list"] ?? [];
    this.createdAt = json["created_at"];
    this.updatedAt = json["updated_at"];
    this.productApiUrl = json["product_api_url"];
    this.apiFeaturedImage = json["api_featured_image"];
    this.productColors = json["product_colors"] ?? [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["brand"] = this.brand;
    data["name"] = this.name;
    data["price"] = this.price;
    data["price_sign"] = this.priceSign;
    data["currency"] = this.currency;
    data["image_link"] = this.imageLink;
    data["product_link"] = this.productLink;
    data["website_link"] = this.websiteLink;
    data["description"] = this.description;
    data["rating"] = this.rating;
    data["category"] = this.category;
    data["product_type"] = this.productType;
    if (this.tagList != null) data["tag_list"] = this.tagList;
    data["created_at"] = this.createdAt;
    data["updated_at"] = this.updatedAt;
    data["product_api_url"] = this.productApiUrl;
    data["api_featured_image"] = this.apiFeaturedImage;
    if (this.productColors != null) data["product_colors"] = this.productColors;
    return data;
  }
}
