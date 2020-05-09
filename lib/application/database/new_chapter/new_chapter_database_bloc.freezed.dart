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
      {ParentType parentType,
      ChapterDraft chapterDraft,
      SeriesDraft seriesDraft,
      String previousChapterUid,
      int previousChapterIndex}) {
    return NewChapterPageLaunched(
      parentType: parentType,
      chapterDraft: chapterDraft,
      seriesDraft: seriesDraft,
      previousChapterUid: previousChapterUid,
      previousChapterIndex: previousChapterIndex,
    );
  }

  TitleChanged titleChanged(String title) {
    return TitleChanged(
      title,
    );
  }

  ContentChanged contentChanged(String content) {
    return ContentChanged(
      content,
    );
  }

  PublishButtonPressed publishButtonPressed() {
    return const PublishButtonPressed();
  }

  SaveButtonPressed saveButtonPressed() {
    return const SaveButtonPressed();
  }
}

// ignore: unused_element
const $NewChapterDatabaseEvent = _$NewChapterDatabaseEventTearOff();

mixin _$NewChapterDatabaseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result newChapterPageLaunched(
            ParentType parentType,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft,
            String previousChapterUid,
            int previousChapterIndex),
    @required Result titleChanged(String title),
    @required Result contentChanged(String content),
    @required Result publishButtonPressed(),
    @required Result saveButtonPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newChapterPageLaunched(
        ParentType parentType,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft,
        String previousChapterUid,
        int previousChapterIndex),
    Result titleChanged(String title),
    Result contentChanged(String content),
    Result publishButtonPressed(),
    Result saveButtonPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newChapterPageLaunched(NewChapterPageLaunched value),
    @required Result titleChanged(TitleChanged value),
    @required Result contentChanged(ContentChanged value),
    @required Result publishButtonPressed(PublishButtonPressed value),
    @required Result saveButtonPressed(SaveButtonPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newChapterPageLaunched(NewChapterPageLaunched value),
    Result titleChanged(TitleChanged value),
    Result contentChanged(ContentChanged value),
    Result publishButtonPressed(PublishButtonPressed value),
    Result saveButtonPressed(SaveButtonPressed value),
    @required Result orElse(),
  });
}

abstract class $NewChapterDatabaseEventCopyWith<$Res> {
  factory $NewChapterDatabaseEventCopyWith(NewChapterDatabaseEvent value,
          $Res Function(NewChapterDatabaseEvent) then) =
      _$NewChapterDatabaseEventCopyWithImpl<$Res>;
}

class _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $NewChapterDatabaseEventCopyWith<$Res> {
  _$NewChapterDatabaseEventCopyWithImpl(this._value, this._then);

  final NewChapterDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(NewChapterDatabaseEvent) _then;
}

abstract class $NewChapterPageLaunchedCopyWith<$Res> {
  factory $NewChapterPageLaunchedCopyWith(NewChapterPageLaunched value,
          $Res Function(NewChapterPageLaunched) then) =
      _$NewChapterPageLaunchedCopyWithImpl<$Res>;
  $Res call(
      {ParentType parentType,
      ChapterDraft chapterDraft,
      SeriesDraft seriesDraft,
      String previousChapterUid,
      int previousChapterIndex});
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
    Object parentType = freezed,
    Object chapterDraft = freezed,
    Object seriesDraft = freezed,
    Object previousChapterUid = freezed,
    Object previousChapterIndex = freezed,
  }) {
    return _then(NewChapterPageLaunched(
      parentType:
          parentType == freezed ? _value.parentType : parentType as ParentType,
      chapterDraft: chapterDraft == freezed
          ? _value.chapterDraft
          : chapterDraft as ChapterDraft,
      seriesDraft: seriesDraft == freezed
          ? _value.seriesDraft
          : seriesDraft as SeriesDraft,
      previousChapterUid: previousChapterUid == freezed
          ? _value.previousChapterUid
          : previousChapterUid as String,
      previousChapterIndex: previousChapterIndex == freezed
          ? _value.previousChapterIndex
          : previousChapterIndex as int,
    ));
  }
}

class _$NewChapterPageLaunched implements NewChapterPageLaunched {
  const _$NewChapterPageLaunched(
      {this.parentType,
      this.chapterDraft,
      this.seriesDraft,
      this.previousChapterUid,
      this.previousChapterIndex});

