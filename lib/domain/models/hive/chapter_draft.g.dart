// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_draft.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChapterDraftAdapter extends TypeAdapter<ChapterDraft> {
  @override
  final int typeId = 3;

  @override
  ChapterDraft read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChapterDraft(
      uid: fields[0] as String,
      seriesUid: fields[1] as String,
      previousChapterUid: fields[2] as String,
      authorUid: fields[3] as String,
      title: fields[4] as String,
      story: fields[5] as String,
      index: fields[6] as int,
      language: fields[7] as String,
      copyrights: fields[8] as String,
      isNSFW: fields[9] as bool,
      isEnd: fields[10] as bool,
      genre: fields[11] as String,
      genreOptional: fields[12] as String,
      coverUrl: fields[13] as String,
      authorUsername: fields[14] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ChapterDraft obj) {
    writer
      ..writeByte(15)
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
      ..write(obj.story)
      ..writeByte(6)
      ..write(obj.index)
      ..writeByte(7)
      ..write(obj.language)
      ..writeByte(8)
      ..write(obj.copyrights)
      ..writeByte(9)
      ..write(obj.isNSFW)
      ..writeByte(10)
      ..write(obj.isEnd)
      ..writeByte(11)
      ..write(obj.genre)
      ..writeByte(12)
      ..write(obj.genreOptional)
      ..writeByte(13)
      ..write(obj.coverUrl)
      ..writeByte(14)
      ..write(obj.authorUsername);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChapterDraftAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
