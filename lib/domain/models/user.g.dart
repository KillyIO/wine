// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 0;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      isBanned: fields[0] as bool,
      isDeleted: fields[1] as bool,
      banDeadline: fields[2] as int,
      createdAt: fields[3] as int,
      updatedAt: fields[4] as int,
      banReason: fields[5] as String,
      deletionReason: fields[6] as String,
      email: fields[7] as String,
      name: fields[8] as String,
      profilePictureURL: fields[9] as String,
      uid: fields[10] as String,
      username: fields[11] as String,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(12)
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
      ..write(obj.deletionReason)
      ..writeByte(7)
      ..write(obj.email)
      ..writeByte(8)
      ..write(obj.name)
      ..writeByte(9)
      ..write(obj.profilePictureURL)
      ..writeByte(10)
      ..write(obj.uid)
      ..writeByte(11)
      ..write(obj.username);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