  @override
  final ParentType parentType;
  @override
  final ChapterDraft chapterDraft;
  @override
  final SeriesDraft seriesDraft;
  @override
  final String previousChapterUid;
  @override
  final int previousChapterIndex;

  @override
  String toString() {
    return 'NewChapterDatabaseEvent.newChapterPageLaunched(parentType: $parentType, chapterDraft: $chapterDraft, seriesDraft: $seriesDraft, previousChapterUid: $previousChapterUid, previousChapterIndex: $previousChapterIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewChapterPageLaunched &&
            (identical(other.parentType, parentType) ||
                const DeepCollectionEquality()
                    .equals(other.parentType, parentType)) &&
            (identical(other.chapterDraft, chapterDraft) ||
                const DeepCollectionEquality()
                    .equals(other.chapterDraft, chapterDraft)) &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)) &&
            (identical(other.previousChapterUid, previousChapterUid) ||
                const DeepCollectionEquality()
                    .equals(other.previousChapterUid, previousChapterUid)) &&
            (identical(other.previousChapterIndex, previousChapterIndex) ||
                const DeepCollectionEquality()
                    .equals(other.previousChapterIndex, previousChapterIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(parentType) ^
      const DeepCollectionEquality().hash(chapterDraft) ^
      const DeepCollectionEquality().hash(seriesDraft) ^
      const DeepCollectionEquality().hash(previousChapterUid) ^
      const DeepCollectionEquality().hash(previousChapterIndex);

  @override
  $NewChapterPageLaunchedCopyWith<NewChapterPageLaunched> get copyWith =>
      _$NewChapterPageLaunchedCopyWithImpl<NewChapterPageLaunched>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result newChapterPageLaunched(
            ParentType parentType,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft,
            String previousChapterUid,
            int previousChapterIndex),
    @required Result titleChanged(String title),
    @required Result contentChanged(String content),
    @required Result publishButtonPressed(),
    @required Result saveButtonPressed(),
  }) {
    assert(newChapterPageLaunched != null);
    assert(titleChanged != null);
    assert(contentChanged != null);
    assert(publishButtonPressed != null);
    assert(saveButtonPressed != null);
    return newChapterPageLaunched(parentType, chapterDraft, seriesDraft,
        previousChapterUid, previousChapterIndex);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newChapterPageLaunched(
        ParentType parentType,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft,
        String previousChapterUid,
        int previousChapterIndex),
    Result titleChanged(String title),
    Result contentChanged(String content),
    Result publishButtonPressed(),
    Result saveButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newChapterPageLaunched != null) {
      return newChapterPageLaunched(parentType, chapterDraft, seriesDraft,
          previousChapterUid, previousChapterIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newChapterPageLaunched(NewChapterPageLaunched value),
    @required Result titleChanged(TitleChanged value),
    @required Result contentChanged(ContentChanged value),
    @required Result publishButtonPressed(PublishButtonPressed value),
    @required Result saveButtonPressed(SaveButtonPressed value),
  }) {
    assert(newChapterPageLaunched != null);
    assert(titleChanged != null);
    assert(contentChanged != null);
    assert(publishButtonPressed != null);
    assert(saveButtonPressed != null);
    return newChapterPageLaunched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newChapterPageLaunched(NewChapterPageLaunched value),
    Result titleChanged(TitleChanged value),
    Result contentChanged(ContentChanged value),
    Result publishButtonPressed(PublishButtonPressed value),
    Result saveButtonPressed(SaveButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newChapterPageLaunched != null) {
      return newChapterPageLaunched(this);
    }
    return orElse();
  }
}

abstract class NewChapterPageLaunched implements NewChapterDatabaseEvent {
  const factory NewChapterPageLaunched(
      {ParentType parentType,
      ChapterDraft chapterDraft,
      SeriesDraft seriesDraft,
      String previousChapterUid,
      int previousChapterIndex}) = _$NewChapterPageLaunched;

  ParentType get parentType;
  ChapterDraft get chapterDraft;
  SeriesDraft get seriesDraft;
  String get previousChapterUid;
  int get previousChapterIndex;
  $NewChapterPageLaunchedCopyWith<NewChapterPageLaunched> get copyWith;
}

