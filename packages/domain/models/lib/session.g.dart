// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SessionAdapter extends TypeAdapter<Session> {
  @override
  final int typeId = 0;

  @override
  Session read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Session(
      isBanned: fields[0] as bool,
      isDeleted: fields[1] as bool,
      banDeadline: fields[2] as int,
      createdAt: fields[3] as int,
      updatedAt: fields[4] as int,
      banReason: fields[5] as String,
      bio: fields[6] as String,
      deletionReason: fields[7] as String,
      email: fields[8] as String,
      name: fields[9] as String,
      profilePictureURL: fields[10] as String,
      uid: fields[11] as String,
      username: fields[12] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Session obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.isBanned)
      ..writeByte(1)
      ..write(obj.isDeleted)
      ..writeByte(2)
      ..write(obj.banDeadline)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.updatedAt)
      ..writeByte(5)
      ..write(obj.banReason)
      ..writeByte(6)
      ..write(obj.bio)
      ..writeByte(7)
      ..write(obj.deletionReason)
      ..writeByte(8)
      ..write(obj.email)
      ..writeByte(9)
      ..write(obj.name)
      ..writeByte(10)
      ..write(obj.profilePictureURL)
      ..writeByte(11)
      ..write(obj.uid)
      ..writeByte(12)
      ..write(obj.username);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SessionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
