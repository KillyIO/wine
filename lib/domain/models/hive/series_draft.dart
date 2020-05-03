import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

@HiveType(typeId: 2)
class SeriesDraft extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  String description;

  @HiveField(2)
  String genre;

  @HiveField(3)
  List<String> characters;

  @HiveField(4)
  String language;

  @HiveField(5)
  String copyrights;

  SeriesDraft({
    this.title,
    this.description,
    this.genre,
    this.characters,
    this.language,
    this.copyrights,
  });

  SeriesDraft copyWith({
    String title,
    String description,
    String genre,
    List<String> characters,
    String language,
    String copyrights,
  }) {
    return SeriesDraft(
      title: title ?? this.title,
      description: description ?? this.description,
      genre: genre ?? this.genre,
      characters: characters ?? this.characters,
      language: language ?? this.language,
      copyrights: copyrights ?? this.copyrights,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'genre': genre,
      'characters': characters,
      'language': language,
      'copyrights': copyrights,
    };
  }

  factory SeriesDraft.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return SeriesDraft(
      title: map['title'] as String,
      description: map['description'] as String,
      genre: map['genre'] as String,
      characters: List<String>.from(map['characters'] as List<String>),
      language: map['language'] as String,
      copyrights: map['copyrights'] as String,
    );
  }

  @override
  String toString() {
    return 'SeriesDraft(title: $title, description: $description, genre: $genre, characters: $characters, language: $language, copyrights: $copyrights)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is SeriesDraft &&
        o.title == title &&
        o.description == description &&
        o.genre == genre &&
        listEquals(o.characters, characters) &&
        o.language == language &&
        o.copyrights == copyrights;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        description.hashCode ^
        genre.hashCode ^
        characters.hashCode ^
        language.hashCode ^
        copyrights.hashCode;
  }
}
