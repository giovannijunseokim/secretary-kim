// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'belonging.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BelongingAdapter extends TypeAdapter<Belonging> {
  @override
  final int typeId = 1;

  @override
  Belonging read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Belonging(
      name: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Belonging obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BelongingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