abstract class $TitleChangedCopyWith<$Res> {
  factory $TitleChangedCopyWith(
          TitleChanged value, $Res Function(TitleChanged) then) =
      _$TitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

class _$TitleChangedCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $TitleChangedCopyWith<$Res> {
  _$TitleChangedCopyWithImpl(
      TitleChanged _value, $Res Function(TitleChanged) _then)
      : super(_value, (v) => _then(v as TitleChanged));

  @override
  TitleChanged get _value => super._value as TitleChanged;

  @override
  $Res call({
    Object title = freezed,
  }) {
    return _then(TitleChanged(
      title == freezed ? _value.title : title as String,
    ));
  }
}

class _$TitleChanged implements TitleChanged {
  const _$TitleChanged(this.title) : assert(title != null);

  @override
  final String title;

  @override
  String toString() {
    return 'NewChapterDatabaseEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TitleChanged &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @override
  $TitleChangedCopyWith<TitleChanged> get copyWith =>
      _$TitleChangedCopyWithImpl<TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result newChapterPageLaunched(
            ParentType parentType,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft,
            String previousChapterUid,
            int previousChapterIndex),
    @required Result titleChanged(String title),
    @required Result contentChanged(String content),
    @required Result publishButtonPressed(),
    @required Result saveButtonPressed(),
  }) {
    assert(newChapterPageLaunched != null);
    assert(titleChanged != null);
    assert(contentChanged != null);
    assert(publishButtonPressed != null);
    assert(saveButtonPressed != null);
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newChapterPageLaunched(
        ParentType parentType,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft,
        String previousChapterUid,
        int previousChapterIndex),
    Result titleChanged(String title),
    Result contentChanged(String content),
    Result publishButtonPressed(),
    Result saveButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newChapterPageLaunched(NewChapterPageLaunched value),
    @required Result titleChanged(TitleChanged value),
    @required Result contentChanged(ContentChanged value),
    @required Result publishButtonPressed(PublishButtonPressed value),
    @required Result saveButtonPressed(SaveButtonPressed value),
  }) {
    assert(newChapterPageLaunched != null);
    assert(titleChanged != null);
    assert(contentChanged != null);
    assert(publishButtonPressed != null);
    assert(saveButtonPressed != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newChapterPageLaunched(NewChapterPageLaunched value),
    Result titleChanged(TitleChanged value),
    Result contentChanged(ContentChanged value),
    Result publishButtonPressed(PublishButtonPressed value),
    Result saveButtonPressed(SaveButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class TitleChanged implements NewChapterDatabaseEvent {
  const factory TitleChanged(String title) = _$TitleChanged;

  String get title;
  $TitleChangedCopyWith<TitleChanged> get copyWith;
}

abstract class $ContentChangedCopyWith<$Res> {
  factory $ContentChangedCopyWith(
          ContentChanged value, $Res Function(ContentChanged) then) =
      _$ContentChangedCopyWithImpl<$Res>;
  $Res call({String content});
}

class _$ContentChangedCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $ContentChangedCopyWith<$Res> {
  _$ContentChangedCopyWithImpl(
      ContentChanged _value, $Res Function(ContentChanged) _then)
      : super(_value, (v) => _then(v as ContentChanged));

  @override
  ContentChanged get _value => super._value as ContentChanged;

  @override
  $Res call({
    Object content = freezed,
  }) {
    return _then(ContentChanged(
      content == freezed ? _value.content : content as String,
    ));
  }
}

class _$ContentChanged implements ContentChanged {
  const _$ContentChanged(this.content) : assert(content != null);

  @override
  final String content;

  @override
  String toString() {
    return 'NewChapterDatabaseEvent.contentChanged(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ContentChanged &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(content);

  @override
  $ContentChangedCopyWith<ContentChanged> get copyWith =>
      _$ContentChangedCopyWithImpl<ContentChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result newChapterPageLaunched(
            ParentType parentType,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft,
            String previousChapterUid,
            int previousChapterIndex),
    @required Result titleChanged(String title),
    @required Result contentChanged(String content),
    @required Result publishButtonPressed(),
    @required Result saveButtonPressed(),
  }) {
    assert(newChapterPageLaunched != null);
    assert(titleChanged != null);
    assert(contentChanged != null);
    assert(publishButtonPressed != null);
    assert(saveButtonPressed != null);
    return contentChanged(content);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newChapterPageLaunched(
        ParentType parentType,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft,
        String previousChapterUid,
        int previousChapterIndex),
    Result titleChanged(String title),
    Result contentChanged(String content),
    Result publishButtonPressed(),
    Result saveButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (contentChanged != null) {
      return contentChanged(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newChapterPageLaunched(NewChapterPageLaunched value),
    @required Result titleChanged(TitleChanged value),
    @required Result contentChanged(ContentChanged value),
    @required Result publishButtonPressed(PublishButtonPressed value),
    @required Result saveButtonPressed(SaveButtonPressed value),
  }) {
    assert(newChapterPageLaunched != null);
    assert(titleChanged != null);
    assert(contentChanged != null);
    assert(publishButtonPressed != null);
    assert(saveButtonPressed != null);
    return contentChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newChapterPageLaunched(NewChapterPageLaunched value),
    Result titleChanged(TitleChanged value),
    Result contentChanged(ContentChanged value),
    Result publishButtonPressed(PublishButtonPressed value),
    Result saveButtonPressed(SaveButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (contentChanged != null) {
      return contentChanged(this);
    }
    return orElse();
  }
}

abstract class ContentChanged implements NewChapterDatabaseEvent {
  const factory ContentChanged(String content) = _$ContentChanged;

  String get content;
  $ContentChangedCopyWith<ContentChanged> get copyWith;
}

abstract class $PublishButtonPressedCopyWith<$Res> {
  factory $PublishButtonPressedCopyWith(PublishButtonPressed value,
          $Res Function(PublishButtonPressed) then) =
      _$PublishButtonPressedCopyWithImpl<$Res>;
}

class _$PublishButtonPressedCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $PublishButtonPressedCopyWith<$Res> {
  _$PublishButtonPressedCopyWithImpl(
      PublishButtonPressed _value, $Res Function(PublishButtonPressed) _then)
      : super(_value, (v) => _then(v as PublishButtonPressed));

  @override
  PublishButtonPressed get _value => super._value as PublishButtonPressed;
}

class _$PublishButtonPressed implements PublishButtonPressed {
  const _$PublishButtonPressed();

  @override
  String toString() {
    return 'NewChapterDatabaseEvent.publishButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PublishButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result newChapterPageLaunched(
            ParentType parentType,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft,
            String previousChapterUid,
            int previousChapterIndex),
    @required Result titleChanged(String title),
    @required Result contentChanged(String content),
    @required Result publishButtonPressed(),
    @required Result saveButtonPressed(),
  }) {
    assert(newChapterPageLaunched != null);
    assert(titleChanged != null);
    assert(contentChanged != null);
    assert(publishButtonPressed != null);
    assert(saveButtonPressed != null);
    return publishButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newChapterPageLaunched(
        ParentType parentType,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft,
        String previousChapterUid,
        int previousChapterIndex),
    Result titleChanged(String title),
    Result contentChanged(String content),
    Result publishButtonPressed(),
    Result saveButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (publishButtonPressed != null) {
      return publishButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newChapterPageLaunched(NewChapterPageLaunched value),
    @required Result titleChanged(TitleChanged value),
    @required Result contentChanged(ContentChanged value),
    @required Result publishButtonPressed(PublishButtonPressed value),
    @required Result saveButtonPressed(SaveButtonPressed value),
  }) {
    assert(newChapterPageLaunched != null);
    assert(titleChanged != null);
    assert(contentChanged != null);
    assert(publishButtonPressed != null);
    assert(saveButtonPressed != null);
    return publishButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newChapterPageLaunched(NewChapterPageLaunched value),
    Result titleChanged(TitleChanged value),
    Result contentChanged(ContentChanged value),
    Result publishButtonPressed(PublishButtonPressed value),
    Result saveButtonPressed(SaveButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (publishButtonPressed != null) {
      return publishButtonPressed(this);
    }
    return orElse();
  }
}

abstract class PublishButtonPressed implements NewChapterDatabaseEvent {
  const factory PublishButtonPressed() = _$PublishButtonPressed;
}

abstract class $SaveButtonPressedCopyWith<$Res> {
  factory $SaveButtonPressedCopyWith(
          SaveButtonPressed value, $Res Function(SaveButtonPressed) then) =
      _$SaveButtonPressedCopyWithImpl<$Res>;
}

class _$SaveButtonPressedCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $SaveButtonPressedCopyWith<$Res> {
  _$SaveButtonPressedCopyWithImpl(
      SaveButtonPressed _value, $Res Function(SaveButtonPressed) _then)
      : super(_value, (v) => _then(v as SaveButtonPressed));

  @override
  SaveButtonPressed get _value => super._value as SaveButtonPressed;
}

class _$SaveButtonPressed implements SaveButtonPressed {
  const _$SaveButtonPressed();

  @override
  String toString() {
    return 'NewChapterDatabaseEvent.saveButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SaveButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result newChapterPageLaunched(
            ParentType parentType,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft,
            String previousChapterUid,
            int previousChapterIndex),
    @required Result titleChanged(String title),
    @required Result contentChanged(String content),
    @required Result publishButtonPressed(),
    @required Result saveButtonPressed(),
  }) {
    assert(newChapterPageLaunched != null);
    assert(titleChanged != null);
    assert(contentChanged != null);
    assert(publishButtonPressed != null);
    assert(saveButtonPressed != null);
    return saveButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newChapterPageLaunched(
        ParentType parentType,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft,
        String previousChapterUid,
        int previousChapterIndex),
    Result titleChanged(String title),
    Result contentChanged(String content),
    Result publishButtonPressed(),
    Result saveButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveButtonPressed != null) {
      return saveButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newChapterPageLaunched(NewChapterPageLaunched value),
    @required Result titleChanged(TitleChanged value),
    @required Result contentChanged(ContentChanged value),
    @required Result publishButtonPressed(PublishButtonPressed value),
    @required Result saveButtonPressed(SaveButtonPressed value),
  }) {
    assert(newChapterPageLaunched != null);
    assert(titleChanged != null);
    assert(contentChanged != null);
    assert(publishButtonPressed != null);
    assert(saveButtonPressed != null);
    return saveButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newChapterPageLaunched(NewChapterPageLaunched value),
    Result titleChanged(TitleChanged value),
    Result contentChanged(ContentChanged value),
    Result publishButtonPressed(PublishButtonPressed value),
    Result saveButtonPressed(SaveButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveButtonPressed != null) {
      return saveButtonPressed(this);
    }
    return orElse();
  }
}

