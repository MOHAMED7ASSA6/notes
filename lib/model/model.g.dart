// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NetworkNoteAdapter extends TypeAdapter<NetworkNote> {
  @override
  final int typeId = 0;

  @override
  NetworkNote read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NetworkNote(
      Color: fields[3] as int,
      title: fields[0] as String,
      subtitle: fields[1] as String,
      data: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, NetworkNote obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.subtitle)
      ..writeByte(2)
      ..write(obj.data)
      ..writeByte(3)
      ..write(obj.Color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NetworkNoteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
