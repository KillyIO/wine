// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'new_chapter_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NewChapterDatabaseEventTearOff {
  const _$NewChapterDatabaseEventTearOff();

  NewChapterPageLaunched newChapterPageLaunched(
      {ChapterDraft chapterDraft, SeriesDraft seriesDraft}) {
    return NewChapterPageLaunched(
      chapterDraft: chapterDraft,
      seriesDraft: seriesDraft,
    );
  }
}

// ignore: unused_element
const $NewChapterDatabaseEvent = _$NewChapterDatabaseEventTearOff();

mixin _$NewChapterDatabaseEvent {
  ChapterDraft get chapterDraft;
  SeriesDraft get seriesDraft;

  $NewChapterDatabaseEventCopyWith<NewChapterDatabaseEvent> get copyWith;
}

abstract class $NewChapterDatabaseEventCopyWith<$Res> {
  factory $NewChapterDatabaseEventCopyWith(NewChapterDatabaseEvent value,
          $Res Function(NewChapterDatabaseEvent) then) =
      _$NewChapterDatabaseEventCopyWithImpl<$Res>;
  $Res call({ChapterDraft chapterDraft, SeriesDraft seriesDraft});
}

class _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $NewChapterDatabaseEventCopyWith<$Res> {
  _$NewChapterDatabaseEventCopyWithImpl(this._value, this._then);

  final NewChapterDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(NewChapterDatabaseEvent) _then;

  @override
  $Res call({
    Object chapterDraft = freezed,
    Object seriesDraft = freezed,
  }) {
    return _then(_value.copyWith(
      chapterDraft: chapterDraft == freezed
          ? _value.chapterDraft
          : chapterDraft as ChapterDraft,
      seriesDraft: seriesDraft == freezed
          ? _value.seriesDraft
          : seriesDraft as SeriesDraft,
    ));
  }
}

abstract class $NewChapterPageLaunchedCopyWith<$Res>
    implements $NewChapterDatabaseEventCopyWith<$Res> {
  factory $NewChapterPageLaunchedCopyWith(NewChapterPageLaunched value,
          $Res Function(NewChapterPageLaunched) then) =
      _$NewChapterPageLaunchedCopyWithImpl<$Res>;
  @override
  $Res call({ChapterDraft chapterDraft, SeriesDraft seriesDraft});
}

class _$NewChapterPageLaunchedCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $NewChapterPageLaunchedCopyWith<$Res> {
  _$NewChapterPageLaunchedCopyWithImpl(NewChapterPageLaunched _value,
      $Res Function(NewChapterPageLaunched) _then)
      : super(_value, (v) => _then(v as NewChapterPageLaunched));

  @override
  NewChapterPageLaunched get _value => super._value as NewChapterPageLaunched;

  @override
  $Res call({
    Object chapterDraft = freezed,
    Object seriesDraft = freezed,
  }) {
    return _then(NewChapterPageLaunched(
      chapterDraft: chapterDraft == freezed
          ? _value.chapterDraft
          : chapterDraft as ChapterDraft,
      seriesDraft: seriesDraft == freezed
          ? _value.seriesDraft
          : seriesDraft as SeriesDraft,
    ));
  }
}

class _$NewChapterPageLaunched implements NewChapterPageLaunched {
  const _$NewChapterPageLaunched({this.chapterDraft, this.seriesDraft});

  @override
  final ChapterDraft chapterDraft;
  @override
  final SeriesDraft seriesDraft;

  @override
  String toString() {
    return 'NewChapterDatabaseEvent.newChapterPageLaunched(chapterDraft: $chapterDraft, seriesDraft: $seriesDraft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewChapterPageLaunched &&
            (identical(other.chapterDraft, chapterDraft) ||
                const DeepCollectionEquality()
                    .equals(other.chapterDraft, chapterDraft)) &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chapterDraft) ^
      const DeepCollectionEquality().hash(seriesDraft);

  @override
  $NewChapterPageLaunchedCopyWith<NewChapterPageLaunched> get copyWith =>
      _$NewChapterPageLaunchedCopyWithImpl<NewChapterPageLaunched>(
          this, _$identity);
}