abstract class SaveButtonPressed implements NewChapterDatabaseEvent {
  const factory SaveButtonPressed() = _$SaveButtonPressed;
}

class _$NewChapterDatabaseStateTearOff {
  const _$NewChapterDatabaseStateTearOff();

  _NewChapterPageState call(
      {@required ChapterDraft chapterDraft,
      @required Title title,
      @required int titleWordCount,
      @required int contentWordCount,
      @required bool isPublishingOrSaving}) {
    return _NewChapterPageState(
      chapterDraft: chapterDraft,
      title: title,
      titleWordCount: titleWordCount,
      contentWordCount: contentWordCount,
      isPublishingOrSaving: isPublishingOrSaving,
    );
  }
}

// ignore: unused_element
const $NewChapterDatabaseState = _$NewChapterDatabaseStateTearOff();

mixin _$NewChapterDatabaseState {
  ChapterDraft get chapterDraft;
  Title get title;
  int get titleWordCount;
  int get contentWordCount;
  bool get isPublishingOrSaving;

  $NewChapterDatabaseStateCopyWith<NewChapterDatabaseState> get copyWith;
}

abstract class $NewChapterDatabaseStateCopyWith<$Res> {
  factory $NewChapterDatabaseStateCopyWith(NewChapterDatabaseState value,
          $Res Function(NewChapterDatabaseState) then) =
      _$NewChapterDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {ChapterDraft chapterDraft,
      Title title,
      int titleWordCount,
      int contentWordCount,
      bool isPublishingOrSaving});
}

