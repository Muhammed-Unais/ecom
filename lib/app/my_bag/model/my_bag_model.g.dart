// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_bag_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MyBagItemModelAdapter extends TypeAdapter<MyBagItemModel> {
  @override
  final int typeId = 2;

  @override
  MyBagItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MyBagItemModel(
      name: fields[0] as String,
      stock: fields[1] as String,
      oldprice: fields[2] as String,
      price: fields[3] as String,
      discount: fields[4] as String,
      image: fields[5] as String,
      quntitiy: fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, MyBagItemModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.stock)
      ..writeByte(2)
      ..write(obj.oldprice)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.discount)
      ..writeByte(5)
      ..write(obj.image)
      ..writeByte(6)
      ..write(obj.quntitiy);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyBagItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
