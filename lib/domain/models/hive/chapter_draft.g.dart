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
      seriesUid: fields[1] as String,
      previousChapterUid: fields[2] as String,
      authorUid: fields[3] as String,
      title: fields[4] as String,
      content: fields[5] as String,
      index: fields[6] as int,
      language: fields[7] as String,
      isNSFW: fields[8] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ChapterDraft obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.uid)
      ..writeByte(1)
      ..write(obj.seriesUid)
      ..writeByte(2)
      ..write(obj.previousChapterUid)
      ..writeByte(3)
      ..write(obj.authorUid)
      ..writeByte(4)
      ..write(obj.title)
      ..writeByte(5)
      ..write(obj.content)
      ..writeByte(6)
      ..write(obj.index)
      ..writeByte(7)
      ..write(obj.language)
      ..writeByte(8)
      ..write(obj.isNSFW);
  }
}