class _$NewChapterDatabaseStateCopyWithImpl<$Res>
    implements $NewChapterDatabaseStateCopyWith<$Res> {
  _$NewChapterDatabaseStateCopyWithImpl(this._value, this._then);

  final NewChapterDatabaseState _value;
  // ignore: unused_field
  final $Res Function(NewChapterDatabaseState) _then;

  @override
  $Res call({
    Object chapterDraft = freezed,
    Object title = freezed,
    Object titleWordCount = freezed,
    Object contentWordCount = freezed,
    Object isPublishingOrSaving = freezed,
  }) {
    return _then(_value.copyWith(
      chapterDraft: chapterDraft == freezed
          ? _value.chapterDraft
          : chapterDraft as ChapterDraft,
      title: title == freezed ? _value.title : title as Title,
      titleWordCount: titleWordCount == freezed
          ? _value.titleWordCount
          : titleWordCount as int,
      contentWordCount: contentWordCount == freezed
          ? _value.contentWordCount
          : contentWordCount as int,
      isPublishingOrSaving: isPublishingOrSaving == freezed
          ? _value.isPublishingOrSaving
          : isPublishingOrSaving as bool,
    ));
  }
}

abstract class _$NewChapterPageStateCopyWith<$Res>
    implements $NewChapterDatabaseStateCopyWith<$Res> {
  factory _$NewChapterPageStateCopyWith(_NewChapterPageState value,
          $Res Function(_NewChapterPageState) then) =
      __$NewChapterPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ChapterDraft chapterDraft,
      Title title,
      int titleWordCount,
      int contentWordCount,
      bool isPublishingOrSaving});
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
    Object chapterDraft = freezed,
    Object title = freezed,
    Object titleWordCount = freezed,
    Object contentWordCount = freezed,
    Object isPublishingOrSaving = freezed,
  }) {
    return _then(_NewChapterPageState(
      chapterDraft: chapterDraft == freezed
          ? _value.chapterDraft
          : chapterDraft as ChapterDraft,
      title: title == freezed ? _value.title : title as Title,
      titleWordCount: titleWordCount == freezed
          ? _value.titleWordCount
          : titleWordCount as int,
      contentWordCount: contentWordCount == freezed
          ? _value.contentWordCount
          : contentWordCount as int,
      isPublishingOrSaving: isPublishingOrSaving == freezed
          ? _value.isPublishingOrSaving
          : isPublishingOrSaving as bool,
    ));
  }
}

