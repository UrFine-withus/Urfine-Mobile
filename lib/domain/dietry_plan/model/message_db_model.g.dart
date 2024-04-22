// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_db_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MessageDBModelAdapter extends TypeAdapter<MessageDBModel> {
  @override
  final int typeId = 1;

  @override
  MessageDBModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MessageDBModel(
      id: fields[0] as String,
      message: fields[1] as String,
      sender: fields[2] as String,
      timestamp: fields[3] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, MessageDBModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.message)
      ..writeByte(2)
      ..write(obj.sender)
      ..writeByte(3)
      ..write(obj.timestamp);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MessageDBModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
