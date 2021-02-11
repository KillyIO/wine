// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ConfigAdapter extends TypeAdapter<Config> {
  @override
  final int typeId = 1;

  @override
  Config read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Config(
      enableChaptersBookmarksCount: fields[0] as bool,
      enableChaptersLikesCount: fields[1] as bool,
      enableChaptersViewsCount: fields[2] as bool,
      enableSeriesBookmarksCount: fields[3] as bool,
      enableSeriesLikesCount: fields[4] as bool,
      enableSeriesViewsCount: fields[5] as bool,
      firstRun: fields[6] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Config obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.enableChaptersBookmarksCount)
      ..writeByte(1)
      ..write(obj.enableChaptersLikesCount)
      ..writeByte(2)
      ..write(obj.enableChaptersViewsCount)
      ..writeByte(3)
      ..write(obj.enableSeriesBookmarksCount)
      ..writeByte(4)
      ..write(obj.enableSeriesLikesCount)
      ..writeByte(5)
      ..write(obj.enableSeriesViewsCount)
      ..writeByte(6)
      ..write(obj.firstRun);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConfigAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