class _$_NewChapterPageState implements _NewChapterPageState {
  const _$_NewChapterPageState(
      {@required this.chapterDraft,
      @required this.title,
      @required this.titleWordCount,
      @required this.contentWordCount,
      @required this.isPublishingOrSaving})
      : assert(chapterDraft != null),
        assert(title != null),
        assert(titleWordCount != null),
        assert(contentWordCount != null),
        assert(isPublishingOrSaving != null);

  @override
  final ChapterDraft chapterDraft;
  @override
  final Title title;
  @override
  final int titleWordCount;
  @override
  final int contentWordCount;
  @override
  final bool isPublishingOrSaving;

  @override
  String toString() {
    return 'NewChapterDatabaseState(chapterDraft: $chapterDraft, title: $title, titleWordCount: $titleWordCount, contentWordCount: $contentWordCount, isPublishingOrSaving: $isPublishingOrSaving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewChapterPageState &&
            (identical(other.chapterDraft, chapterDraft) ||
                const DeepCollectionEquality()
                    .equals(other.chapterDraft, chapterDraft)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.titleWordCount, titleWordCount) ||
                const DeepCollectionEquality()
                    .equals(other.titleWordCount, titleWordCount)) &&
            (identical(other.contentWordCount, contentWordCount) ||
                const DeepCollectionEquality()
                    .equals(other.contentWordCount, contentWordCount)) &&
            (identical(other.isPublishingOrSaving, isPublishingOrSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isPublishingOrSaving, isPublishingOrSaving)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chapterDraft) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(titleWordCount) ^
      const DeepCollectionEquality().hash(contentWordCount) ^
      const DeepCollectionEquality().hash(isPublishingOrSaving);

  @override
  _$NewChapterPageStateCopyWith<_NewChapterPageState> get copyWith =>
      __$NewChapterPageStateCopyWithImpl<_NewChapterPageState>(
          this, _$identity);
}

abstract class _NewChapterPageState implements NewChapterDatabaseState {
  const factory _NewChapterPageState(
      {@required ChapterDraft chapterDraft,
      @required Title title,
      @required int titleWordCount,
      @required int contentWordCount,
      @required bool isPublishingOrSaving}) = _$_NewChapterPageState;

  @override
  ChapterDraft get chapterDraft;
  @override
  Title get title;
  @override
  int get titleWordCount;
  @override
  int get contentWordCount;
  @override
  bool get isPublishingOrSaving;
  @override
  _$NewChapterPageStateCopyWith<_NewChapterPageState> get copyWith;
}
