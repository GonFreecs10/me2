// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_breakfast.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BreakFastModelAdapter extends TypeAdapter<BreakFastModel> {
  @override
  final int typeId = 1;

  @override
  BreakFastModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BreakFastModel(
      id: fields[0] as String,
      name: fields[1] as String,
      isDeleted: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, BreakFastModel obj) {
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
      other is BreakFastModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