abstract class NewChapterPageLaunched implements NewChapterDatabaseEvent {
  const factory NewChapterPageLaunched(
      {ChapterDraft chapterDraft,
      SeriesDraft seriesDraft}) = _$NewChapterPageLaunched;

  @override
  ChapterDraft get chapterDraft;
  @override
  SeriesDraft get seriesDraft;
  @override
  $NewChapterPageLaunchedCopyWith<NewChapterPageLaunched> get copyWith;
}

class _$NewChapterDatabaseStateTearOff {
  const _$NewChapterDatabaseStateTearOff();

  _NewChapterPageState call(
      {@required String title, @required bool isPublishing}) {
    return _NewChapterPageState(
      title: title,
      isPublishing: isPublishing,
    );
  }
}

// ignore: unused_element
const $NewChapterDatabaseState = _$NewChapterDatabaseStateTearOff();

mixin _$NewChapterDatabaseState {
  String get title;
  bool get isPublishing;

  $NewChapterDatabaseStateCopyWith<NewChapterDatabaseState> get copyWith;
}

abstract class $NewChapterDatabaseStateCopyWith<$Res> {
  factory $NewChapterDatabaseStateCopyWith(NewChapterDatabaseState value,
          $Res Function(NewChapterDatabaseState) then) =
      _$NewChapterDatabaseStateCopyWithImpl<$Res>;
  $Res call({String title, bool isPublishing});
}

class _$NewChapterDatabaseStateCopyWithImpl<$Res>
    implements $NewChapterDatabaseStateCopyWith<$Res> {
  _$NewChapterDatabaseStateCopyWithImpl(this._value, this._then);

  final NewChapterDatabaseState _value;
  // ignore: unused_field
  final $Res Function(NewChapterDatabaseState) _then;

  @override
  $Res call({
    Object title = freezed,
    Object isPublishing = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      isPublishing:
          isPublishing == freezed ? _value.isPublishing : isPublishing as bool,
    ));
  }
}

abstract class _$NewChapterPageStateCopyWith<$Res>
    implements $NewChapterDatabaseStateCopyWith<$Res> {
  factory _$NewChapterPageStateCopyWith(_NewChapterPageState value,
          $Res Function(_NewChapterPageState) then) =
      __$NewChapterPageStateCopyWithImpl<$Res>;
  @override
  $Res call({String title, bool isPublishing});
}

class __$NewChapterPageStateCopyWithImpl<$Res>
    extends _$NewChapterDatabaseStateCopyWithImpl<$Res>
    implements _$NewChapterPageStateCopyWith<$Res> {
  __$NewChapterPageStateCopyWithImpl(
      _NewChapterPageState _value, $Res Function(_NewChapterPageState) _then)
      : super(_value, (v) => _then(v as _NewChapterPageState));

  @override
  _NewChapterPageState get _value => super._value as _NewChapterPageState;

  @override
  $Res call({
    Object title = freezed,
    Object isPublishing = freezed,
  }) {
    return _then(_NewChapterPageState(
      title: title == freezed ? _value.title : title as String,
      isPublishing:
          isPublishing == freezed ? _value.isPublishing : isPublishing as bool,
    ));
  }
}

class _$_NewChapterPageState implements _NewChapterPageState {
  const _$_NewChapterPageState(
      {@required this.title, @required this.isPublishing})
      : assert(title != null),
        assert(isPublishing != null);

  @override
  final String title;
  @override
  final bool isPublishing;

  @override
  String toString() {
    return 'NewChapterDatabaseState(title: $title, isPublishing: $isPublishing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewChapterPageState &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.isPublishing, isPublishing) ||
                const DeepCollectionEquality()
                    .equals(other.isPublishing, isPublishing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(isPublishing);

  @override
  _$NewChapterPageStateCopyWith<_NewChapterPageState> get copyWith =>
      __$NewChapterPageStateCopyWithImpl<_NewChapterPageState>(
          this, _$identity);
}

abstract class _NewChapterPageState implements NewChapterDatabaseState {
  const factory _NewChapterPageState(
      {@required String title,
      @required bool isPublishing}) = _$_NewChapterPageState;

  @override
  String get title;
  @override
  bool get isPublishing;
  @override
  _$NewChapterPageStateCopyWith<_NewChapterPageState> get copyWith;
}
