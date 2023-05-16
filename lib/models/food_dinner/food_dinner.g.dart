// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_dinner.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DinnerModelAdapter extends TypeAdapter<DinnerModel> {
  @override
  final int typeId = 1;

  @override
  DinnerModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DinnerModel(
      id: fields[0] as String,
      name: fields[1] as String,
      isDeleted: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, DinnerModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.isDeleted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DinnerModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
