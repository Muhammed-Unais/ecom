import 'package:hive_flutter/hive_flutter.dart';
part 'my_bag_model.g.dart';

@HiveType(typeId: 2)
class MyBagItemModel {
  
  @HiveField(0)
  String name;
  @HiveField(1)
  String stock;
  @HiveField(2)
  String oldprice;
  @HiveField(3)
  String price;
  @HiveField(4)
  String discount;
  @HiveField(5)
  String image;
  @HiveField(6)
  int quntitiy;

  MyBagItemModel({
    required this.name,
    required this.stock,
    required this.oldprice,
    required this.price,
    required this.discount,
    required this.image,
    required this.quntitiy,
  });

  MyBagItemModel copyWith({
    String? name,
    String? stock,
    String? oldprice,
    String? price,
    String? discount,
    String? image,
    int? quantity,
  }) =>
      MyBagItemModel(
        name: name ?? this.name,
        stock: stock ?? this.stock,
        oldprice: oldprice ?? this.oldprice,
        price: price ?? this.price,
        discount: discount ?? this.discount,
        image: image ?? this.image,
        quntitiy: quantity ?? this.quntitiy,
      );
}
