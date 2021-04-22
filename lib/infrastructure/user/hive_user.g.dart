// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveUserAdapter extends TypeAdapter<HiveUser> {
  @override
  final int typeId = 0;

  @override
  HiveUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveUser(
      emailAddress: fields[0] as String,
      uid: fields[1] as String,
      username: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HiveUser obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.emailAddress)
      ..writeByte(1)
      ..write(obj.uid)
      ..writeByte(2)
      ..write(obj.username);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveUserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
