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
      Chapter previousChapter,
      BuildContext context}) {
    return NewChapterPageLaunched(
      parentType: parentType,
      chapterDraft: chapterDraft,
      seriesDraft: seriesDraft,
      previousChapter: previousChapter,
      context: context,
    );
  }

  AddCoverPressed addCoverPressed() {
    return const AddCoverPressed();
  }

  TitleChanged titleChanged(String title) {
    return TitleChanged(
      title,
    );
  }

  StoryChanged storyChanged(String story) {
    return StoryChanged(
      story,
    );
  }

  GenreSelected genreSelected(String genre) {
    return GenreSelected(
      genre,
    );
  }

  GenreOptionalSelected genreOptionalSelected(String genreOptional) {
    return GenreOptionalSelected(
      genreOptional,
    );
  }

  LanguageSelected languageSelected(String language) {
    return LanguageSelected(
      language,
    );
  }

  CopyrightsSelected copyrightsSelected(String copyrights) {
    return CopyrightsSelected(
      copyrights,
    );
  }

  IsNSFWChanged isNSFWChanged({@required bool isNSFW}) {
    return IsNSFWChanged(
      isNSFW: isNSFW,
    );
  }

  IsEndChanged isEndChanged({@required bool isEnd}) {
    return IsEndChanged(
      isEnd: isEnd,
    );
  }

  PublishButtonPressed publishButtonPressed() {
    return const PublishButtonPressed();
  }

  SaveOrBackButtonPressed saveOrBackButtonPressed() {
    return const SaveOrBackButtonPressed();
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
            Chapter previousChapter,
            BuildContext context),
    @required Result addCoverPressed(),
    @required Result titleChanged(String title),
    @required Result storyChanged(String story),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result isEndChanged(bool isEnd),
    @required Result publishButtonPressed(),
    @required Result saveOrBackButtonPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newChapterPageLaunched(
        ParentType parentType,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft,
        Chapter previousChapter,
        BuildContext context),
    Result addCoverPressed(),
    Result titleChanged(String title),
    Result storyChanged(String story),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
    Result isEndChanged(bool isEnd),
    Result publishButtonPressed(),
    Result saveOrBackButtonPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newChapterPageLaunched(NewChapterPageLaunched value),
    @required Result addCoverPressed(AddCoverPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result storyChanged(StoryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required Result isEndChanged(IsEndChanged value),
    @required Result publishButtonPressed(PublishButtonPressed value),
    @required Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newChapterPageLaunched(NewChapterPageLaunched value),
    Result addCoverPressed(AddCoverPressed value),
    Result titleChanged(TitleChanged value),
    Result storyChanged(StoryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result isEndChanged(IsEndChanged value),
    Result publishButtonPressed(PublishButtonPressed value),
    Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
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
      Chapter previousChapter,
      BuildContext context});
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
    Object previousChapter = freezed,
    Object context = freezed,
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
      previousChapter: previousChapter == freezed
          ? _value.previousChapter
          : previousChapter as Chapter,
      context: context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

class _$NewChapterPageLaunched
    with DiagnosticableTreeMixin
    implements NewChapterPageLaunched {
  const _$NewChapterPageLaunched(
      {this.parentType,
      this.chapterDraft,
      this.seriesDraft,
      this.previousChapter,
      this.context});

  @override
  final ParentType parentType;
  @override
  final ChapterDraft chapterDraft;
  @override
  final SeriesDraft seriesDraft;
  @override
  final Chapter previousChapter;
  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.newChapterPageLaunched(parentType: $parentType, chapterDraft: $chapterDraft, seriesDraft: $seriesDraft, previousChapter: $previousChapter, context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.newChapterPageLaunched'))
      ..add(DiagnosticsProperty('parentType', parentType))
      ..add(DiagnosticsProperty('chapterDraft', chapterDraft))
      ..add(DiagnosticsProperty('seriesDraft', seriesDraft))
      ..add(DiagnosticsProperty('previousChapter', previousChapter))
      ..add(DiagnosticsProperty('context', context));
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
            (identical(other.previousChapter, previousChapter) ||
                const DeepCollectionEquality()
                    .equals(other.previousChapter, previousChapter)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(parentType) ^
      const DeepCollectionEquality().hash(chapterDraft) ^
      const DeepCollectionEquality().hash(seriesDraft) ^
      const DeepCollectionEquality().hash(previousChapter) ^
      const DeepCollectionEquality().hash(context);

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
            Chapter previousChapter,
            BuildContext context),
    @required Result addCoverPressed(),
    @required Result titleChanged(String title),
    @required Result storyChanged(String story),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result isEndChanged(bool isEnd),
    @required Result publishButtonPressed(),
    @required Result saveOrBackButtonPressed(),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return newChapterPageLaunched(
        parentType, chapterDraft, seriesDraft, previousChapter, context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newChapterPageLaunched(
        ParentType parentType,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft,
        Chapter previousChapter,
        BuildContext context),
    Result addCoverPressed(),
    Result titleChanged(String title),
    Result storyChanged(String story),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
    Result isEndChanged(bool isEnd),
    Result publishButtonPressed(),
    Result saveOrBackButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newChapterPageLaunched != null) {
      return newChapterPageLaunched(
          parentType, chapterDraft, seriesDraft, previousChapter, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newChapterPageLaunched(NewChapterPageLaunched value),
    @required Result addCoverPressed(AddCoverPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result storyChanged(StoryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required Result isEndChanged(IsEndChanged value),
    @required Result publishButtonPressed(PublishButtonPressed value),
    @required Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return newChapterPageLaunched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newChapterPageLaunched(NewChapterPageLaunched value),
    Result addCoverPressed(AddCoverPressed value),
    Result titleChanged(TitleChanged value),
    Result storyChanged(StoryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result isEndChanged(IsEndChanged value),
    Result publishButtonPressed(PublishButtonPressed value),
    Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
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
      Chapter previousChapter,
      BuildContext context}) = _$NewChapterPageLaunched;

  ParentType get parentType;
  ChapterDraft get chapterDraft;
  SeriesDraft get seriesDraft;
  Chapter get previousChapter;
  BuildContext get context;
  $NewChapterPageLaunchedCopyWith<NewChapterPageLaunched> get copyWith;
}

abstract class $AddCoverPressedCopyWith<$Res> {
  factory $AddCoverPressedCopyWith(
          AddCoverPressed value, $Res Function(AddCoverPressed) then) =
      _$AddCoverPressedCopyWithImpl<$Res>;
}

class _$AddCoverPressedCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $AddCoverPressedCopyWith<$Res> {
  _$AddCoverPressedCopyWithImpl(
      AddCoverPressed _value, $Res Function(AddCoverPressed) _then)
      : super(_value, (v) => _then(v as AddCoverPressed));

  @override
  AddCoverPressed get _value => super._value as AddCoverPressed;
}

class _$AddCoverPressed
    with DiagnosticableTreeMixin
    implements AddCoverPressed {
  const _$AddCoverPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.addCoverPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.addCoverPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddCoverPressed);
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
            Chapter previousChapter,
            BuildContext context),
    @required Result addCoverPressed(),
    @required Result titleChanged(String title),
    @required Result storyChanged(String story),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result isEndChanged(bool isEnd),
    @required Result publishButtonPressed(),
    @required Result saveOrBackButtonPressed(),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return addCoverPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newChapterPageLaunched(
        ParentType parentType,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft,
        Chapter previousChapter,
        BuildContext context),
    Result addCoverPressed(),
    Result titleChanged(String title),
    Result storyChanged(String story),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
    Result isEndChanged(bool isEnd),
    Result publishButtonPressed(),
    Result saveOrBackButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addCoverPressed != null) {
      return addCoverPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newChapterPageLaunched(NewChapterPageLaunched value),
    @required Result addCoverPressed(AddCoverPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result storyChanged(StoryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required Result isEndChanged(IsEndChanged value),
    @required Result publishButtonPressed(PublishButtonPressed value),
    @required Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return addCoverPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newChapterPageLaunched(NewChapterPageLaunched value),
    Result addCoverPressed(AddCoverPressed value),
    Result titleChanged(TitleChanged value),
    Result storyChanged(StoryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result isEndChanged(IsEndChanged value),
    Result publishButtonPressed(PublishButtonPressed value),
    Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addCoverPressed != null) {
      return addCoverPressed(this);
    }
    return orElse();
  }
}

abstract class AddCoverPressed implements NewChapterDatabaseEvent {
  const factory AddCoverPressed() = _$AddCoverPressed;
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

class _$TitleChanged with DiagnosticableTreeMixin implements TitleChanged {
  const _$TitleChanged(this.title) : assert(title != null);

  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.titleChanged(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewChapterDatabaseEvent.titleChanged'))
      ..add(DiagnosticsProperty('title', title));
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
            Chapter previousChapter,
            BuildContext context),
    @required Result addCoverPressed(),
    @required Result titleChanged(String title),
    @required Result storyChanged(String story),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result isEndChanged(bool isEnd),
    @required Result publishButtonPressed(),
    @required Result saveOrBackButtonPressed(),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newChapterPageLaunched(
        ParentType parentType,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft,
        Chapter previousChapter,
        BuildContext context),
    Result addCoverPressed(),
    Result titleChanged(String title),
    Result storyChanged(String story),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
    Result isEndChanged(bool isEnd),
    Result publishButtonPressed(),
    Result saveOrBackButtonPressed(),
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
    @required Result addCoverPressed(AddCoverPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result storyChanged(StoryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required Result isEndChanged(IsEndChanged value),
    @required Result publishButtonPressed(PublishButtonPressed value),
    @required Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newChapterPageLaunched(NewChapterPageLaunched value),
    Result addCoverPressed(AddCoverPressed value),
    Result titleChanged(TitleChanged value),
    Result storyChanged(StoryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result isEndChanged(IsEndChanged value),
    Result publishButtonPressed(PublishButtonPressed value),
    Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
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

abstract class $StoryChangedCopyWith<$Res> {
  factory $StoryChangedCopyWith(
          StoryChanged value, $Res Function(StoryChanged) then) =
      _$StoryChangedCopyWithImpl<$Res>;
  $Res call({String story});
}

class _$StoryChangedCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $StoryChangedCopyWith<$Res> {
  _$StoryChangedCopyWithImpl(
      StoryChanged _value, $Res Function(StoryChanged) _then)
      : super(_value, (v) => _then(v as StoryChanged));

  @override
  StoryChanged get _value => super._value as StoryChanged;

  @override
  $Res call({
    Object story = freezed,
  }) {
    return _then(StoryChanged(
      story == freezed ? _value.story : story as String,
    ));
  }
}

class _$StoryChanged with DiagnosticableTreeMixin implements StoryChanged {
  const _$StoryChanged(this.story) : assert(story != null);

  @override
  final String story;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.storyChanged(story: $story)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewChapterDatabaseEvent.storyChanged'))
      ..add(DiagnosticsProperty('story', story));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StoryChanged &&
            (identical(other.story, story) ||
                const DeepCollectionEquality().equals(other.story, story)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(story);

  @override
  $StoryChangedCopyWith<StoryChanged> get copyWith =>
      _$StoryChangedCopyWithImpl<StoryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result newChapterPageLaunched(
            ParentType parentType,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft,
            Chapter previousChapter,
            BuildContext context),
    @required Result addCoverPressed(),
    @required Result titleChanged(String title),
    @required Result storyChanged(String story),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result isEndChanged(bool isEnd),
    @required Result publishButtonPressed(),
    @required Result saveOrBackButtonPressed(),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return storyChanged(story);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newChapterPageLaunched(
        ParentType parentType,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft,
        Chapter previousChapter,
        BuildContext context),
    Result addCoverPressed(),
    Result titleChanged(String title),
    Result storyChanged(String story),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
    Result isEndChanged(bool isEnd),
    Result publishButtonPressed(),
    Result saveOrBackButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (storyChanged != null) {
      return storyChanged(story);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newChapterPageLaunched(NewChapterPageLaunched value),
    @required Result addCoverPressed(AddCoverPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result storyChanged(StoryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required Result isEndChanged(IsEndChanged value),
    @required Result publishButtonPressed(PublishButtonPressed value),
    @required Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return storyChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newChapterPageLaunched(NewChapterPageLaunched value),
    Result addCoverPressed(AddCoverPressed value),
    Result titleChanged(TitleChanged value),
    Result storyChanged(StoryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result isEndChanged(IsEndChanged value),
    Result publishButtonPressed(PublishButtonPressed value),
    Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (storyChanged != null) {
      return storyChanged(this);
    }
    return orElse();
  }
}

abstract class StoryChanged implements NewChapterDatabaseEvent {
  const factory StoryChanged(String story) = _$StoryChanged;

  String get story;
  $StoryChangedCopyWith<StoryChanged> get copyWith;
}

abstract class $GenreSelectedCopyWith<$Res> {
  factory $GenreSelectedCopyWith(
          GenreSelected value, $Res Function(GenreSelected) then) =
      _$GenreSelectedCopyWithImpl<$Res>;
  $Res call({String genre});
}

class _$GenreSelectedCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $GenreSelectedCopyWith<$Res> {
  _$GenreSelectedCopyWithImpl(
      GenreSelected _value, $Res Function(GenreSelected) _then)
      : super(_value, (v) => _then(v as GenreSelected));

  @override
  GenreSelected get _value => super._value as GenreSelected;

  @override
  $Res call({
    Object genre = freezed,
  }) {
    return _then(GenreSelected(
      genre == freezed ? _value.genre : genre as String,
    ));
  }
}

class _$GenreSelected with DiagnosticableTreeMixin implements GenreSelected {
  const _$GenreSelected(this.genre) : assert(genre != null);

  @override
  final String genre;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.genreSelected(genre: $genre)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NewChapterDatabaseEvent.genreSelected'))
      ..add(DiagnosticsProperty('genre', genre));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GenreSelected &&
            (identical(other.genre, genre) ||
                const DeepCollectionEquality().equals(other.genre, genre)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(genre);

  @override
  $GenreSelectedCopyWith<GenreSelected> get copyWith =>
      _$GenreSelectedCopyWithImpl<GenreSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result newChapterPageLaunched(
            ParentType parentType,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft,
            Chapter previousChapter,
            BuildContext context),
    @required Result addCoverPressed(),
    @required Result titleChanged(String title),
    @required Result storyChanged(String story),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result isEndChanged(bool isEnd),
    @required Result publishButtonPressed(),
    @required Result saveOrBackButtonPressed(),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return genreSelected(genre);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newChapterPageLaunched(
        ParentType parentType,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft,
        Chapter previousChapter,
        BuildContext context),
    Result addCoverPressed(),
    Result titleChanged(String title),
    Result storyChanged(String story),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
    Result isEndChanged(bool isEnd),
    Result publishButtonPressed(),
    Result saveOrBackButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genreSelected != null) {
      return genreSelected(genre);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newChapterPageLaunched(NewChapterPageLaunched value),
    @required Result addCoverPressed(AddCoverPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result storyChanged(StoryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required Result isEndChanged(IsEndChanged value),
    @required Result publishButtonPressed(PublishButtonPressed value),
    @required Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return genreSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newChapterPageLaunched(NewChapterPageLaunched value),
    Result addCoverPressed(AddCoverPressed value),
    Result titleChanged(TitleChanged value),
    Result storyChanged(StoryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result isEndChanged(IsEndChanged value),
    Result publishButtonPressed(PublishButtonPressed value),
    Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genreSelected != null) {
      return genreSelected(this);
    }
    return orElse();
  }
}

abstract class GenreSelected implements NewChapterDatabaseEvent {
  const factory GenreSelected(String genre) = _$GenreSelected;

  String get genre;
  $GenreSelectedCopyWith<GenreSelected> get copyWith;
}

abstract class $GenreOptionalSelectedCopyWith<$Res> {
  factory $GenreOptionalSelectedCopyWith(GenreOptionalSelected value,
          $Res Function(GenreOptionalSelected) then) =
      _$GenreOptionalSelectedCopyWithImpl<$Res>;
  $Res call({String genreOptional});
}

class _$GenreOptionalSelectedCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $GenreOptionalSelectedCopyWith<$Res> {
  _$GenreOptionalSelectedCopyWithImpl(
      GenreOptionalSelected _value, $Res Function(GenreOptionalSelected) _then)
      : super(_value, (v) => _then(v as GenreOptionalSelected));

  @override
  GenreOptionalSelected get _value => super._value as GenreOptionalSelected;

  @override
  $Res call({
    Object genreOptional = freezed,
  }) {
    return _then(GenreOptionalSelected(
      genreOptional == freezed ? _value.genreOptional : genreOptional as String,
    ));
  }
}

class _$GenreOptionalSelected
    with DiagnosticableTreeMixin
    implements GenreOptionalSelected {
  const _$GenreOptionalSelected(this.genreOptional)
      : assert(genreOptional != null);

  @override
  final String genreOptional;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.genreOptionalSelected(genreOptional: $genreOptional)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.genreOptionalSelected'))
      ..add(DiagnosticsProperty('genreOptional', genreOptional));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GenreOptionalSelected &&
            (identical(other.genreOptional, genreOptional) ||
                const DeepCollectionEquality()
                    .equals(other.genreOptional, genreOptional)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(genreOptional);

  @override
  $GenreOptionalSelectedCopyWith<GenreOptionalSelected> get copyWith =>
      _$GenreOptionalSelectedCopyWithImpl<GenreOptionalSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result newChapterPageLaunched(
            ParentType parentType,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft,
            Chapter previousChapter,
            BuildContext context),
    @required Result addCoverPressed(),
    @required Result titleChanged(String title),
    @required Result storyChanged(String story),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result isEndChanged(bool isEnd),
    @required Result publishButtonPressed(),
    @required Result saveOrBackButtonPressed(),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return genreOptionalSelected(genreOptional);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newChapterPageLaunched(
        ParentType parentType,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft,
        Chapter previousChapter,
        BuildContext context),
    Result addCoverPressed(),
    Result titleChanged(String title),
    Result storyChanged(String story),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
    Result isEndChanged(bool isEnd),
    Result publishButtonPressed(),
    Result saveOrBackButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genreOptionalSelected != null) {
      return genreOptionalSelected(genreOptional);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newChapterPageLaunched(NewChapterPageLaunched value),
    @required Result addCoverPressed(AddCoverPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result storyChanged(StoryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required Result isEndChanged(IsEndChanged value),
    @required Result publishButtonPressed(PublishButtonPressed value),
    @required Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return genreOptionalSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newChapterPageLaunched(NewChapterPageLaunched value),
    Result addCoverPressed(AddCoverPressed value),
    Result titleChanged(TitleChanged value),
    Result storyChanged(StoryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result isEndChanged(IsEndChanged value),
    Result publishButtonPressed(PublishButtonPressed value),
    Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genreOptionalSelected != null) {
      return genreOptionalSelected(this);
    }
    return orElse();
  }
}

abstract class GenreOptionalSelected implements NewChapterDatabaseEvent {
  const factory GenreOptionalSelected(String genreOptional) =
      _$GenreOptionalSelected;

  String get genreOptional;
  $GenreOptionalSelectedCopyWith<GenreOptionalSelected> get copyWith;
}

abstract class $LanguageSelectedCopyWith<$Res> {
  factory $LanguageSelectedCopyWith(
          LanguageSelected value, $Res Function(LanguageSelected) then) =
      _$LanguageSelectedCopyWithImpl<$Res>;
  $Res call({String language});
}

class _$LanguageSelectedCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $LanguageSelectedCopyWith<$Res> {
  _$LanguageSelectedCopyWithImpl(
      LanguageSelected _value, $Res Function(LanguageSelected) _then)
      : super(_value, (v) => _then(v as LanguageSelected));

  @override
  LanguageSelected get _value => super._value as LanguageSelected;

  @override
  $Res call({
    Object language = freezed,
  }) {
    return _then(LanguageSelected(
      language == freezed ? _value.language : language as String,
    ));
  }
}

class _$LanguageSelected
    with DiagnosticableTreeMixin
    implements LanguageSelected {
  const _$LanguageSelected(this.language) : assert(language != null);

  @override
  final String language;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.languageSelected(language: $language)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.languageSelected'))
      ..add(DiagnosticsProperty('language', language));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LanguageSelected &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(language);

  @override
  $LanguageSelectedCopyWith<LanguageSelected> get copyWith =>
      _$LanguageSelectedCopyWithImpl<LanguageSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result newChapterPageLaunched(
            ParentType parentType,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft,
            Chapter previousChapter,
            BuildContext context),
    @required Result addCoverPressed(),
    @required Result titleChanged(String title),
    @required Result storyChanged(String story),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result isEndChanged(bool isEnd),
    @required Result publishButtonPressed(),
    @required Result saveOrBackButtonPressed(),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return languageSelected(language);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newChapterPageLaunched(
        ParentType parentType,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft,
        Chapter previousChapter,
        BuildContext context),
    Result addCoverPressed(),
    Result titleChanged(String title),
    Result storyChanged(String story),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
    Result isEndChanged(bool isEnd),
    Result publishButtonPressed(),
    Result saveOrBackButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (languageSelected != null) {
      return languageSelected(language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newChapterPageLaunched(NewChapterPageLaunched value),
    @required Result addCoverPressed(AddCoverPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result storyChanged(StoryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required Result isEndChanged(IsEndChanged value),
    @required Result publishButtonPressed(PublishButtonPressed value),
    @required Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return languageSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newChapterPageLaunched(NewChapterPageLaunched value),
    Result addCoverPressed(AddCoverPressed value),
    Result titleChanged(TitleChanged value),
    Result storyChanged(StoryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result isEndChanged(IsEndChanged value),
    Result publishButtonPressed(PublishButtonPressed value),
    Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (languageSelected != null) {
      return languageSelected(this);
    }
    return orElse();
  }
}

abstract class LanguageSelected implements NewChapterDatabaseEvent {
  const factory LanguageSelected(String language) = _$LanguageSelected;

  String get language;
  $LanguageSelectedCopyWith<LanguageSelected> get copyWith;
}

abstract class $CopyrightsSelectedCopyWith<$Res> {
  factory $CopyrightsSelectedCopyWith(
          CopyrightsSelected value, $Res Function(CopyrightsSelected) then) =
      _$CopyrightsSelectedCopyWithImpl<$Res>;
  $Res call({String copyrights});
}

class _$CopyrightsSelectedCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $CopyrightsSelectedCopyWith<$Res> {
  _$CopyrightsSelectedCopyWithImpl(
      CopyrightsSelected _value, $Res Function(CopyrightsSelected) _then)
      : super(_value, (v) => _then(v as CopyrightsSelected));

  @override
  CopyrightsSelected get _value => super._value as CopyrightsSelected;

  @override
  $Res call({
    Object copyrights = freezed,
  }) {
    return _then(CopyrightsSelected(
      copyrights == freezed ? _value.copyrights : copyrights as String,
    ));
  }
}

class _$CopyrightsSelected
    with DiagnosticableTreeMixin
    implements CopyrightsSelected {
  const _$CopyrightsSelected(this.copyrights) : assert(copyrights != null);

  @override
  final String copyrights;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.copyrightsSelected(copyrights: $copyrights)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.copyrightsSelected'))
      ..add(DiagnosticsProperty('copyrights', copyrights));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CopyrightsSelected &&
            (identical(other.copyrights, copyrights) ||
                const DeepCollectionEquality()
                    .equals(other.copyrights, copyrights)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(copyrights);

  @override
  $CopyrightsSelectedCopyWith<CopyrightsSelected> get copyWith =>
      _$CopyrightsSelectedCopyWithImpl<CopyrightsSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result newChapterPageLaunched(
            ParentType parentType,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft,
            Chapter previousChapter,
            BuildContext context),
    @required Result addCoverPressed(),
    @required Result titleChanged(String title),
    @required Result storyChanged(String story),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result isEndChanged(bool isEnd),
    @required Result publishButtonPressed(),
    @required Result saveOrBackButtonPressed(),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return copyrightsSelected(copyrights);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newChapterPageLaunched(
        ParentType parentType,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft,
        Chapter previousChapter,
        BuildContext context),
    Result addCoverPressed(),
    Result titleChanged(String title),
    Result storyChanged(String story),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
    Result isEndChanged(bool isEnd),
    Result publishButtonPressed(),
    Result saveOrBackButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (copyrightsSelected != null) {
      return copyrightsSelected(copyrights);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newChapterPageLaunched(NewChapterPageLaunched value),
    @required Result addCoverPressed(AddCoverPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result storyChanged(StoryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required Result isEndChanged(IsEndChanged value),
    @required Result publishButtonPressed(PublishButtonPressed value),
    @required Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return copyrightsSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newChapterPageLaunched(NewChapterPageLaunched value),
    Result addCoverPressed(AddCoverPressed value),
    Result titleChanged(TitleChanged value),
    Result storyChanged(StoryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result isEndChanged(IsEndChanged value),
    Result publishButtonPressed(PublishButtonPressed value),
    Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (copyrightsSelected != null) {
      return copyrightsSelected(this);
    }
    return orElse();
  }
}

abstract class CopyrightsSelected implements NewChapterDatabaseEvent {
  const factory CopyrightsSelected(String copyrights) = _$CopyrightsSelected;

  String get copyrights;
  $CopyrightsSelectedCopyWith<CopyrightsSelected> get copyWith;
}

abstract class $IsNSFWChangedCopyWith<$Res> {
  factory $IsNSFWChangedCopyWith(
          IsNSFWChanged value, $Res Function(IsNSFWChanged) then) =
      _$IsNSFWChangedCopyWithImpl<$Res>;
  $Res call({bool isNSFW});
}

class _$IsNSFWChangedCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $IsNSFWChangedCopyWith<$Res> {
  _$IsNSFWChangedCopyWithImpl(
      IsNSFWChanged _value, $Res Function(IsNSFWChanged) _then)
      : super(_value, (v) => _then(v as IsNSFWChanged));

  @override
  IsNSFWChanged get _value => super._value as IsNSFWChanged;

  @override
  $Res call({
    Object isNSFW = freezed,
  }) {
    return _then(IsNSFWChanged(
      isNSFW: isNSFW == freezed ? _value.isNSFW : isNSFW as bool,
    ));
  }
}

class _$IsNSFWChanged with DiagnosticableTreeMixin implements IsNSFWChanged {
  const _$IsNSFWChanged({@required this.isNSFW}) : assert(isNSFW != null);

  @override
  final bool isNSFW;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.isNSFWChanged(isNSFW: $isNSFW)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NewChapterDatabaseEvent.isNSFWChanged'))
      ..add(DiagnosticsProperty('isNSFW', isNSFW));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsNSFWChanged &&
            (identical(other.isNSFW, isNSFW) ||
                const DeepCollectionEquality().equals(other.isNSFW, isNSFW)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isNSFW);

  @override
  $IsNSFWChangedCopyWith<IsNSFWChanged> get copyWith =>
      _$IsNSFWChangedCopyWithImpl<IsNSFWChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result newChapterPageLaunched(
            ParentType parentType,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft,
            Chapter previousChapter,
            BuildContext context),
    @required Result addCoverPressed(),
    @required Result titleChanged(String title),
    @required Result storyChanged(String story),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result isEndChanged(bool isEnd),
    @required Result publishButtonPressed(),
    @required Result saveOrBackButtonPressed(),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return isNSFWChanged(isNSFW);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newChapterPageLaunched(
        ParentType parentType,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft,
        Chapter previousChapter,
        BuildContext context),
    Result addCoverPressed(),
    Result titleChanged(String title),
    Result storyChanged(String story),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
    Result isEndChanged(bool isEnd),
    Result publishButtonPressed(),
    Result saveOrBackButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isNSFWChanged != null) {
      return isNSFWChanged(isNSFW);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newChapterPageLaunched(NewChapterPageLaunched value),
    @required Result addCoverPressed(AddCoverPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result storyChanged(StoryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required Result isEndChanged(IsEndChanged value),
    @required Result publishButtonPressed(PublishButtonPressed value),
    @required Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return isNSFWChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newChapterPageLaunched(NewChapterPageLaunched value),
    Result addCoverPressed(AddCoverPressed value),
    Result titleChanged(TitleChanged value),
    Result storyChanged(StoryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result isEndChanged(IsEndChanged value),
    Result publishButtonPressed(PublishButtonPressed value),
    Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isNSFWChanged != null) {
      return isNSFWChanged(this);
    }
    return orElse();
  }
}

abstract class IsNSFWChanged implements NewChapterDatabaseEvent {
  const factory IsNSFWChanged({@required bool isNSFW}) = _$IsNSFWChanged;

  bool get isNSFW;
  $IsNSFWChangedCopyWith<IsNSFWChanged> get copyWith;
}

abstract class $IsEndChangedCopyWith<$Res> {
  factory $IsEndChangedCopyWith(
          IsEndChanged value, $Res Function(IsEndChanged) then) =
      _$IsEndChangedCopyWithImpl<$Res>;
  $Res call({bool isEnd});
}

class _$IsEndChangedCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $IsEndChangedCopyWith<$Res> {
  _$IsEndChangedCopyWithImpl(
      IsEndChanged _value, $Res Function(IsEndChanged) _then)
      : super(_value, (v) => _then(v as IsEndChanged));

  @override
  IsEndChanged get _value => super._value as IsEndChanged;

  @override
  $Res call({
    Object isEnd = freezed,
  }) {
    return _then(IsEndChanged(
      isEnd: isEnd == freezed ? _value.isEnd : isEnd as bool,
    ));
  }
}

class _$IsEndChanged with DiagnosticableTreeMixin implements IsEndChanged {
  const _$IsEndChanged({@required this.isEnd}) : assert(isEnd != null);

  @override
  final bool isEnd;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.isEndChanged(isEnd: $isEnd)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewChapterDatabaseEvent.isEndChanged'))
      ..add(DiagnosticsProperty('isEnd', isEnd));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsEndChanged &&
            (identical(other.isEnd, isEnd) ||
                const DeepCollectionEquality().equals(other.isEnd, isEnd)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isEnd);

  @override
  $IsEndChangedCopyWith<IsEndChanged> get copyWith =>
      _$IsEndChangedCopyWithImpl<IsEndChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result newChapterPageLaunched(
            ParentType parentType,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft,
            Chapter previousChapter,
            BuildContext context),
    @required Result addCoverPressed(),
    @required Result titleChanged(String title),
    @required Result storyChanged(String story),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result isEndChanged(bool isEnd),
    @required Result publishButtonPressed(),
    @required Result saveOrBackButtonPressed(),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return isEndChanged(isEnd);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newChapterPageLaunched(
        ParentType parentType,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft,
        Chapter previousChapter,
        BuildContext context),
    Result addCoverPressed(),
    Result titleChanged(String title),
    Result storyChanged(String story),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
    Result isEndChanged(bool isEnd),
    Result publishButtonPressed(),
    Result saveOrBackButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isEndChanged != null) {
      return isEndChanged(isEnd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newChapterPageLaunched(NewChapterPageLaunched value),
    @required Result addCoverPressed(AddCoverPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result storyChanged(StoryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required Result isEndChanged(IsEndChanged value),
    @required Result publishButtonPressed(PublishButtonPressed value),
    @required Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return isEndChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newChapterPageLaunched(NewChapterPageLaunched value),
    Result addCoverPressed(AddCoverPressed value),
    Result titleChanged(TitleChanged value),
    Result storyChanged(StoryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result isEndChanged(IsEndChanged value),
    Result publishButtonPressed(PublishButtonPressed value),
    Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isEndChanged != null) {
      return isEndChanged(this);
    }
    return orElse();
  }
}

abstract class IsEndChanged implements NewChapterDatabaseEvent {
  const factory IsEndChanged({@required bool isEnd}) = _$IsEndChanged;

  bool get isEnd;
  $IsEndChangedCopyWith<IsEndChanged> get copyWith;
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

class _$PublishButtonPressed
    with DiagnosticableTreeMixin
    implements PublishButtonPressed {
  const _$PublishButtonPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.publishButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.publishButtonPressed'));
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
            Chapter previousChapter,
            BuildContext context),
    @required Result addCoverPressed(),
    @required Result titleChanged(String title),
    @required Result storyChanged(String story),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result isEndChanged(bool isEnd),
    @required Result publishButtonPressed(),
    @required Result saveOrBackButtonPressed(),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return publishButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newChapterPageLaunched(
        ParentType parentType,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft,
        Chapter previousChapter,
        BuildContext context),
    Result addCoverPressed(),
    Result titleChanged(String title),
    Result storyChanged(String story),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
    Result isEndChanged(bool isEnd),
    Result publishButtonPressed(),
    Result saveOrBackButtonPressed(),
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
    @required Result addCoverPressed(AddCoverPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result storyChanged(StoryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required Result isEndChanged(IsEndChanged value),
    @required Result publishButtonPressed(PublishButtonPressed value),
    @required Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return publishButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newChapterPageLaunched(NewChapterPageLaunched value),
    Result addCoverPressed(AddCoverPressed value),
    Result titleChanged(TitleChanged value),
    Result storyChanged(StoryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result isEndChanged(IsEndChanged value),
    Result publishButtonPressed(PublishButtonPressed value),
    Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
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

abstract class $SaveOrBackButtonPressedCopyWith<$Res> {
  factory $SaveOrBackButtonPressedCopyWith(SaveOrBackButtonPressed value,
          $Res Function(SaveOrBackButtonPressed) then) =
      _$SaveOrBackButtonPressedCopyWithImpl<$Res>;
}

class _$SaveOrBackButtonPressedCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $SaveOrBackButtonPressedCopyWith<$Res> {
  _$SaveOrBackButtonPressedCopyWithImpl(SaveOrBackButtonPressed _value,
      $Res Function(SaveOrBackButtonPressed) _then)
      : super(_value, (v) => _then(v as SaveOrBackButtonPressed));

  @override
  SaveOrBackButtonPressed get _value => super._value as SaveOrBackButtonPressed;
}

class _$SaveOrBackButtonPressed
    with DiagnosticableTreeMixin
    implements SaveOrBackButtonPressed {
  const _$SaveOrBackButtonPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.saveOrBackButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.saveOrBackButtonPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SaveOrBackButtonPressed);
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
            Chapter previousChapter,
            BuildContext context),
    @required Result addCoverPressed(),
    @required Result titleChanged(String title),
    @required Result storyChanged(String story),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result isEndChanged(bool isEnd),
    @required Result publishButtonPressed(),
    @required Result saveOrBackButtonPressed(),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return saveOrBackButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newChapterPageLaunched(
        ParentType parentType,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft,
        Chapter previousChapter,
        BuildContext context),
    Result addCoverPressed(),
    Result titleChanged(String title),
    Result storyChanged(String story),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
    Result isEndChanged(bool isEnd),
    Result publishButtonPressed(),
    Result saveOrBackButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveOrBackButtonPressed != null) {
      return saveOrBackButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newChapterPageLaunched(NewChapterPageLaunched value),
    @required Result addCoverPressed(AddCoverPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result storyChanged(StoryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required Result isEndChanged(IsEndChanged value),
    @required Result publishButtonPressed(PublishButtonPressed value),
    @required Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
  }) {
    assert(newChapterPageLaunched != null);
    assert(addCoverPressed != null);
    assert(titleChanged != null);
    assert(storyChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    assert(isEndChanged != null);
    assert(publishButtonPressed != null);
    assert(saveOrBackButtonPressed != null);
    return saveOrBackButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newChapterPageLaunched(NewChapterPageLaunched value),
    Result addCoverPressed(AddCoverPressed value),
    Result titleChanged(TitleChanged value),
    Result storyChanged(StoryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result isEndChanged(IsEndChanged value),
    Result publishButtonPressed(PublishButtonPressed value),
    Result saveOrBackButtonPressed(SaveOrBackButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveOrBackButtonPressed != null) {
      return saveOrBackButtonPressed(this);
    }
    return orElse();
  }
}

abstract class SaveOrBackButtonPressed implements NewChapterDatabaseEvent {
  const factory SaveOrBackButtonPressed() = _$SaveOrBackButtonPressed;
}

class _$NewChapterDatabaseStateTearOff {
  const _$NewChapterDatabaseStateTearOff();

  _NewChapterPageState call(
      {@required
          ChapterDraft chapterDraft,
      @required
          bool isEditMode,
      @required
          String coverUrl,
      @required
          Title title,
      @required
          String titleStr,
      @required
          int titleWordCount,
      @required
          Story story,
      @required
          String storyStr,
      @required
          int storyWordCount,
      @required
          Genre genre,
      @required
          String genreStr,
      @required
          Genre genreOptional,
      @required
          String genreOptionalStr,
      @required
          Language language,
      @required
          String languageStr,
      @required
          Copyrights copyrights,
      @required
          String copyrightsStr,
      @required
          bool isNSFW,
      @required
          bool isEnd,
      @required
          bool isPublishingOrSaving,
      @required
          bool isPublishedOrSaved,
      @required
          bool isFirstChapter,
      @required
          Map<String, String> genresMap,
      @required
          Map<String, String> languagesMap,
      @required
          Map<String, String> copyrightsMap,
      @required
          bool showErrorMessages,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) {
    return _NewChapterPageState(
      chapterDraft: chapterDraft,
      isEditMode: isEditMode,
      coverUrl: coverUrl,
      title: title,
      titleStr: titleStr,
      titleWordCount: titleWordCount,
      story: story,
      storyStr: storyStr,
      storyWordCount: storyWordCount,
      genre: genre,
      genreStr: genreStr,
      genreOptional: genreOptional,
      genreOptionalStr: genreOptionalStr,
      language: language,
      languageStr: languageStr,
      copyrights: copyrights,
      copyrightsStr: copyrightsStr,
      isNSFW: isNSFW,
      isEnd: isEnd,
      isPublishingOrSaving: isPublishingOrSaving,
      isPublishedOrSaved: isPublishedOrSaved,
      isFirstChapter: isFirstChapter,
      genresMap: genresMap,
      languagesMap: languagesMap,
      copyrightsMap: copyrightsMap,
      showErrorMessages: showErrorMessages,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $NewChapterDatabaseState = _$NewChapterDatabaseStateTearOff();

mixin _$NewChapterDatabaseState {
  ChapterDraft get chapterDraft;
  bool get isEditMode;
  String get coverUrl;
  Title get title;
  String get titleStr;
  int get titleWordCount;
  Story get story;
  String get storyStr;
  int get storyWordCount;
  Genre get genre;
  String get genreStr;
  Genre get genreOptional;
  String get genreOptionalStr;
  Language get language;
  String get languageStr;
  Copyrights get copyrights;
  String get copyrightsStr;
  bool get isNSFW;
  bool get isEnd;
  bool get isPublishingOrSaving;
  bool get isPublishedOrSaved;
  bool get isFirstChapter;
  Map<String, String> get genresMap;
  Map<String, String> get languagesMap;
  Map<String, String> get copyrightsMap;
  bool get showErrorMessages;
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;

  $NewChapterDatabaseStateCopyWith<NewChapterDatabaseState> get copyWith;
}

abstract class $NewChapterDatabaseStateCopyWith<$Res> {
  factory $NewChapterDatabaseStateCopyWith(NewChapterDatabaseState value,
          $Res Function(NewChapterDatabaseState) then) =
      _$NewChapterDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {ChapterDraft chapterDraft,
      bool isEditMode,
      String coverUrl,
      Title title,
      String titleStr,
      int titleWordCount,
      Story story,
      String storyStr,
      int storyWordCount,
      Genre genre,
      String genreStr,
      Genre genreOptional,
      String genreOptionalStr,
      Language language,
      String languageStr,
      Copyrights copyrights,
      String copyrightsStr,
      bool isNSFW,
      bool isEnd,
      bool isPublishingOrSaving,
      bool isPublishedOrSaved,
      bool isFirstChapter,
      Map<String, String> genresMap,
      Map<String, String> languagesMap,
      Map<String, String> copyrightsMap,
      bool showErrorMessages,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption});
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
    Object isEditMode = freezed,
    Object coverUrl = freezed,
    Object title = freezed,
    Object titleStr = freezed,
    Object titleWordCount = freezed,
    Object story = freezed,
    Object storyStr = freezed,
    Object storyWordCount = freezed,
    Object genre = freezed,
    Object genreStr = freezed,
    Object genreOptional = freezed,
    Object genreOptionalStr = freezed,
    Object language = freezed,
    Object languageStr = freezed,
    Object copyrights = freezed,
    Object copyrightsStr = freezed,
    Object isNSFW = freezed,
    Object isEnd = freezed,
    Object isPublishingOrSaving = freezed,
    Object isPublishedOrSaved = freezed,
    Object isFirstChapter = freezed,
    Object genresMap = freezed,
    Object languagesMap = freezed,
    Object copyrightsMap = freezed,
    Object showErrorMessages = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      chapterDraft: chapterDraft == freezed
          ? _value.chapterDraft
          : chapterDraft as ChapterDraft,
      isEditMode:
          isEditMode == freezed ? _value.isEditMode : isEditMode as bool,
      coverUrl: coverUrl == freezed ? _value.coverUrl : coverUrl as String,
      title: title == freezed ? _value.title : title as Title,
      titleStr: titleStr == freezed ? _value.titleStr : titleStr as String,
      titleWordCount: titleWordCount == freezed
          ? _value.titleWordCount
          : titleWordCount as int,
      story: story == freezed ? _value.story : story as Story,
      storyStr: storyStr == freezed ? _value.storyStr : storyStr as String,
      storyWordCount: storyWordCount == freezed
          ? _value.storyWordCount
          : storyWordCount as int,
      genre: genre == freezed ? _value.genre : genre as Genre,
      genreStr: genreStr == freezed ? _value.genreStr : genreStr as String,
      genreOptional: genreOptional == freezed
          ? _value.genreOptional
          : genreOptional as Genre,
      genreOptionalStr: genreOptionalStr == freezed
          ? _value.genreOptionalStr
          : genreOptionalStr as String,
      language: language == freezed ? _value.language : language as Language,
      languageStr:
          languageStr == freezed ? _value.languageStr : languageStr as String,
      copyrights:
          copyrights == freezed ? _value.copyrights : copyrights as Copyrights,
      copyrightsStr: copyrightsStr == freezed
          ? _value.copyrightsStr
          : copyrightsStr as String,
      isNSFW: isNSFW == freezed ? _value.isNSFW : isNSFW as bool,
      isEnd: isEnd == freezed ? _value.isEnd : isEnd as bool,
      isPublishingOrSaving: isPublishingOrSaving == freezed
          ? _value.isPublishingOrSaving
          : isPublishingOrSaving as bool,
      isPublishedOrSaved: isPublishedOrSaved == freezed
          ? _value.isPublishedOrSaved
          : isPublishedOrSaved as bool,
      isFirstChapter: isFirstChapter == freezed
          ? _value.isFirstChapter
          : isFirstChapter as bool,
      genresMap: genresMap == freezed
          ? _value.genresMap
          : genresMap as Map<String, String>,
      languagesMap: languagesMap == freezed
          ? _value.languagesMap
          : languagesMap as Map<String, String>,
      copyrightsMap: copyrightsMap == freezed
          ? _value.copyrightsMap
          : copyrightsMap as Map<String, String>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, dynamic>>,
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
      bool isEditMode,
      String coverUrl,
      Title title,
      String titleStr,
      int titleWordCount,
      Story story,
      String storyStr,
      int storyWordCount,
      Genre genre,
      String genreStr,
      Genre genreOptional,
      String genreOptionalStr,
      Language language,
      String languageStr,
      Copyrights copyrights,
      String copyrightsStr,
      bool isNSFW,
      bool isEnd,
      bool isPublishingOrSaving,
      bool isPublishedOrSaved,
      bool isFirstChapter,
      Map<String, String> genresMap,
      Map<String, String> languagesMap,
      Map<String, String> copyrightsMap,
      bool showErrorMessages,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption});
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
    Object isEditMode = freezed,
    Object coverUrl = freezed,
    Object title = freezed,
    Object titleStr = freezed,
    Object titleWordCount = freezed,
    Object story = freezed,
    Object storyStr = freezed,
    Object storyWordCount = freezed,
    Object genre = freezed,
    Object genreStr = freezed,
    Object genreOptional = freezed,
    Object genreOptionalStr = freezed,
    Object language = freezed,
    Object languageStr = freezed,
    Object copyrights = freezed,
    Object copyrightsStr = freezed,
    Object isNSFW = freezed,
    Object isEnd = freezed,
    Object isPublishingOrSaving = freezed,
    Object isPublishedOrSaved = freezed,
    Object isFirstChapter = freezed,
    Object genresMap = freezed,
    Object languagesMap = freezed,
    Object copyrightsMap = freezed,
    Object showErrorMessages = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_NewChapterPageState(
      chapterDraft: chapterDraft == freezed
          ? _value.chapterDraft
          : chapterDraft as ChapterDraft,
      isEditMode:
          isEditMode == freezed ? _value.isEditMode : isEditMode as bool,
      coverUrl: coverUrl == freezed ? _value.coverUrl : coverUrl as String,
      title: title == freezed ? _value.title : title as Title,
      titleStr: titleStr == freezed ? _value.titleStr : titleStr as String,
      titleWordCount: titleWordCount == freezed
          ? _value.titleWordCount
          : titleWordCount as int,
      story: story == freezed ? _value.story : story as Story,
      storyStr: storyStr == freezed ? _value.storyStr : storyStr as String,
      storyWordCount: storyWordCount == freezed
          ? _value.storyWordCount
          : storyWordCount as int,
      genre: genre == freezed ? _value.genre : genre as Genre,
      genreStr: genreStr == freezed ? _value.genreStr : genreStr as String,
      genreOptional: genreOptional == freezed
          ? _value.genreOptional
          : genreOptional as Genre,
      genreOptionalStr: genreOptionalStr == freezed
          ? _value.genreOptionalStr
          : genreOptionalStr as String,
      language: language == freezed ? _value.language : language as Language,
      languageStr:
          languageStr == freezed ? _value.languageStr : languageStr as String,
      copyrights:
          copyrights == freezed ? _value.copyrights : copyrights as Copyrights,
      copyrightsStr: copyrightsStr == freezed
          ? _value.copyrightsStr
          : copyrightsStr as String,
      isNSFW: isNSFW == freezed ? _value.isNSFW : isNSFW as bool,
      isEnd: isEnd == freezed ? _value.isEnd : isEnd as bool,
      isPublishingOrSaving: isPublishingOrSaving == freezed
          ? _value.isPublishingOrSaving
          : isPublishingOrSaving as bool,
      isPublishedOrSaved: isPublishedOrSaved == freezed
          ? _value.isPublishedOrSaved
          : isPublishedOrSaved as bool,
      isFirstChapter: isFirstChapter == freezed
          ? _value.isFirstChapter
          : isFirstChapter as bool,
      genresMap: genresMap == freezed
          ? _value.genresMap
          : genresMap as Map<String, String>,
      languagesMap: languagesMap == freezed
          ? _value.languagesMap
          : languagesMap as Map<String, String>,
      copyrightsMap: copyrightsMap == freezed
          ? _value.copyrightsMap
          : copyrightsMap as Map<String, String>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, dynamic>>,
    ));
  }
}

class _$_NewChapterPageState
    with DiagnosticableTreeMixin
    implements _NewChapterPageState {
  const _$_NewChapterPageState(
      {@required this.chapterDraft,
      @required this.isEditMode,
      @required this.coverUrl,
      @required this.title,
      @required this.titleStr,
      @required this.titleWordCount,
      @required this.story,
      @required this.storyStr,
      @required this.storyWordCount,
      @required this.genre,
      @required this.genreStr,
      @required this.genreOptional,
      @required this.genreOptionalStr,
      @required this.language,
      @required this.languageStr,
      @required this.copyrights,
      @required this.copyrightsStr,
      @required this.isNSFW,
      @required this.isEnd,
      @required this.isPublishingOrSaving,
      @required this.isPublishedOrSaved,
      @required this.isFirstChapter,
      @required this.genresMap,
      @required this.languagesMap,
      @required this.copyrightsMap,
      @required this.showErrorMessages,
      @required this.databaseFailureOrSuccessOption})
      : assert(chapterDraft != null),
        assert(isEditMode != null),
        assert(coverUrl != null),
        assert(title != null),
        assert(titleStr != null),
        assert(titleWordCount != null),
        assert(story != null),
        assert(storyStr != null),
        assert(storyWordCount != null),
        assert(genre != null),
        assert(genreStr != null),
        assert(genreOptional != null),
        assert(genreOptionalStr != null),
        assert(language != null),
        assert(languageStr != null),
        assert(copyrights != null),
        assert(copyrightsStr != null),
        assert(isNSFW != null),
        assert(isEnd != null),
        assert(isPublishingOrSaving != null),
        assert(isPublishedOrSaved != null),
        assert(isFirstChapter != null),
        assert(genresMap != null),
        assert(languagesMap != null),
        assert(copyrightsMap != null),
        assert(showErrorMessages != null),
        assert(databaseFailureOrSuccessOption != null);

  @override
  final ChapterDraft chapterDraft;
  @override
  final bool isEditMode;
  @override
  final String coverUrl;
  @override
  final Title title;
  @override
  final String titleStr;
  @override
  final int titleWordCount;
  @override
  final Story story;
  @override
  final String storyStr;
  @override
  final int storyWordCount;
  @override
  final Genre genre;
  @override
  final String genreStr;
  @override
  final Genre genreOptional;
  @override
  final String genreOptionalStr;
  @override
  final Language language;
  @override
  final String languageStr;
  @override
  final Copyrights copyrights;
  @override
  final String copyrightsStr;
  @override
  final bool isNSFW;
  @override
  final bool isEnd;
  @override
  final bool isPublishingOrSaving;
  @override
  final bool isPublishedOrSaved;
  @override
  final bool isFirstChapter;
  @override
  final Map<String, String> genresMap;
  @override
  final Map<String, String> languagesMap;
  @override
  final Map<String, String> copyrightsMap;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseState(chapterDraft: $chapterDraft, isEditMode: $isEditMode, coverUrl: $coverUrl, title: $title, titleStr: $titleStr, titleWordCount: $titleWordCount, story: $story, storyStr: $storyStr, storyWordCount: $storyWordCount, genre: $genre, genreStr: $genreStr, genreOptional: $genreOptional, genreOptionalStr: $genreOptionalStr, language: $language, languageStr: $languageStr, copyrights: $copyrights, copyrightsStr: $copyrightsStr, isNSFW: $isNSFW, isEnd: $isEnd, isPublishingOrSaving: $isPublishingOrSaving, isPublishedOrSaved: $isPublishedOrSaved, isFirstChapter: $isFirstChapter, genresMap: $genresMap, languagesMap: $languagesMap, copyrightsMap: $copyrightsMap, showErrorMessages: $showErrorMessages, databaseFailureOrSuccessOption: $databaseFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewChapterDatabaseState'))
      ..add(DiagnosticsProperty('chapterDraft', chapterDraft))
      ..add(DiagnosticsProperty('isEditMode', isEditMode))
      ..add(DiagnosticsProperty('coverUrl', coverUrl))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('titleStr', titleStr))
      ..add(DiagnosticsProperty('titleWordCount', titleWordCount))
      ..add(DiagnosticsProperty('story', story))
      ..add(DiagnosticsProperty('storyStr', storyStr))
      ..add(DiagnosticsProperty('storyWordCount', storyWordCount))
      ..add(DiagnosticsProperty('genre', genre))
      ..add(DiagnosticsProperty('genreStr', genreStr))
      ..add(DiagnosticsProperty('genreOptional', genreOptional))
      ..add(DiagnosticsProperty('genreOptionalStr', genreOptionalStr))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('languageStr', languageStr))
      ..add(DiagnosticsProperty('copyrights', copyrights))
      ..add(DiagnosticsProperty('copyrightsStr', copyrightsStr))
      ..add(DiagnosticsProperty('isNSFW', isNSFW))
      ..add(DiagnosticsProperty('isEnd', isEnd))
      ..add(DiagnosticsProperty('isPublishingOrSaving', isPublishingOrSaving))
      ..add(DiagnosticsProperty('isPublishedOrSaved', isPublishedOrSaved))
      ..add(DiagnosticsProperty('isFirstChapter', isFirstChapter))
      ..add(DiagnosticsProperty('genresMap', genresMap))
      ..add(DiagnosticsProperty('languagesMap', languagesMap))
      ..add(DiagnosticsProperty('copyrightsMap', copyrightsMap))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty(
          'databaseFailureOrSuccessOption', databaseFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewChapterPageState &&
            (identical(other.chapterDraft, chapterDraft) ||
                const DeepCollectionEquality()
                    .equals(other.chapterDraft, chapterDraft)) &&
            (identical(other.isEditMode, isEditMode) ||
                const DeepCollectionEquality()
                    .equals(other.isEditMode, isEditMode)) &&
            (identical(other.coverUrl, coverUrl) ||
                const DeepCollectionEquality()
                    .equals(other.coverUrl, coverUrl)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.titleStr, titleStr) ||
                const DeepCollectionEquality()
                    .equals(other.titleStr, titleStr)) &&
            (identical(other.titleWordCount, titleWordCount) ||
                const DeepCollectionEquality()
                    .equals(other.titleWordCount, titleWordCount)) &&
            (identical(other.story, story) ||
                const DeepCollectionEquality().equals(other.story, story)) &&
            (identical(other.storyStr, storyStr) ||
                const DeepCollectionEquality()
                    .equals(other.storyStr, storyStr)) &&
            (identical(other.storyWordCount, storyWordCount) ||
                const DeepCollectionEquality()
                    .equals(other.storyWordCount, storyWordCount)) &&
            (identical(other.genre, genre) ||
                const DeepCollectionEquality().equals(other.genre, genre)) &&
            (identical(other.genreStr, genreStr) ||
                const DeepCollectionEquality()
                    .equals(other.genreStr, genreStr)) &&
            (identical(other.genreOptional, genreOptional) ||
                const DeepCollectionEquality()
                    .equals(other.genreOptional, genreOptional)) &&
            (identical(other.genreOptionalStr, genreOptionalStr) ||
                const DeepCollectionEquality()
                    .equals(other.genreOptionalStr, genreOptionalStr)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.languageStr, languageStr) ||
                const DeepCollectionEquality()
                    .equals(other.languageStr, languageStr)) &&
            (identical(other.copyrights, copyrights) ||
                const DeepCollectionEquality()
                    .equals(other.copyrights, copyrights)) &&
            (identical(other.copyrightsStr, copyrightsStr) ||
                const DeepCollectionEquality()
                    .equals(other.copyrightsStr, copyrightsStr)) &&
            (identical(other.isNSFW, isNSFW) ||
                const DeepCollectionEquality().equals(other.isNSFW, isNSFW)) &&
            (identical(other.isEnd, isEnd) ||
                const DeepCollectionEquality().equals(other.isEnd, isEnd)) &&
            (identical(other.isPublishingOrSaving, isPublishingOrSaving) ||
                const DeepCollectionEquality().equals(
                    other.isPublishingOrSaving, isPublishingOrSaving)) &&
            (identical(other.isPublishedOrSaved, isPublishedOrSaved) ||
                const DeepCollectionEquality()
                    .equals(other.isPublishedOrSaved, isPublishedOrSaved)) &&
            (identical(other.isFirstChapter, isFirstChapter) ||
                const DeepCollectionEquality()
                    .equals(other.isFirstChapter, isFirstChapter)) &&
            (identical(other.genresMap, genresMap) ||
                const DeepCollectionEquality()
                    .equals(other.genresMap, genresMap)) &&
            (identical(other.languagesMap, languagesMap) ||
                const DeepCollectionEquality()
                    .equals(other.languagesMap, languagesMap)) &&
            (identical(other.copyrightsMap, copyrightsMap) || const DeepCollectionEquality().equals(other.copyrightsMap, copyrightsMap)) &&
            (identical(other.showErrorMessages, showErrorMessages) || const DeepCollectionEquality().equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.databaseFailureOrSuccessOption, databaseFailureOrSuccessOption) || const DeepCollectionEquality().equals(other.databaseFailureOrSuccessOption, databaseFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chapterDraft) ^
      const DeepCollectionEquality().hash(isEditMode) ^
      const DeepCollectionEquality().hash(coverUrl) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(titleStr) ^
      const DeepCollectionEquality().hash(titleWordCount) ^
      const DeepCollectionEquality().hash(story) ^
      const DeepCollectionEquality().hash(storyStr) ^
      const DeepCollectionEquality().hash(storyWordCount) ^
      const DeepCollectionEquality().hash(genre) ^
      const DeepCollectionEquality().hash(genreStr) ^
      const DeepCollectionEquality().hash(genreOptional) ^
      const DeepCollectionEquality().hash(genreOptionalStr) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(languageStr) ^
      const DeepCollectionEquality().hash(copyrights) ^
      const DeepCollectionEquality().hash(copyrightsStr) ^
      const DeepCollectionEquality().hash(isNSFW) ^
      const DeepCollectionEquality().hash(isEnd) ^
      const DeepCollectionEquality().hash(isPublishingOrSaving) ^
      const DeepCollectionEquality().hash(isPublishedOrSaved) ^
      const DeepCollectionEquality().hash(isFirstChapter) ^
      const DeepCollectionEquality().hash(genresMap) ^
      const DeepCollectionEquality().hash(languagesMap) ^
      const DeepCollectionEquality().hash(copyrightsMap) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(databaseFailureOrSuccessOption);

  @override
  _$NewChapterPageStateCopyWith<_NewChapterPageState> get copyWith =>
      __$NewChapterPageStateCopyWithImpl<_NewChapterPageState>(
          this, _$identity);
}

abstract class _NewChapterPageState implements NewChapterDatabaseState {
  const factory _NewChapterPageState(
      {@required
          ChapterDraft chapterDraft,
      @required
          bool isEditMode,
      @required
          String coverUrl,
      @required
          Title title,
      @required
          String titleStr,
      @required
          int titleWordCount,
      @required
          Story story,
      @required
          String storyStr,
      @required
          int storyWordCount,
      @required
          Genre genre,
      @required
          String genreStr,
      @required
          Genre genreOptional,
      @required
          String genreOptionalStr,
      @required
          Language language,
      @required
          String languageStr,
      @required
          Copyrights copyrights,
      @required
          String copyrightsStr,
      @required
          bool isNSFW,
      @required
          bool isEnd,
      @required
          bool isPublishingOrSaving,
      @required
          bool isPublishedOrSaved,
      @required
          bool isFirstChapter,
      @required
          Map<String, String> genresMap,
      @required
          Map<String, String> languagesMap,
      @required
          Map<String, String> copyrightsMap,
      @required
          bool showErrorMessages,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) = _$_NewChapterPageState;

  @override
  ChapterDraft get chapterDraft;
  @override
  bool get isEditMode;
  @override
  String get coverUrl;
  @override
  Title get title;
  @override
  String get titleStr;
  @override
  int get titleWordCount;
  @override
  Story get story;
  @override
  String get storyStr;
  @override
  int get storyWordCount;
  @override
  Genre get genre;
  @override
  String get genreStr;
  @override
  Genre get genreOptional;
  @override
  String get genreOptionalStr;
  @override
  Language get language;
  @override
  String get languageStr;
  @override
  Copyrights get copyrights;
  @override
  String get copyrightsStr;
  @override
  bool get isNSFW;
  @override
  bool get isEnd;
  @override
  bool get isPublishingOrSaving;
  @override
  bool get isPublishedOrSaved;
  @override
  bool get isFirstChapter;
  @override
  Map<String, String> get genresMap;
  @override
  Map<String, String> get languagesMap;
  @override
  Map<String, String> get copyrightsMap;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;
  @override
  _$NewChapterPageStateCopyWith<_NewChapterPageState> get copyWith;
}
