// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_draft.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SeriesDraftAdapter extends TypeAdapter<SeriesDraft> {
  @override
  final typeId = 2;

  @override
  SeriesDraft read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SeriesDraft(
      uid: fields[0] as String,
      authorUid: fields[1] as String,
      title: fields[2] as String,
      subtitle: fields[3] as String,
      description: fields[4] as String,
      genre: fields[5] as String,
      genreOptional: fields[6] as String,
      language: fields[7] as String,
      copyrights: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SeriesDraft obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.uid)
      ..writeByte(1)
      ..write(obj.authorUid)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.subtitle)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.genre)
      ..writeByte(6)
      ..write(obj.genreOptional)
      ..writeByte(7)
      ..write(obj.language)
      ..writeByte(8)
      ..write(obj.copyrights);
  }
}
