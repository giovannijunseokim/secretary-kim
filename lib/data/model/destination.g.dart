// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DestinationAdapter extends TypeAdapter<Destination> {
  @override
  final int typeId = 0;

  @override
  Destination read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Destination(
      name: fields[0] as String,
      belongings: (fields[1] as List).cast<Belonging>(),
    );
  }

  @override
  void write(BinaryWriter writer, Destination obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.belongings);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DestinationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
