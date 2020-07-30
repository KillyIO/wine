// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_draft.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SeriesDraftAdapter extends TypeAdapter<SeriesDraft> {
  @override
  final int typeId = 2;

  @override
  SeriesDraft read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SeriesDraft(
      uid: fields[0] as String,
      authorUid: fields[1] as String,
      title: fields[2] as String,
      subtitle: fields[3] as String,
      summary: fields[4] as String,
      genre: fields[5] as String,
      genreOptional: fields[6] as String,
      language: fields[7] as String,
      isNSFW: fields[8] as bool,
      coverUrl: fields[9] as String,
      authorUsername: fields[10] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SeriesDraft obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.uid)
      ..writeByte(1)
      ..write(obj.authorUid)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.subtitle)
      ..writeByte(4)
      ..write(obj.summary)
      ..writeByte(5)
      ..write(obj.genre)
      ..writeByte(6)
      ..write(obj.genreOptional)
      ..writeByte(7)
      ..write(obj.language)
      ..writeByte(8)
      ..write(obj.isNSFW)
      ..writeByte(9)
      ..write(obj.coverUrl)
      ..writeByte(10)
      ..write(obj.authorUsername);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SeriesDraftAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
