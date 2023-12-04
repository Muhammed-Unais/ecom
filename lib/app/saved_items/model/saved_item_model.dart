import 'package:hive_flutter/hive_flutter.dart';

part 'saved_item_model.g.dart';

@HiveType(typeId: 1)
class SavedItemModel {
  @HiveField(0)
  String name;
  @HiveField(1)
  String appDescription;
  @HiveField(2)
  String stock;
  @HiveField(3)
  String oldprice;
  @HiveField(4)
  String price;
  @HiveField(5)
  String discount;
  @HiveField(6)
  String rating;
  @HiveField(7)
  String image;

  SavedItemModel({
    required this.name,
    required this.appDescription,
    required this.stock,
    required this.oldprice,
    required this.price,
    required this.discount,
    required this.rating,
    required this.image,
  });

  factory SavedItemModel.fromMap(Map<String, dynamic> json) => SavedItemModel(
        name: json["name"],
        appDescription: json["app_description"],
        stock: json["stock"],
        oldprice: json["oldprice"],
        price: json["price"],
        discount: json["discount"],
        rating: json["rating"],
        image: json["image"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "app_description": appDescription,
        "stock": stock,
        "oldprice": oldprice,
        "price": price,
        "discount": discount,
        "rating": rating,
        "image": image,
      };
}
