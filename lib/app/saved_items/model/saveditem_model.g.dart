// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saveditem_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SavedItemModelAdapter extends TypeAdapter<SavedItemModel> {
  @override
  final int typeId = 1;

  @override
  SavedItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SavedItemModel(
      name: fields[0] as String,
      appDescription: fields[1] as String,
      stock: fields[2] as String,
      oldprice: fields[3] as String,
      price: fields[4] as String,
      discount: fields[5] as String,
      rating: fields[6] as String,
      image: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SavedItemModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.appDescription)
      ..writeByte(2)
      ..write(obj.stock)
      ..writeByte(3)
      ..write(obj.oldprice)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.discount)
      ..writeByte(6)
      ..write(obj.rating)
      ..writeByte(7)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SavedItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
