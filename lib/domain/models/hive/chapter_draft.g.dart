// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_draft.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChapterDraftAdapter extends TypeAdapter<ChapterDraft> {
  @override
  final typeId = 3;

  @override
  ChapterDraft read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChapterDraft(
      uid: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ChapterDraft obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.uid);
  }
}
