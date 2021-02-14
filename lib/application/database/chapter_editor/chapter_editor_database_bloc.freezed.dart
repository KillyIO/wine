// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'chapter_editor_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChapterEditorDatabaseEventTearOff {
  const _$ChapterEditorDatabaseEventTearOff();

// ignore: unused_element
  AddCoverPressedEvent addCoverPressedEvent() {
    return const AddCoverPressedEvent();
  }

// ignore: unused_element
  ChapterDraftDeletedOrPublishedEvent chapterDraftDeletedOrPublishedEvent() {
    return const ChapterDraftDeletedOrPublishedEvent();
  }

// ignore: unused_element
  ChapterPublishedEvent chapterPublishedEvent() {
    return const ChapterPublishedEvent();
  }

// ignore: unused_element
  DeleteDraftButtonPressedEvent deleteDraftButtonPressedEvent() {
    return const DeleteDraftButtonPressedEvent();
  }

// ignore: unused_element
  GenreOptionalSelectedEvent genreOptionalSelectedEvent(String genreOptional) {
    return GenreOptionalSelectedEvent(
      genreOptional,
    );
  }

// ignore: unused_element
  GenreSelectedEvent genreSelectedEvent(String genre) {
    return GenreSelectedEvent(
      genre,
    );
  }

// ignore: unused_element
  InitializedWithPreviousChapterOrSeriesDraftEvent
      initializedWithPreviousChapterOrSeriesDraftEvent() {
    return const InitializedWithPreviousChapterOrSeriesDraftEvent();
  }

// ignore: unused_element
  IsLastChapterChangedEvent isLastChapterChangedEvent(
      {@required bool isLastChapter}) {
    return IsLastChapterChangedEvent(
      isLastChapter: isLastChapter,
    );
  }

// ignore: unused_element
  IsNSFWChangedEvent isNSFWChangedEvent({@required bool isNSFW}) {
    return IsNSFWChangedEvent(
      isNSFW: isNSFW,
    );
  }

// ignore: unused_element
  LanguageSelectedEvent languageSelectedEvent(String language) {
    return LanguageSelectedEvent(
      language,
    );
  }

// ignore: unused_element
  LaunchedFromLibraryEvent launchedFromLibraryEvent(BuildContext context,
      Chapter chapterDraft, EditorContentOrigin editorContentOrigin) {
    return LaunchedFromLibraryEvent(
      context,
      chapterDraft,
      editorContentOrigin,
    );
  }

// ignore: unused_element
  LaunchedFromPreviousChapterEvent launchedFromPreviousChapterEvent(
      BuildContext context,
      Chapter previousChapter,
      EditorContentOrigin editorContentOrigin) {
    return LaunchedFromPreviousChapterEvent(
      context,
      previousChapter,
      editorContentOrigin,
    );
  }

// ignore: unused_element
  LaunchedFromSeriesEditorEvent launchedFromSeriesEditorEvent(
      BuildContext context,
      EditorContentOrigin editorContentOrigin,
      Series seriesDraft) {
    return LaunchedFromSeriesEditorEvent(
      context,
      editorContentOrigin,
      seriesDraft,
    );
  }

// ignore: unused_element
  LicenceSelectedEvent licenceSelectedEvent(String licence) {
    return LicenceSelectedEvent(
      licence,
    );
  }

// ignore: unused_element
  PublishButtonPressedEvent publishButtonPressedEvent() {
    return const PublishButtonPressedEvent();
  }

// ignore: unused_element
  SaveOrBackButtonPressedEvent saveOrBackButtonPressedEvent() {
    return const SaveOrBackButtonPressedEvent();
  }

// ignore: unused_element
  SeriesDraftLoadedEvent seriesDraftLoadedEvent(Series seriesDraft) {
    return SeriesDraftLoadedEvent(
      seriesDraft,
    );
  }

// ignore: unused_element
  SeriesPublishedEvent seriesPublishedEvent(String seriesDraftUID) {
    return SeriesPublishedEvent(
      seriesDraftUID,
    );
  }

// ignore: unused_element
  SessionFetchedEvent sessionFetchedEvent() {
    return const SessionFetchedEvent();
  }

// ignore: unused_element
  StoryChangedEvent storyChangedEvent(String story) {
    return StoryChangedEvent(
      story,
    );
  }

// ignore: unused_element
  TitleChangedEvent titleChangedEvent(String title) {
    return TitleChangedEvent(
      title,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChapterEditorDatabaseEvent = _$ChapterEditorDatabaseEventTearOff();

/// @nodoc
mixin _$ChapterEditorDatabaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ChapterEditorDatabaseEventCopyWith<$Res> {
  factory $ChapterEditorDatabaseEventCopyWith(ChapterEditorDatabaseEvent value,
          $Res Function(ChapterEditorDatabaseEvent) then) =
      _$ChapterEditorDatabaseEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $ChapterEditorDatabaseEventCopyWith<$Res> {
  _$ChapterEditorDatabaseEventCopyWithImpl(this._value, this._then);

  final ChapterEditorDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(ChapterEditorDatabaseEvent) _then;
}

/// @nodoc
abstract class $AddCoverPressedEventCopyWith<$Res> {
  factory $AddCoverPressedEventCopyWith(AddCoverPressedEvent value,
          $Res Function(AddCoverPressedEvent) then) =
      _$AddCoverPressedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddCoverPressedEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $AddCoverPressedEventCopyWith<$Res> {
  _$AddCoverPressedEventCopyWithImpl(
      AddCoverPressedEvent _value, $Res Function(AddCoverPressedEvent) _then)
      : super(_value, (v) => _then(v as AddCoverPressedEvent));

  @override
  AddCoverPressedEvent get _value => super._value as AddCoverPressedEvent;
}

/// @nodoc
class _$AddCoverPressedEvent
    with DiagnosticableTreeMixin
    implements AddCoverPressedEvent {
  const _$AddCoverPressedEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.addCoverPressedEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterEditorDatabaseEvent.addCoverPressedEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddCoverPressedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return addCoverPressedEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addCoverPressedEvent != null) {
      return addCoverPressedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return addCoverPressedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addCoverPressedEvent != null) {
      return addCoverPressedEvent(this);
    }
    return orElse();
  }
}

abstract class AddCoverPressedEvent implements ChapterEditorDatabaseEvent {
  const factory AddCoverPressedEvent() = _$AddCoverPressedEvent;
}

/// @nodoc
abstract class $ChapterDraftDeletedOrPublishedEventCopyWith<$Res> {
  factory $ChapterDraftDeletedOrPublishedEventCopyWith(
          ChapterDraftDeletedOrPublishedEvent value,
          $Res Function(ChapterDraftDeletedOrPublishedEvent) then) =
      _$ChapterDraftDeletedOrPublishedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChapterDraftDeletedOrPublishedEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $ChapterDraftDeletedOrPublishedEventCopyWith<$Res> {
  _$ChapterDraftDeletedOrPublishedEventCopyWithImpl(
      ChapterDraftDeletedOrPublishedEvent _value,
      $Res Function(ChapterDraftDeletedOrPublishedEvent) _then)
      : super(_value, (v) => _then(v as ChapterDraftDeletedOrPublishedEvent));

  @override
  ChapterDraftDeletedOrPublishedEvent get _value =>
      super._value as ChapterDraftDeletedOrPublishedEvent;
}

/// @nodoc
class _$ChapterDraftDeletedOrPublishedEvent
    with DiagnosticableTreeMixin
    implements ChapterDraftDeletedOrPublishedEvent {
  const _$ChapterDraftDeletedOrPublishedEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.chapterDraftDeletedOrPublishedEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type',
          'ChapterEditorDatabaseEvent.chapterDraftDeletedOrPublishedEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterDraftDeletedOrPublishedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return chapterDraftDeletedOrPublishedEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftDeletedOrPublishedEvent != null) {
      return chapterDraftDeletedOrPublishedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return chapterDraftDeletedOrPublishedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftDeletedOrPublishedEvent != null) {
      return chapterDraftDeletedOrPublishedEvent(this);
    }
    return orElse();
  }
}

abstract class ChapterDraftDeletedOrPublishedEvent
    implements ChapterEditorDatabaseEvent {
  const factory ChapterDraftDeletedOrPublishedEvent() =
      _$ChapterDraftDeletedOrPublishedEvent;
}

/// @nodoc
abstract class $ChapterPublishedEventCopyWith<$Res> {
  factory $ChapterPublishedEventCopyWith(ChapterPublishedEvent value,
          $Res Function(ChapterPublishedEvent) then) =
      _$ChapterPublishedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChapterPublishedEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $ChapterPublishedEventCopyWith<$Res> {
  _$ChapterPublishedEventCopyWithImpl(
      ChapterPublishedEvent _value, $Res Function(ChapterPublishedEvent) _then)
      : super(_value, (v) => _then(v as ChapterPublishedEvent));

  @override
  ChapterPublishedEvent get _value => super._value as ChapterPublishedEvent;
}

/// @nodoc
class _$ChapterPublishedEvent
    with DiagnosticableTreeMixin
    implements ChapterPublishedEvent {
  const _$ChapterPublishedEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.chapterPublishedEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterEditorDatabaseEvent.chapterPublishedEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChapterPublishedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return chapterPublishedEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedEvent != null) {
      return chapterPublishedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return chapterPublishedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedEvent != null) {
      return chapterPublishedEvent(this);
    }
    return orElse();
  }
}

abstract class ChapterPublishedEvent implements ChapterEditorDatabaseEvent {
  const factory ChapterPublishedEvent() = _$ChapterPublishedEvent;
}

/// @nodoc
abstract class $DeleteDraftButtonPressedEventCopyWith<$Res> {
  factory $DeleteDraftButtonPressedEventCopyWith(
          DeleteDraftButtonPressedEvent value,
          $Res Function(DeleteDraftButtonPressedEvent) then) =
      _$DeleteDraftButtonPressedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteDraftButtonPressedEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $DeleteDraftButtonPressedEventCopyWith<$Res> {
  _$DeleteDraftButtonPressedEventCopyWithImpl(
      DeleteDraftButtonPressedEvent _value,
      $Res Function(DeleteDraftButtonPressedEvent) _then)
      : super(_value, (v) => _then(v as DeleteDraftButtonPressedEvent));

  @override
  DeleteDraftButtonPressedEvent get _value =>
      super._value as DeleteDraftButtonPressedEvent;
}

/// @nodoc
class _$DeleteDraftButtonPressedEvent
    with DiagnosticableTreeMixin
    implements DeleteDraftButtonPressedEvent {
  const _$DeleteDraftButtonPressedEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.deleteDraftButtonPressedEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterEditorDatabaseEvent.deleteDraftButtonPressedEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteDraftButtonPressedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return deleteDraftButtonPressedEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteDraftButtonPressedEvent != null) {
      return deleteDraftButtonPressedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return deleteDraftButtonPressedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteDraftButtonPressedEvent != null) {
      return deleteDraftButtonPressedEvent(this);
    }
    return orElse();
  }
}

abstract class DeleteDraftButtonPressedEvent
    implements ChapterEditorDatabaseEvent {
  const factory DeleteDraftButtonPressedEvent() =
      _$DeleteDraftButtonPressedEvent;
}

/// @nodoc
abstract class $GenreOptionalSelectedEventCopyWith<$Res> {
  factory $GenreOptionalSelectedEventCopyWith(GenreOptionalSelectedEvent value,
          $Res Function(GenreOptionalSelectedEvent) then) =
      _$GenreOptionalSelectedEventCopyWithImpl<$Res>;
  $Res call({String genreOptional});
}

/// @nodoc
class _$GenreOptionalSelectedEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $GenreOptionalSelectedEventCopyWith<$Res> {
  _$GenreOptionalSelectedEventCopyWithImpl(GenreOptionalSelectedEvent _value,
      $Res Function(GenreOptionalSelectedEvent) _then)
      : super(_value, (v) => _then(v as GenreOptionalSelectedEvent));

  @override
  GenreOptionalSelectedEvent get _value =>
      super._value as GenreOptionalSelectedEvent;

  @override
  $Res call({
    Object genreOptional = freezed,
  }) {
    return _then(GenreOptionalSelectedEvent(
      genreOptional == freezed ? _value.genreOptional : genreOptional as String,
    ));
  }
}

/// @nodoc
class _$GenreOptionalSelectedEvent
    with DiagnosticableTreeMixin
    implements GenreOptionalSelectedEvent {
  const _$GenreOptionalSelectedEvent(this.genreOptional)
      : assert(genreOptional != null);

  @override
  final String genreOptional;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.genreOptionalSelectedEvent(genreOptional: $genreOptional)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterEditorDatabaseEvent.genreOptionalSelectedEvent'))
      ..add(DiagnosticsProperty('genreOptional', genreOptional));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GenreOptionalSelectedEvent &&
            (identical(other.genreOptional, genreOptional) ||
                const DeepCollectionEquality()
                    .equals(other.genreOptional, genreOptional)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(genreOptional);

  @JsonKey(ignore: true)
  @override
  $GenreOptionalSelectedEventCopyWith<GenreOptionalSelectedEvent>
      get copyWith =>
          _$GenreOptionalSelectedEventCopyWithImpl<GenreOptionalSelectedEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return genreOptionalSelectedEvent(genreOptional);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (genreOptionalSelectedEvent != null) {
      return genreOptionalSelectedEvent(genreOptional);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return genreOptionalSelectedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (genreOptionalSelectedEvent != null) {
      return genreOptionalSelectedEvent(this);
    }
    return orElse();
  }
}

abstract class GenreOptionalSelectedEvent
    implements ChapterEditorDatabaseEvent {
  const factory GenreOptionalSelectedEvent(String genreOptional) =
      _$GenreOptionalSelectedEvent;

  String get genreOptional;
  @JsonKey(ignore: true)
  $GenreOptionalSelectedEventCopyWith<GenreOptionalSelectedEvent> get copyWith;
}

/// @nodoc
abstract class $GenreSelectedEventCopyWith<$Res> {
  factory $GenreSelectedEventCopyWith(
          GenreSelectedEvent value, $Res Function(GenreSelectedEvent) then) =
      _$GenreSelectedEventCopyWithImpl<$Res>;
  $Res call({String genre});
}

/// @nodoc
class _$GenreSelectedEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $GenreSelectedEventCopyWith<$Res> {
  _$GenreSelectedEventCopyWithImpl(
      GenreSelectedEvent _value, $Res Function(GenreSelectedEvent) _then)
      : super(_value, (v) => _then(v as GenreSelectedEvent));

  @override
  GenreSelectedEvent get _value => super._value as GenreSelectedEvent;

  @override
  $Res call({
    Object genre = freezed,
  }) {
    return _then(GenreSelectedEvent(
      genre == freezed ? _value.genre : genre as String,
    ));
  }
}

/// @nodoc
class _$GenreSelectedEvent
    with DiagnosticableTreeMixin
    implements GenreSelectedEvent {
  const _$GenreSelectedEvent(this.genre) : assert(genre != null);

  @override
  final String genre;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.genreSelectedEvent(genre: $genre)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterEditorDatabaseEvent.genreSelectedEvent'))
      ..add(DiagnosticsProperty('genre', genre));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GenreSelectedEvent &&
            (identical(other.genre, genre) ||
                const DeepCollectionEquality().equals(other.genre, genre)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(genre);

  @JsonKey(ignore: true)
  @override
  $GenreSelectedEventCopyWith<GenreSelectedEvent> get copyWith =>
      _$GenreSelectedEventCopyWithImpl<GenreSelectedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return genreSelectedEvent(genre);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (genreSelectedEvent != null) {
      return genreSelectedEvent(genre);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return genreSelectedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (genreSelectedEvent != null) {
      return genreSelectedEvent(this);
    }
    return orElse();
  }
}

abstract class GenreSelectedEvent implements ChapterEditorDatabaseEvent {
  const factory GenreSelectedEvent(String genre) = _$GenreSelectedEvent;

  String get genre;
  @JsonKey(ignore: true)
  $GenreSelectedEventCopyWith<GenreSelectedEvent> get copyWith;
}

/// @nodoc
abstract class $InitializedWithPreviousChapterOrSeriesDraftEventCopyWith<$Res> {
  factory $InitializedWithPreviousChapterOrSeriesDraftEventCopyWith(
          InitializedWithPreviousChapterOrSeriesDraftEvent value,
          $Res Function(InitializedWithPreviousChapterOrSeriesDraftEvent)
              then) =
      _$InitializedWithPreviousChapterOrSeriesDraftEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializedWithPreviousChapterOrSeriesDraftEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $InitializedWithPreviousChapterOrSeriesDraftEventCopyWith<$Res> {
  _$InitializedWithPreviousChapterOrSeriesDraftEventCopyWithImpl(
      InitializedWithPreviousChapterOrSeriesDraftEvent _value,
      $Res Function(InitializedWithPreviousChapterOrSeriesDraftEvent) _then)
      : super(
            _value,
            (v) =>
                _then(v as InitializedWithPreviousChapterOrSeriesDraftEvent));

  @override
  InitializedWithPreviousChapterOrSeriesDraftEvent get _value =>
      super._value as InitializedWithPreviousChapterOrSeriesDraftEvent;
}

/// @nodoc
class _$InitializedWithPreviousChapterOrSeriesDraftEvent
    with DiagnosticableTreeMixin
    implements InitializedWithPreviousChapterOrSeriesDraftEvent {
  const _$InitializedWithPreviousChapterOrSeriesDraftEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.initializedWithPreviousChapterOrSeriesDraftEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type',
          'ChapterEditorDatabaseEvent.initializedWithPreviousChapterOrSeriesDraftEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializedWithPreviousChapterOrSeriesDraftEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return initializedWithPreviousChapterOrSeriesDraftEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initializedWithPreviousChapterOrSeriesDraftEvent != null) {
      return initializedWithPreviousChapterOrSeriesDraftEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return initializedWithPreviousChapterOrSeriesDraftEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initializedWithPreviousChapterOrSeriesDraftEvent != null) {
      return initializedWithPreviousChapterOrSeriesDraftEvent(this);
    }
    return orElse();
  }
}

abstract class InitializedWithPreviousChapterOrSeriesDraftEvent
    implements ChapterEditorDatabaseEvent {
  const factory InitializedWithPreviousChapterOrSeriesDraftEvent() =
      _$InitializedWithPreviousChapterOrSeriesDraftEvent;
}

/// @nodoc
abstract class $IsLastChapterChangedEventCopyWith<$Res> {
  factory $IsLastChapterChangedEventCopyWith(IsLastChapterChangedEvent value,
          $Res Function(IsLastChapterChangedEvent) then) =
      _$IsLastChapterChangedEventCopyWithImpl<$Res>;
  $Res call({bool isLastChapter});
}

/// @nodoc
class _$IsLastChapterChangedEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $IsLastChapterChangedEventCopyWith<$Res> {
  _$IsLastChapterChangedEventCopyWithImpl(IsLastChapterChangedEvent _value,
      $Res Function(IsLastChapterChangedEvent) _then)
      : super(_value, (v) => _then(v as IsLastChapterChangedEvent));

  @override
  IsLastChapterChangedEvent get _value =>
      super._value as IsLastChapterChangedEvent;

  @override
  $Res call({
    Object isLastChapter = freezed,
  }) {
    return _then(IsLastChapterChangedEvent(
      isLastChapter: isLastChapter == freezed
          ? _value.isLastChapter
          : isLastChapter as bool,
    ));
  }
}

/// @nodoc
class _$IsLastChapterChangedEvent
    with DiagnosticableTreeMixin
    implements IsLastChapterChangedEvent {
  const _$IsLastChapterChangedEvent({@required this.isLastChapter})
      : assert(isLastChapter != null);

  @override
  final bool isLastChapter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.isLastChapterChangedEvent(isLastChapter: $isLastChapter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterEditorDatabaseEvent.isLastChapterChangedEvent'))
      ..add(DiagnosticsProperty('isLastChapter', isLastChapter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsLastChapterChangedEvent &&
            (identical(other.isLastChapter, isLastChapter) ||
                const DeepCollectionEquality()
                    .equals(other.isLastChapter, isLastChapter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLastChapter);

  @JsonKey(ignore: true)
  @override
  $IsLastChapterChangedEventCopyWith<IsLastChapterChangedEvent> get copyWith =>
      _$IsLastChapterChangedEventCopyWithImpl<IsLastChapterChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return isLastChapterChangedEvent(isLastChapter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isLastChapterChangedEvent != null) {
      return isLastChapterChangedEvent(isLastChapter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return isLastChapterChangedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isLastChapterChangedEvent != null) {
      return isLastChapterChangedEvent(this);
    }
    return orElse();
  }
}

abstract class IsLastChapterChangedEvent implements ChapterEditorDatabaseEvent {
  const factory IsLastChapterChangedEvent({@required bool isLastChapter}) =
      _$IsLastChapterChangedEvent;

  bool get isLastChapter;
  @JsonKey(ignore: true)
  $IsLastChapterChangedEventCopyWith<IsLastChapterChangedEvent> get copyWith;
}

/// @nodoc
abstract class $IsNSFWChangedEventCopyWith<$Res> {
  factory $IsNSFWChangedEventCopyWith(
          IsNSFWChangedEvent value, $Res Function(IsNSFWChangedEvent) then) =
      _$IsNSFWChangedEventCopyWithImpl<$Res>;
  $Res call({bool isNSFW});
}

/// @nodoc
class _$IsNSFWChangedEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $IsNSFWChangedEventCopyWith<$Res> {
  _$IsNSFWChangedEventCopyWithImpl(
      IsNSFWChangedEvent _value, $Res Function(IsNSFWChangedEvent) _then)
      : super(_value, (v) => _then(v as IsNSFWChangedEvent));

  @override
  IsNSFWChangedEvent get _value => super._value as IsNSFWChangedEvent;

  @override
  $Res call({
    Object isNSFW = freezed,
  }) {
    return _then(IsNSFWChangedEvent(
      isNSFW: isNSFW == freezed ? _value.isNSFW : isNSFW as bool,
    ));
  }
}

/// @nodoc
class _$IsNSFWChangedEvent
    with DiagnosticableTreeMixin
    implements IsNSFWChangedEvent {
  const _$IsNSFWChangedEvent({@required this.isNSFW}) : assert(isNSFW != null);

  @override
  final bool isNSFW;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.isNSFWChangedEvent(isNSFW: $isNSFW)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterEditorDatabaseEvent.isNSFWChangedEvent'))
      ..add(DiagnosticsProperty('isNSFW', isNSFW));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsNSFWChangedEvent &&
            (identical(other.isNSFW, isNSFW) ||
                const DeepCollectionEquality().equals(other.isNSFW, isNSFW)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isNSFW);

  @JsonKey(ignore: true)
  @override
  $IsNSFWChangedEventCopyWith<IsNSFWChangedEvent> get copyWith =>
      _$IsNSFWChangedEventCopyWithImpl<IsNSFWChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return isNSFWChangedEvent(isNSFW);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isNSFWChangedEvent != null) {
      return isNSFWChangedEvent(isNSFW);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return isNSFWChangedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isNSFWChangedEvent != null) {
      return isNSFWChangedEvent(this);
    }
    return orElse();
  }
}

abstract class IsNSFWChangedEvent implements ChapterEditorDatabaseEvent {
  const factory IsNSFWChangedEvent({@required bool isNSFW}) =
      _$IsNSFWChangedEvent;

  bool get isNSFW;
  @JsonKey(ignore: true)
  $IsNSFWChangedEventCopyWith<IsNSFWChangedEvent> get copyWith;
}

/// @nodoc
abstract class $LanguageSelectedEventCopyWith<$Res> {
  factory $LanguageSelectedEventCopyWith(LanguageSelectedEvent value,
          $Res Function(LanguageSelectedEvent) then) =
      _$LanguageSelectedEventCopyWithImpl<$Res>;
  $Res call({String language});
}

/// @nodoc
class _$LanguageSelectedEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $LanguageSelectedEventCopyWith<$Res> {
  _$LanguageSelectedEventCopyWithImpl(
      LanguageSelectedEvent _value, $Res Function(LanguageSelectedEvent) _then)
      : super(_value, (v) => _then(v as LanguageSelectedEvent));

  @override
  LanguageSelectedEvent get _value => super._value as LanguageSelectedEvent;

  @override
  $Res call({
    Object language = freezed,
  }) {
    return _then(LanguageSelectedEvent(
      language == freezed ? _value.language : language as String,
    ));
  }
}

/// @nodoc
class _$LanguageSelectedEvent
    with DiagnosticableTreeMixin
    implements LanguageSelectedEvent {
  const _$LanguageSelectedEvent(this.language) : assert(language != null);

  @override
  final String language;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.languageSelectedEvent(language: $language)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterEditorDatabaseEvent.languageSelectedEvent'))
      ..add(DiagnosticsProperty('language', language));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LanguageSelectedEvent &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(language);

  @JsonKey(ignore: true)
  @override
  $LanguageSelectedEventCopyWith<LanguageSelectedEvent> get copyWith =>
      _$LanguageSelectedEventCopyWithImpl<LanguageSelectedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return languageSelectedEvent(language);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (languageSelectedEvent != null) {
      return languageSelectedEvent(language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return languageSelectedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (languageSelectedEvent != null) {
      return languageSelectedEvent(this);
    }
    return orElse();
  }
}

abstract class LanguageSelectedEvent implements ChapterEditorDatabaseEvent {
  const factory LanguageSelectedEvent(String language) =
      _$LanguageSelectedEvent;

  String get language;
  @JsonKey(ignore: true)
  $LanguageSelectedEventCopyWith<LanguageSelectedEvent> get copyWith;
}

/// @nodoc
abstract class $LaunchedFromLibraryEventCopyWith<$Res> {
  factory $LaunchedFromLibraryEventCopyWith(LaunchedFromLibraryEvent value,
          $Res Function(LaunchedFromLibraryEvent) then) =
      _$LaunchedFromLibraryEventCopyWithImpl<$Res>;
  $Res call(
      {BuildContext context,
      Chapter chapterDraft,
      EditorContentOrigin editorContentOrigin});
}

/// @nodoc
class _$LaunchedFromLibraryEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $LaunchedFromLibraryEventCopyWith<$Res> {
  _$LaunchedFromLibraryEventCopyWithImpl(LaunchedFromLibraryEvent _value,
      $Res Function(LaunchedFromLibraryEvent) _then)
      : super(_value, (v) => _then(v as LaunchedFromLibraryEvent));

  @override
  LaunchedFromLibraryEvent get _value =>
      super._value as LaunchedFromLibraryEvent;

  @override
  $Res call({
    Object context = freezed,
    Object chapterDraft = freezed,
    Object editorContentOrigin = freezed,
  }) {
    return _then(LaunchedFromLibraryEvent(
      context == freezed ? _value.context : context as BuildContext,
      chapterDraft == freezed ? _value.chapterDraft : chapterDraft as Chapter,
      editorContentOrigin == freezed
          ? _value.editorContentOrigin
          : editorContentOrigin as EditorContentOrigin,
    ));
  }
}

/// @nodoc
class _$LaunchedFromLibraryEvent
    with DiagnosticableTreeMixin
    implements LaunchedFromLibraryEvent {
  const _$LaunchedFromLibraryEvent(
      this.context, this.chapterDraft, this.editorContentOrigin)
      : assert(context != null),
        assert(chapterDraft != null),
        assert(editorContentOrigin != null);

  @override
  final BuildContext context;
  @override
  final Chapter chapterDraft;
  @override
  final EditorContentOrigin editorContentOrigin;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.launchedFromLibraryEvent(context: $context, chapterDraft: $chapterDraft, editorContentOrigin: $editorContentOrigin)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterEditorDatabaseEvent.launchedFromLibraryEvent'))
      ..add(DiagnosticsProperty('context', context))
      ..add(DiagnosticsProperty('chapterDraft', chapterDraft))
      ..add(DiagnosticsProperty('editorContentOrigin', editorContentOrigin));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LaunchedFromLibraryEvent &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.chapterDraft, chapterDraft) ||
                const DeepCollectionEquality()
                    .equals(other.chapterDraft, chapterDraft)) &&
            (identical(other.editorContentOrigin, editorContentOrigin) ||
                const DeepCollectionEquality()
                    .equals(other.editorContentOrigin, editorContentOrigin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(chapterDraft) ^
      const DeepCollectionEquality().hash(editorContentOrigin);

  @JsonKey(ignore: true)
  @override
  $LaunchedFromLibraryEventCopyWith<LaunchedFromLibraryEvent> get copyWith =>
      _$LaunchedFromLibraryEventCopyWithImpl<LaunchedFromLibraryEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return launchedFromLibraryEvent(context, chapterDraft, editorContentOrigin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (launchedFromLibraryEvent != null) {
      return launchedFromLibraryEvent(
          context, chapterDraft, editorContentOrigin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return launchedFromLibraryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (launchedFromLibraryEvent != null) {
      return launchedFromLibraryEvent(this);
    }
    return orElse();
  }
}

abstract class LaunchedFromLibraryEvent implements ChapterEditorDatabaseEvent {
  const factory LaunchedFromLibraryEvent(
      BuildContext context,
      Chapter chapterDraft,
      EditorContentOrigin editorContentOrigin) = _$LaunchedFromLibraryEvent;

  BuildContext get context;
  Chapter get chapterDraft;
  EditorContentOrigin get editorContentOrigin;
  @JsonKey(ignore: true)
  $LaunchedFromLibraryEventCopyWith<LaunchedFromLibraryEvent> get copyWith;
}

/// @nodoc
abstract class $LaunchedFromPreviousChapterEventCopyWith<$Res> {
  factory $LaunchedFromPreviousChapterEventCopyWith(
          LaunchedFromPreviousChapterEvent value,
          $Res Function(LaunchedFromPreviousChapterEvent) then) =
      _$LaunchedFromPreviousChapterEventCopyWithImpl<$Res>;
  $Res call(
      {BuildContext context,
      Chapter previousChapter,
      EditorContentOrigin editorContentOrigin});
}

/// @nodoc
class _$LaunchedFromPreviousChapterEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $LaunchedFromPreviousChapterEventCopyWith<$Res> {
  _$LaunchedFromPreviousChapterEventCopyWithImpl(
      LaunchedFromPreviousChapterEvent _value,
      $Res Function(LaunchedFromPreviousChapterEvent) _then)
      : super(_value, (v) => _then(v as LaunchedFromPreviousChapterEvent));

  @override
  LaunchedFromPreviousChapterEvent get _value =>
      super._value as LaunchedFromPreviousChapterEvent;

  @override
  $Res call({
    Object context = freezed,
    Object previousChapter = freezed,
    Object editorContentOrigin = freezed,
  }) {
    return _then(LaunchedFromPreviousChapterEvent(
      context == freezed ? _value.context : context as BuildContext,
      previousChapter == freezed
          ? _value.previousChapter
          : previousChapter as Chapter,
      editorContentOrigin == freezed
          ? _value.editorContentOrigin
          : editorContentOrigin as EditorContentOrigin,
    ));
  }
}

/// @nodoc
class _$LaunchedFromPreviousChapterEvent
    with DiagnosticableTreeMixin
    implements LaunchedFromPreviousChapterEvent {
  const _$LaunchedFromPreviousChapterEvent(
      this.context, this.previousChapter, this.editorContentOrigin)
      : assert(context != null),
        assert(previousChapter != null),
        assert(editorContentOrigin != null);

  @override
  final BuildContext context;
  @override
  final Chapter previousChapter;
  @override
  final EditorContentOrigin editorContentOrigin;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.launchedFromPreviousChapterEvent(context: $context, previousChapter: $previousChapter, editorContentOrigin: $editorContentOrigin)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type',
          'ChapterEditorDatabaseEvent.launchedFromPreviousChapterEvent'))
      ..add(DiagnosticsProperty('context', context))
      ..add(DiagnosticsProperty('previousChapter', previousChapter))
      ..add(DiagnosticsProperty('editorContentOrigin', editorContentOrigin));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LaunchedFromPreviousChapterEvent &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.previousChapter, previousChapter) ||
                const DeepCollectionEquality()
                    .equals(other.previousChapter, previousChapter)) &&
            (identical(other.editorContentOrigin, editorContentOrigin) ||
                const DeepCollectionEquality()
                    .equals(other.editorContentOrigin, editorContentOrigin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(previousChapter) ^
      const DeepCollectionEquality().hash(editorContentOrigin);

  @JsonKey(ignore: true)
  @override
  $LaunchedFromPreviousChapterEventCopyWith<LaunchedFromPreviousChapterEvent>
      get copyWith => _$LaunchedFromPreviousChapterEventCopyWithImpl<
          LaunchedFromPreviousChapterEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return launchedFromPreviousChapterEvent(
        context, previousChapter, editorContentOrigin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (launchedFromPreviousChapterEvent != null) {
      return launchedFromPreviousChapterEvent(
          context, previousChapter, editorContentOrigin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return launchedFromPreviousChapterEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (launchedFromPreviousChapterEvent != null) {
      return launchedFromPreviousChapterEvent(this);
    }
    return orElse();
  }
}

abstract class LaunchedFromPreviousChapterEvent
    implements ChapterEditorDatabaseEvent {
  const factory LaunchedFromPreviousChapterEvent(BuildContext context,
          Chapter previousChapter, EditorContentOrigin editorContentOrigin) =
      _$LaunchedFromPreviousChapterEvent;

  BuildContext get context;
  Chapter get previousChapter;
  EditorContentOrigin get editorContentOrigin;
  @JsonKey(ignore: true)
  $LaunchedFromPreviousChapterEventCopyWith<LaunchedFromPreviousChapterEvent>
      get copyWith;
}

/// @nodoc
abstract class $LaunchedFromSeriesEditorEventCopyWith<$Res> {
  factory $LaunchedFromSeriesEditorEventCopyWith(
          LaunchedFromSeriesEditorEvent value,
          $Res Function(LaunchedFromSeriesEditorEvent) then) =
      _$LaunchedFromSeriesEditorEventCopyWithImpl<$Res>;
  $Res call(
      {BuildContext context,
      EditorContentOrigin editorContentOrigin,
      Series seriesDraft});
}

/// @nodoc
class _$LaunchedFromSeriesEditorEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $LaunchedFromSeriesEditorEventCopyWith<$Res> {
  _$LaunchedFromSeriesEditorEventCopyWithImpl(
      LaunchedFromSeriesEditorEvent _value,
      $Res Function(LaunchedFromSeriesEditorEvent) _then)
      : super(_value, (v) => _then(v as LaunchedFromSeriesEditorEvent));

  @override
  LaunchedFromSeriesEditorEvent get _value =>
      super._value as LaunchedFromSeriesEditorEvent;

  @override
  $Res call({
    Object context = freezed,
    Object editorContentOrigin = freezed,
    Object seriesDraft = freezed,
  }) {
    return _then(LaunchedFromSeriesEditorEvent(
      context == freezed ? _value.context : context as BuildContext,
      editorContentOrigin == freezed
          ? _value.editorContentOrigin
          : editorContentOrigin as EditorContentOrigin,
      seriesDraft == freezed ? _value.seriesDraft : seriesDraft as Series,
    ));
  }
}

/// @nodoc
class _$LaunchedFromSeriesEditorEvent
    with DiagnosticableTreeMixin
    implements LaunchedFromSeriesEditorEvent {
  const _$LaunchedFromSeriesEditorEvent(
      this.context, this.editorContentOrigin, this.seriesDraft)
      : assert(context != null),
        assert(editorContentOrigin != null),
        assert(seriesDraft != null);

  @override
  final BuildContext context;
  @override
  final EditorContentOrigin editorContentOrigin;
  @override
  final Series seriesDraft;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.launchedFromSeriesEditorEvent(context: $context, editorContentOrigin: $editorContentOrigin, seriesDraft: $seriesDraft)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterEditorDatabaseEvent.launchedFromSeriesEditorEvent'))
      ..add(DiagnosticsProperty('context', context))
      ..add(DiagnosticsProperty('editorContentOrigin', editorContentOrigin))
      ..add(DiagnosticsProperty('seriesDraft', seriesDraft));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LaunchedFromSeriesEditorEvent &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.editorContentOrigin, editorContentOrigin) ||
                const DeepCollectionEquality()
                    .equals(other.editorContentOrigin, editorContentOrigin)) &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(editorContentOrigin) ^
      const DeepCollectionEquality().hash(seriesDraft);

  @JsonKey(ignore: true)
  @override
  $LaunchedFromSeriesEditorEventCopyWith<LaunchedFromSeriesEditorEvent>
      get copyWith => _$LaunchedFromSeriesEditorEventCopyWithImpl<
          LaunchedFromSeriesEditorEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return launchedFromSeriesEditorEvent(
        context, editorContentOrigin, seriesDraft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (launchedFromSeriesEditorEvent != null) {
      return launchedFromSeriesEditorEvent(
          context, editorContentOrigin, seriesDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return launchedFromSeriesEditorEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (launchedFromSeriesEditorEvent != null) {
      return launchedFromSeriesEditorEvent(this);
    }
    return orElse();
  }
}

abstract class LaunchedFromSeriesEditorEvent
    implements ChapterEditorDatabaseEvent {
  const factory LaunchedFromSeriesEditorEvent(
      BuildContext context,
      EditorContentOrigin editorContentOrigin,
      Series seriesDraft) = _$LaunchedFromSeriesEditorEvent;

  BuildContext get context;
  EditorContentOrigin get editorContentOrigin;
  Series get seriesDraft;
  @JsonKey(ignore: true)
  $LaunchedFromSeriesEditorEventCopyWith<LaunchedFromSeriesEditorEvent>
      get copyWith;
}

/// @nodoc
abstract class $LicenceSelectedEventCopyWith<$Res> {
  factory $LicenceSelectedEventCopyWith(LicenceSelectedEvent value,
          $Res Function(LicenceSelectedEvent) then) =
      _$LicenceSelectedEventCopyWithImpl<$Res>;
  $Res call({String licence});
}

/// @nodoc
class _$LicenceSelectedEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $LicenceSelectedEventCopyWith<$Res> {
  _$LicenceSelectedEventCopyWithImpl(
      LicenceSelectedEvent _value, $Res Function(LicenceSelectedEvent) _then)
      : super(_value, (v) => _then(v as LicenceSelectedEvent));

  @override
  LicenceSelectedEvent get _value => super._value as LicenceSelectedEvent;

  @override
  $Res call({
    Object licence = freezed,
  }) {
    return _then(LicenceSelectedEvent(
      licence == freezed ? _value.licence : licence as String,
    ));
  }
}

/// @nodoc
class _$LicenceSelectedEvent
    with DiagnosticableTreeMixin
    implements LicenceSelectedEvent {
  const _$LicenceSelectedEvent(this.licence) : assert(licence != null);

  @override
  final String licence;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.licenceSelectedEvent(licence: $licence)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterEditorDatabaseEvent.licenceSelectedEvent'))
      ..add(DiagnosticsProperty('licence', licence));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LicenceSelectedEvent &&
            (identical(other.licence, licence) ||
                const DeepCollectionEquality().equals(other.licence, licence)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(licence);

  @JsonKey(ignore: true)
  @override
  $LicenceSelectedEventCopyWith<LicenceSelectedEvent> get copyWith =>
      _$LicenceSelectedEventCopyWithImpl<LicenceSelectedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return licenceSelectedEvent(licence);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (licenceSelectedEvent != null) {
      return licenceSelectedEvent(licence);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return licenceSelectedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (licenceSelectedEvent != null) {
      return licenceSelectedEvent(this);
    }
    return orElse();
  }
}

abstract class LicenceSelectedEvent implements ChapterEditorDatabaseEvent {
  const factory LicenceSelectedEvent(String licence) = _$LicenceSelectedEvent;

  String get licence;
  @JsonKey(ignore: true)
  $LicenceSelectedEventCopyWith<LicenceSelectedEvent> get copyWith;
}

/// @nodoc
abstract class $PublishButtonPressedEventCopyWith<$Res> {
  factory $PublishButtonPressedEventCopyWith(PublishButtonPressedEvent value,
          $Res Function(PublishButtonPressedEvent) then) =
      _$PublishButtonPressedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PublishButtonPressedEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $PublishButtonPressedEventCopyWith<$Res> {
  _$PublishButtonPressedEventCopyWithImpl(PublishButtonPressedEvent _value,
      $Res Function(PublishButtonPressedEvent) _then)
      : super(_value, (v) => _then(v as PublishButtonPressedEvent));

  @override
  PublishButtonPressedEvent get _value =>
      super._value as PublishButtonPressedEvent;
}

/// @nodoc
class _$PublishButtonPressedEvent
    with DiagnosticableTreeMixin
    implements PublishButtonPressedEvent {
  const _$PublishButtonPressedEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.publishButtonPressedEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterEditorDatabaseEvent.publishButtonPressedEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PublishButtonPressedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return publishButtonPressedEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (publishButtonPressedEvent != null) {
      return publishButtonPressedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return publishButtonPressedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (publishButtonPressedEvent != null) {
      return publishButtonPressedEvent(this);
    }
    return orElse();
  }
}

abstract class PublishButtonPressedEvent implements ChapterEditorDatabaseEvent {
  const factory PublishButtonPressedEvent() = _$PublishButtonPressedEvent;
}

/// @nodoc
abstract class $SaveOrBackButtonPressedEventCopyWith<$Res> {
  factory $SaveOrBackButtonPressedEventCopyWith(
          SaveOrBackButtonPressedEvent value,
          $Res Function(SaveOrBackButtonPressedEvent) then) =
      _$SaveOrBackButtonPressedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveOrBackButtonPressedEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $SaveOrBackButtonPressedEventCopyWith<$Res> {
  _$SaveOrBackButtonPressedEventCopyWithImpl(
      SaveOrBackButtonPressedEvent _value,
      $Res Function(SaveOrBackButtonPressedEvent) _then)
      : super(_value, (v) => _then(v as SaveOrBackButtonPressedEvent));

  @override
  SaveOrBackButtonPressedEvent get _value =>
      super._value as SaveOrBackButtonPressedEvent;
}

/// @nodoc
class _$SaveOrBackButtonPressedEvent
    with DiagnosticableTreeMixin
    implements SaveOrBackButtonPressedEvent {
  const _$SaveOrBackButtonPressedEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.saveOrBackButtonPressedEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterEditorDatabaseEvent.saveOrBackButtonPressedEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SaveOrBackButtonPressedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return saveOrBackButtonPressedEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saveOrBackButtonPressedEvent != null) {
      return saveOrBackButtonPressedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return saveOrBackButtonPressedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saveOrBackButtonPressedEvent != null) {
      return saveOrBackButtonPressedEvent(this);
    }
    return orElse();
  }
}

abstract class SaveOrBackButtonPressedEvent
    implements ChapterEditorDatabaseEvent {
  const factory SaveOrBackButtonPressedEvent() = _$SaveOrBackButtonPressedEvent;
}

/// @nodoc
abstract class $SeriesDraftLoadedEventCopyWith<$Res> {
  factory $SeriesDraftLoadedEventCopyWith(SeriesDraftLoadedEvent value,
          $Res Function(SeriesDraftLoadedEvent) then) =
      _$SeriesDraftLoadedEventCopyWithImpl<$Res>;
  $Res call({Series seriesDraft});
}

/// @nodoc
class _$SeriesDraftLoadedEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $SeriesDraftLoadedEventCopyWith<$Res> {
  _$SeriesDraftLoadedEventCopyWithImpl(SeriesDraftLoadedEvent _value,
      $Res Function(SeriesDraftLoadedEvent) _then)
      : super(_value, (v) => _then(v as SeriesDraftLoadedEvent));

  @override
  SeriesDraftLoadedEvent get _value => super._value as SeriesDraftLoadedEvent;

  @override
  $Res call({
    Object seriesDraft = freezed,
  }) {
    return _then(SeriesDraftLoadedEvent(
      seriesDraft == freezed ? _value.seriesDraft : seriesDraft as Series,
    ));
  }
}

/// @nodoc
class _$SeriesDraftLoadedEvent
    with DiagnosticableTreeMixin
    implements SeriesDraftLoadedEvent {
  const _$SeriesDraftLoadedEvent(this.seriesDraft)
      : assert(seriesDraft != null);

  @override
  final Series seriesDraft;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.seriesDraftLoadedEvent(seriesDraft: $seriesDraft)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterEditorDatabaseEvent.seriesDraftLoadedEvent'))
      ..add(DiagnosticsProperty('seriesDraft', seriesDraft));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesDraftLoadedEvent &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seriesDraft);

  @JsonKey(ignore: true)
  @override
  $SeriesDraftLoadedEventCopyWith<SeriesDraftLoadedEvent> get copyWith =>
      _$SeriesDraftLoadedEventCopyWithImpl<SeriesDraftLoadedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return seriesDraftLoadedEvent(seriesDraft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftLoadedEvent != null) {
      return seriesDraftLoadedEvent(seriesDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return seriesDraftLoadedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftLoadedEvent != null) {
      return seriesDraftLoadedEvent(this);
    }
    return orElse();
  }
}

abstract class SeriesDraftLoadedEvent implements ChapterEditorDatabaseEvent {
  const factory SeriesDraftLoadedEvent(Series seriesDraft) =
      _$SeriesDraftLoadedEvent;

  Series get seriesDraft;
  @JsonKey(ignore: true)
  $SeriesDraftLoadedEventCopyWith<SeriesDraftLoadedEvent> get copyWith;
}

/// @nodoc
abstract class $SeriesPublishedEventCopyWith<$Res> {
  factory $SeriesPublishedEventCopyWith(SeriesPublishedEvent value,
          $Res Function(SeriesPublishedEvent) then) =
      _$SeriesPublishedEventCopyWithImpl<$Res>;
  $Res call({String seriesDraftUID});
}

/// @nodoc
class _$SeriesPublishedEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $SeriesPublishedEventCopyWith<$Res> {
  _$SeriesPublishedEventCopyWithImpl(
      SeriesPublishedEvent _value, $Res Function(SeriesPublishedEvent) _then)
      : super(_value, (v) => _then(v as SeriesPublishedEvent));

  @override
  SeriesPublishedEvent get _value => super._value as SeriesPublishedEvent;

  @override
  $Res call({
    Object seriesDraftUID = freezed,
  }) {
    return _then(SeriesPublishedEvent(
      seriesDraftUID == freezed
          ? _value.seriesDraftUID
          : seriesDraftUID as String,
    ));
  }
}

/// @nodoc
class _$SeriesPublishedEvent
    with DiagnosticableTreeMixin
    implements SeriesPublishedEvent {
  const _$SeriesPublishedEvent(this.seriesDraftUID)
      : assert(seriesDraftUID != null);

  @override
  final String seriesDraftUID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.seriesPublishedEvent(seriesDraftUID: $seriesDraftUID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterEditorDatabaseEvent.seriesPublishedEvent'))
      ..add(DiagnosticsProperty('seriesDraftUID', seriesDraftUID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesPublishedEvent &&
            (identical(other.seriesDraftUID, seriesDraftUID) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraftUID, seriesDraftUID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(seriesDraftUID);

  @JsonKey(ignore: true)
  @override
  $SeriesPublishedEventCopyWith<SeriesPublishedEvent> get copyWith =>
      _$SeriesPublishedEventCopyWithImpl<SeriesPublishedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return seriesPublishedEvent(seriesDraftUID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedEvent != null) {
      return seriesPublishedEvent(seriesDraftUID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return seriesPublishedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedEvent != null) {
      return seriesPublishedEvent(this);
    }
    return orElse();
  }
}

abstract class SeriesPublishedEvent implements ChapterEditorDatabaseEvent {
  const factory SeriesPublishedEvent(String seriesDraftUID) =
      _$SeriesPublishedEvent;

  String get seriesDraftUID;
  @JsonKey(ignore: true)
  $SeriesPublishedEventCopyWith<SeriesPublishedEvent> get copyWith;
}

/// @nodoc
abstract class $SessionFetchedEventCopyWith<$Res> {
  factory $SessionFetchedEventCopyWith(
          SessionFetchedEvent value, $Res Function(SessionFetchedEvent) then) =
      _$SessionFetchedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SessionFetchedEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $SessionFetchedEventCopyWith<$Res> {
  _$SessionFetchedEventCopyWithImpl(
      SessionFetchedEvent _value, $Res Function(SessionFetchedEvent) _then)
      : super(_value, (v) => _then(v as SessionFetchedEvent));

  @override
  SessionFetchedEvent get _value => super._value as SessionFetchedEvent;
}

/// @nodoc
class _$SessionFetchedEvent
    with DiagnosticableTreeMixin
    implements SessionFetchedEvent {
  const _$SessionFetchedEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.sessionFetchedEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterEditorDatabaseEvent.sessionFetchedEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SessionFetchedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return sessionFetchedEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessionFetchedEvent != null) {
      return sessionFetchedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return sessionFetchedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessionFetchedEvent != null) {
      return sessionFetchedEvent(this);
    }
    return orElse();
  }
}

abstract class SessionFetchedEvent implements ChapterEditorDatabaseEvent {
  const factory SessionFetchedEvent() = _$SessionFetchedEvent;
}

/// @nodoc
abstract class $StoryChangedEventCopyWith<$Res> {
  factory $StoryChangedEventCopyWith(
          StoryChangedEvent value, $Res Function(StoryChangedEvent) then) =
      _$StoryChangedEventCopyWithImpl<$Res>;
  $Res call({String story});
}

/// @nodoc
class _$StoryChangedEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $StoryChangedEventCopyWith<$Res> {
  _$StoryChangedEventCopyWithImpl(
      StoryChangedEvent _value, $Res Function(StoryChangedEvent) _then)
      : super(_value, (v) => _then(v as StoryChangedEvent));

  @override
  StoryChangedEvent get _value => super._value as StoryChangedEvent;

  @override
  $Res call({
    Object story = freezed,
  }) {
    return _then(StoryChangedEvent(
      story == freezed ? _value.story : story as String,
    ));
  }
}

/// @nodoc
class _$StoryChangedEvent
    with DiagnosticableTreeMixin
    implements StoryChangedEvent {
  const _$StoryChangedEvent(this.story) : assert(story != null);

  @override
  final String story;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.storyChangedEvent(story: $story)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterEditorDatabaseEvent.storyChangedEvent'))
      ..add(DiagnosticsProperty('story', story));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StoryChangedEvent &&
            (identical(other.story, story) ||
                const DeepCollectionEquality().equals(other.story, story)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(story);

  @JsonKey(ignore: true)
  @override
  $StoryChangedEventCopyWith<StoryChangedEvent> get copyWith =>
      _$StoryChangedEventCopyWithImpl<StoryChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return storyChangedEvent(story);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (storyChangedEvent != null) {
      return storyChangedEvent(story);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return storyChangedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (storyChangedEvent != null) {
      return storyChangedEvent(this);
    }
    return orElse();
  }
}

abstract class StoryChangedEvent implements ChapterEditorDatabaseEvent {
  const factory StoryChangedEvent(String story) = _$StoryChangedEvent;

  String get story;
  @JsonKey(ignore: true)
  $StoryChangedEventCopyWith<StoryChangedEvent> get copyWith;
}

/// @nodoc
abstract class $TitleChangedEventCopyWith<$Res> {
  factory $TitleChangedEventCopyWith(
          TitleChangedEvent value, $Res Function(TitleChangedEvent) then) =
      _$TitleChangedEventCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class _$TitleChangedEventCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseEventCopyWithImpl<$Res>
    implements $TitleChangedEventCopyWith<$Res> {
  _$TitleChangedEventCopyWithImpl(
      TitleChangedEvent _value, $Res Function(TitleChangedEvent) _then)
      : super(_value, (v) => _then(v as TitleChangedEvent));

  @override
  TitleChangedEvent get _value => super._value as TitleChangedEvent;

  @override
  $Res call({
    Object title = freezed,
  }) {
    return _then(TitleChangedEvent(
      title == freezed ? _value.title : title as String,
    ));
  }
}

/// @nodoc
class _$TitleChangedEvent
    with DiagnosticableTreeMixin
    implements TitleChangedEvent {
  const _$TitleChangedEvent(this.title) : assert(title != null);

  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseEvent.titleChangedEvent(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterEditorDatabaseEvent.titleChangedEvent'))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TitleChangedEvent &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  $TitleChangedEventCopyWith<TitleChangedEvent> get copyWith =>
      _$TitleChangedEventCopyWithImpl<TitleChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addCoverPressedEvent(),
    @required TResult chapterDraftDeletedOrPublishedEvent(),
    @required TResult chapterPublishedEvent(),
    @required TResult deleteDraftButtonPressedEvent(),
    @required TResult genreOptionalSelectedEvent(String genreOptional),
    @required TResult genreSelectedEvent(String genre),
    @required TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    @required TResult isLastChapterChangedEvent(bool isLastChapter),
    @required TResult isNSFWChangedEvent(bool isNSFW),
    @required TResult languageSelectedEvent(String language),
    @required
        TResult launchedFromLibraryEvent(BuildContext context,
            Chapter chapterDraft, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromPreviousChapterEvent(BuildContext context,
            Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    @required
        TResult launchedFromSeriesEditorEvent(BuildContext context,
            EditorContentOrigin editorContentOrigin, Series seriesDraft),
    @required TResult licenceSelectedEvent(String licence),
    @required TResult publishButtonPressedEvent(),
    @required TResult saveOrBackButtonPressedEvent(),
    @required TResult seriesDraftLoadedEvent(Series seriesDraft),
    @required TResult seriesPublishedEvent(String seriesDraftUID),
    @required TResult sessionFetchedEvent(),
    @required TResult storyChangedEvent(String story),
    @required TResult titleChangedEvent(String title),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return titleChangedEvent(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addCoverPressedEvent(),
    TResult chapterDraftDeletedOrPublishedEvent(),
    TResult chapterPublishedEvent(),
    TResult deleteDraftButtonPressedEvent(),
    TResult genreOptionalSelectedEvent(String genreOptional),
    TResult genreSelectedEvent(String genre),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(),
    TResult isLastChapterChangedEvent(bool isLastChapter),
    TResult isNSFWChangedEvent(bool isNSFW),
    TResult languageSelectedEvent(String language),
    TResult launchedFromLibraryEvent(BuildContext context, Chapter chapterDraft,
        EditorContentOrigin editorContentOrigin),
    TResult launchedFromPreviousChapterEvent(BuildContext context,
        Chapter previousChapter, EditorContentOrigin editorContentOrigin),
    TResult launchedFromSeriesEditorEvent(BuildContext context,
        EditorContentOrigin editorContentOrigin, Series seriesDraft),
    TResult licenceSelectedEvent(String licence),
    TResult publishButtonPressedEvent(),
    TResult saveOrBackButtonPressedEvent(),
    TResult seriesDraftLoadedEvent(Series seriesDraft),
    TResult seriesPublishedEvent(String seriesDraftUID),
    TResult sessionFetchedEvent(),
    TResult storyChangedEvent(String story),
    TResult titleChangedEvent(String title),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (titleChangedEvent != null) {
      return titleChangedEvent(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addCoverPressedEvent(AddCoverPressedEvent value),
    @required
        TResult chapterDraftDeletedOrPublishedEvent(
            ChapterDraftDeletedOrPublishedEvent value),
    @required TResult chapterPublishedEvent(ChapterPublishedEvent value),
    @required
        TResult deleteDraftButtonPressedEvent(
            DeleteDraftButtonPressedEvent value),
    @required
        TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    @required TResult genreSelectedEvent(GenreSelectedEvent value),
    @required
        TResult initializedWithPreviousChapterOrSeriesDraftEvent(
            InitializedWithPreviousChapterOrSeriesDraftEvent value),
    @required
        TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    @required TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    @required TResult languageSelectedEvent(LanguageSelectedEvent value),
    @required TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    @required
        TResult launchedFromPreviousChapterEvent(
            LaunchedFromPreviousChapterEvent value),
    @required
        TResult launchedFromSeriesEditorEvent(
            LaunchedFromSeriesEditorEvent value),
    @required TResult licenceSelectedEvent(LicenceSelectedEvent value),
    @required
        TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    @required
        TResult saveOrBackButtonPressedEvent(
            SaveOrBackButtonPressedEvent value),
    @required TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    @required TResult seriesPublishedEvent(SeriesPublishedEvent value),
    @required TResult sessionFetchedEvent(SessionFetchedEvent value),
    @required TResult storyChangedEvent(StoryChangedEvent value),
    @required TResult titleChangedEvent(TitleChangedEvent value),
  }) {
    assert(addCoverPressedEvent != null);
    assert(chapterDraftDeletedOrPublishedEvent != null);
    assert(chapterPublishedEvent != null);
    assert(deleteDraftButtonPressedEvent != null);
    assert(genreOptionalSelectedEvent != null);
    assert(genreSelectedEvent != null);
    assert(initializedWithPreviousChapterOrSeriesDraftEvent != null);
    assert(isLastChapterChangedEvent != null);
    assert(isNSFWChangedEvent != null);
    assert(languageSelectedEvent != null);
    assert(launchedFromLibraryEvent != null);
    assert(launchedFromPreviousChapterEvent != null);
    assert(launchedFromSeriesEditorEvent != null);
    assert(licenceSelectedEvent != null);
    assert(publishButtonPressedEvent != null);
    assert(saveOrBackButtonPressedEvent != null);
    assert(seriesDraftLoadedEvent != null);
    assert(seriesPublishedEvent != null);
    assert(sessionFetchedEvent != null);
    assert(storyChangedEvent != null);
    assert(titleChangedEvent != null);
    return titleChangedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addCoverPressedEvent(AddCoverPressedEvent value),
    TResult chapterDraftDeletedOrPublishedEvent(
        ChapterDraftDeletedOrPublishedEvent value),
    TResult chapterPublishedEvent(ChapterPublishedEvent value),
    TResult deleteDraftButtonPressedEvent(DeleteDraftButtonPressedEvent value),
    TResult genreOptionalSelectedEvent(GenreOptionalSelectedEvent value),
    TResult genreSelectedEvent(GenreSelectedEvent value),
    TResult initializedWithPreviousChapterOrSeriesDraftEvent(
        InitializedWithPreviousChapterOrSeriesDraftEvent value),
    TResult isLastChapterChangedEvent(IsLastChapterChangedEvent value),
    TResult isNSFWChangedEvent(IsNSFWChangedEvent value),
    TResult languageSelectedEvent(LanguageSelectedEvent value),
    TResult launchedFromLibraryEvent(LaunchedFromLibraryEvent value),
    TResult launchedFromPreviousChapterEvent(
        LaunchedFromPreviousChapterEvent value),
    TResult launchedFromSeriesEditorEvent(LaunchedFromSeriesEditorEvent value),
    TResult licenceSelectedEvent(LicenceSelectedEvent value),
    TResult publishButtonPressedEvent(PublishButtonPressedEvent value),
    TResult saveOrBackButtonPressedEvent(SaveOrBackButtonPressedEvent value),
    TResult seriesDraftLoadedEvent(SeriesDraftLoadedEvent value),
    TResult seriesPublishedEvent(SeriesPublishedEvent value),
    TResult sessionFetchedEvent(SessionFetchedEvent value),
    TResult storyChangedEvent(StoryChangedEvent value),
    TResult titleChangedEvent(TitleChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (titleChangedEvent != null) {
      return titleChangedEvent(this);
    }
    return orElse();
  }
}

abstract class TitleChangedEvent implements ChapterEditorDatabaseEvent {
  const factory TitleChangedEvent(String title) = _$TitleChangedEvent;

  String get title;
  @JsonKey(ignore: true)
  $TitleChangedEventCopyWith<TitleChangedEvent> get copyWith;
}

/// @nodoc
class _$ChapterEditorDatabaseStateTearOff {
  const _$ChapterEditorDatabaseStateTearOff();

// ignore: unused_element
  _ChapterEditorDatabaseState call(
      {@required
          bool isEditMode,
      @required
          bool isFirstChapter,
      @required
          bool isLastChapter,
      @required
          bool isLoading,
      @required
          bool isNSFW,
      @required
          bool showErrorMessages,
      @required
          Chapter chapterDraft,
      @required
          Chapter previousChapter,
      @required
          Licence licence,
      @required
          EditorContentOrigin editorContentOrigin,
      @required
          Genre genre,
      @required
          Genre genreOptional,
      @required
          int storyWordCount,
      @required
          int titleWordCount,
      @required
          Language language,
      @required
          Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>
              chapterDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
              chapterDraftDatabaseFailureOrSuccessOption,
      @required
          Option<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
              placeholderDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>
              seriesDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
              seriesDraftDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
              sessionDatabaseFailureOrSuccessOption,
      @required
          Series seriesDraft,
      @required
          Story story,
      @required
          String chapterCoverURL,
      @required
          String copyrightsStr,
      @required
          String genreOptionalStr,
      @required
          String genreStr,
      @required
          String languageStr,
      @required
          String seriesCoverURL,
      @required
          String storyStr,
      @required
          String titleStr,
      @required
          TextEditingController storyController,
      @required
          TextEditingController titleController,
      @required
          Title title}) {
    return _ChapterEditorDatabaseState(
      isEditMode: isEditMode,
      isFirstChapter: isFirstChapter,
      isLastChapter: isLastChapter,
      isLoading: isLoading,
      isNSFW: isNSFW,
      showErrorMessages: showErrorMessages,
      chapterDraft: chapterDraft,
      previousChapter: previousChapter,
      licence: licence,
      editorContentOrigin: editorContentOrigin,
      genre: genre,
      genreOptional: genreOptional,
      storyWordCount: storyWordCount,
      titleWordCount: titleWordCount,
      language: language,
      chapterDatabaseFailureOrSuccessOption:
          chapterDatabaseFailureOrSuccessOption,
      chapterDraftDatabaseFailureOrSuccessOption:
          chapterDraftDatabaseFailureOrSuccessOption,
      placeholderDatabaseFailureOrSuccessOption:
          placeholderDatabaseFailureOrSuccessOption,
      seriesDatabaseFailureOrSuccessOption:
          seriesDatabaseFailureOrSuccessOption,
      seriesDraftDatabaseFailureOrSuccessOption:
          seriesDraftDatabaseFailureOrSuccessOption,
      sessionDatabaseFailureOrSuccessOption:
          sessionDatabaseFailureOrSuccessOption,
      seriesDraft: seriesDraft,
      story: story,
      chapterCoverURL: chapterCoverURL,
      copyrightsStr: copyrightsStr,
      genreOptionalStr: genreOptionalStr,
      genreStr: genreStr,
      languageStr: languageStr,
      seriesCoverURL: seriesCoverURL,
      storyStr: storyStr,
      titleStr: titleStr,
      storyController: storyController,
      titleController: titleController,
      title: title,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChapterEditorDatabaseState = _$ChapterEditorDatabaseStateTearOff();

/// @nodoc
mixin _$ChapterEditorDatabaseState {
  bool get isEditMode;
  bool get isFirstChapter;
  bool get isLastChapter;
  bool get isLoading;
  bool get isNSFW;
  bool get showErrorMessages;
  Chapter get chapterDraft;
  Chapter get previousChapter;
  Licence get licence;
  EditorContentOrigin get editorContentOrigin;
  Genre get genre;
  Genre get genreOptional;
  int get storyWordCount;
  int get titleWordCount;
  Language get language;
  Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      get chapterDatabaseFailureOrSuccessOption;
  Option<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
      get chapterDraftDatabaseFailureOrSuccessOption;
  Option<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
      get placeholderDatabaseFailureOrSuccessOption;
  Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      get seriesDatabaseFailureOrSuccessOption;
  Option<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
      get seriesDraftDatabaseFailureOrSuccessOption;
  Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
      get sessionDatabaseFailureOrSuccessOption;
  Series get seriesDraft;
  Story get story;
  String get chapterCoverURL;
  String get copyrightsStr;
  String get genreOptionalStr;
  String get genreStr;
  String get languageStr;
  String get seriesCoverURL;
  String get storyStr;
  String get titleStr;
  TextEditingController get storyController;
  TextEditingController get titleController;
  Title get title;

  @JsonKey(ignore: true)
  $ChapterEditorDatabaseStateCopyWith<ChapterEditorDatabaseState> get copyWith;
}

/// @nodoc
abstract class $ChapterEditorDatabaseStateCopyWith<$Res> {
  factory $ChapterEditorDatabaseStateCopyWith(ChapterEditorDatabaseState value,
          $Res Function(ChapterEditorDatabaseState) then) =
      _$ChapterEditorDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {bool isEditMode,
      bool isFirstChapter,
      bool isLastChapter,
      bool isLoading,
      bool isNSFW,
      bool showErrorMessages,
      Chapter chapterDraft,
      Chapter previousChapter,
      Licence licence,
      EditorContentOrigin editorContentOrigin,
      Genre genre,
      Genre genreOptional,
      int storyWordCount,
      int titleWordCount,
      Language language,
      Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>
          chapterDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
          chapterDraftDatabaseFailureOrSuccessOption,
      Option<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
          placeholderDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>
          seriesDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
          seriesDraftDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
          sessionDatabaseFailureOrSuccessOption,
      Series seriesDraft,
      Story story,
      String chapterCoverURL,
      String copyrightsStr,
      String genreOptionalStr,
      String genreStr,
      String languageStr,
      String seriesCoverURL,
      String storyStr,
      String titleStr,
      TextEditingController storyController,
      TextEditingController titleController,
      Title title});
}

/// @nodoc
class _$ChapterEditorDatabaseStateCopyWithImpl<$Res>
    implements $ChapterEditorDatabaseStateCopyWith<$Res> {
  _$ChapterEditorDatabaseStateCopyWithImpl(this._value, this._then);

  final ChapterEditorDatabaseState _value;
  // ignore: unused_field
  final $Res Function(ChapterEditorDatabaseState) _then;

  @override
  $Res call({
    Object isEditMode = freezed,
    Object isFirstChapter = freezed,
    Object isLastChapter = freezed,
    Object isLoading = freezed,
    Object isNSFW = freezed,
    Object showErrorMessages = freezed,
    Object chapterDraft = freezed,
    Object previousChapter = freezed,
    Object licence = freezed,
    Object editorContentOrigin = freezed,
    Object genre = freezed,
    Object genreOptional = freezed,
    Object storyWordCount = freezed,
    Object titleWordCount = freezed,
    Object language = freezed,
    Object chapterDatabaseFailureOrSuccessOption = freezed,
    Object chapterDraftDatabaseFailureOrSuccessOption = freezed,
    Object placeholderDatabaseFailureOrSuccessOption = freezed,
    Object seriesDatabaseFailureOrSuccessOption = freezed,
    Object seriesDraftDatabaseFailureOrSuccessOption = freezed,
    Object sessionDatabaseFailureOrSuccessOption = freezed,
    Object seriesDraft = freezed,
    Object story = freezed,
    Object chapterCoverURL = freezed,
    Object copyrightsStr = freezed,
    Object genreOptionalStr = freezed,
    Object genreStr = freezed,
    Object languageStr = freezed,
    Object seriesCoverURL = freezed,
    Object storyStr = freezed,
    Object titleStr = freezed,
    Object storyController = freezed,
    Object titleController = freezed,
    Object title = freezed,
  }) {
    return _then(_value.copyWith(
      isEditMode:
          isEditMode == freezed ? _value.isEditMode : isEditMode as bool,
      isFirstChapter: isFirstChapter == freezed
          ? _value.isFirstChapter
          : isFirstChapter as bool,
      isLastChapter: isLastChapter == freezed
          ? _value.isLastChapter
          : isLastChapter as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isNSFW: isNSFW == freezed ? _value.isNSFW : isNSFW as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      chapterDraft: chapterDraft == freezed
          ? _value.chapterDraft
          : chapterDraft as Chapter,
      previousChapter: previousChapter == freezed
          ? _value.previousChapter
          : previousChapter as Chapter,
      licence: licence == freezed ? _value.licence : licence as Licence,
      editorContentOrigin: editorContentOrigin == freezed
          ? _value.editorContentOrigin
          : editorContentOrigin as EditorContentOrigin,
      genre: genre == freezed ? _value.genre : genre as Genre,
      genreOptional: genreOptional == freezed
          ? _value.genreOptional
          : genreOptional as Genre,
      storyWordCount: storyWordCount == freezed
          ? _value.storyWordCount
          : storyWordCount as int,
      titleWordCount: titleWordCount == freezed
          ? _value.titleWordCount
          : titleWordCount as int,
      language: language == freezed ? _value.language : language as Language,
      chapterDatabaseFailureOrSuccessOption:
          chapterDatabaseFailureOrSuccessOption == freezed
              ? _value.chapterDatabaseFailureOrSuccessOption
              : chapterDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>,
      chapterDraftDatabaseFailureOrSuccessOption:
          chapterDraftDatabaseFailureOrSuccessOption == freezed
              ? _value.chapterDraftDatabaseFailureOrSuccessOption
              : chapterDraftDatabaseFailureOrSuccessOption as Option<
                  Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>,
      placeholderDatabaseFailureOrSuccessOption:
          placeholderDatabaseFailureOrSuccessOption == freezed
              ? _value.placeholderDatabaseFailureOrSuccessOption
              : placeholderDatabaseFailureOrSuccessOption as Option<
                  Either<PlaceholderDatabaseFailure,
                      PlaceholderDatabaseSuccess>>,
      seriesDatabaseFailureOrSuccessOption:
          seriesDatabaseFailureOrSuccessOption == freezed
              ? _value.seriesDatabaseFailureOrSuccessOption
              : seriesDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>,
      seriesDraftDatabaseFailureOrSuccessOption:
          seriesDraftDatabaseFailureOrSuccessOption == freezed
              ? _value.seriesDraftDatabaseFailureOrSuccessOption
              : seriesDraftDatabaseFailureOrSuccessOption as Option<
                  Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>,
      sessionDatabaseFailureOrSuccessOption:
          sessionDatabaseFailureOrSuccessOption == freezed
              ? _value.sessionDatabaseFailureOrSuccessOption
              : sessionDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, SessionDatabaseSuccess>>,
      seriesDraft:
          seriesDraft == freezed ? _value.seriesDraft : seriesDraft as Series,
      story: story == freezed ? _value.story : story as Story,
      chapterCoverURL: chapterCoverURL == freezed
          ? _value.chapterCoverURL
          : chapterCoverURL as String,
      copyrightsStr: copyrightsStr == freezed
          ? _value.copyrightsStr
          : copyrightsStr as String,
      genreOptionalStr: genreOptionalStr == freezed
          ? _value.genreOptionalStr
          : genreOptionalStr as String,
      genreStr: genreStr == freezed ? _value.genreStr : genreStr as String,
      languageStr:
          languageStr == freezed ? _value.languageStr : languageStr as String,
      seriesCoverURL: seriesCoverURL == freezed
          ? _value.seriesCoverURL
          : seriesCoverURL as String,
      storyStr: storyStr == freezed ? _value.storyStr : storyStr as String,
      titleStr: titleStr == freezed ? _value.titleStr : titleStr as String,
      storyController: storyController == freezed
          ? _value.storyController
          : storyController as TextEditingController,
      titleController: titleController == freezed
          ? _value.titleController
          : titleController as TextEditingController,
      title: title == freezed ? _value.title : title as Title,
    ));
  }
}

/// @nodoc
abstract class _$ChapterEditorDatabaseStateCopyWith<$Res>
    implements $ChapterEditorDatabaseStateCopyWith<$Res> {
  factory _$ChapterEditorDatabaseStateCopyWith(
          _ChapterEditorDatabaseState value,
          $Res Function(_ChapterEditorDatabaseState) then) =
      __$ChapterEditorDatabaseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isEditMode,
      bool isFirstChapter,
      bool isLastChapter,
      bool isLoading,
      bool isNSFW,
      bool showErrorMessages,
      Chapter chapterDraft,
      Chapter previousChapter,
      Licence licence,
      EditorContentOrigin editorContentOrigin,
      Genre genre,
      Genre genreOptional,
      int storyWordCount,
      int titleWordCount,
      Language language,
      Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>
          chapterDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
          chapterDraftDatabaseFailureOrSuccessOption,
      Option<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
          placeholderDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>
          seriesDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
          seriesDraftDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
          sessionDatabaseFailureOrSuccessOption,
      Series seriesDraft,
      Story story,
      String chapterCoverURL,
      String copyrightsStr,
      String genreOptionalStr,
      String genreStr,
      String languageStr,
      String seriesCoverURL,
      String storyStr,
      String titleStr,
      TextEditingController storyController,
      TextEditingController titleController,
      Title title});
}

/// @nodoc
class __$ChapterEditorDatabaseStateCopyWithImpl<$Res>
    extends _$ChapterEditorDatabaseStateCopyWithImpl<$Res>
    implements _$ChapterEditorDatabaseStateCopyWith<$Res> {
  __$ChapterEditorDatabaseStateCopyWithImpl(_ChapterEditorDatabaseState _value,
      $Res Function(_ChapterEditorDatabaseState) _then)
      : super(_value, (v) => _then(v as _ChapterEditorDatabaseState));

  @override
  _ChapterEditorDatabaseState get _value =>
      super._value as _ChapterEditorDatabaseState;

  @override
  $Res call({
    Object isEditMode = freezed,
    Object isFirstChapter = freezed,
    Object isLastChapter = freezed,
    Object isLoading = freezed,
    Object isNSFW = freezed,
    Object showErrorMessages = freezed,
    Object chapterDraft = freezed,
    Object previousChapter = freezed,
    Object licence = freezed,
    Object editorContentOrigin = freezed,
    Object genre = freezed,
    Object genreOptional = freezed,
    Object storyWordCount = freezed,
    Object titleWordCount = freezed,
    Object language = freezed,
    Object chapterDatabaseFailureOrSuccessOption = freezed,
    Object chapterDraftDatabaseFailureOrSuccessOption = freezed,
    Object placeholderDatabaseFailureOrSuccessOption = freezed,
    Object seriesDatabaseFailureOrSuccessOption = freezed,
    Object seriesDraftDatabaseFailureOrSuccessOption = freezed,
    Object sessionDatabaseFailureOrSuccessOption = freezed,
    Object seriesDraft = freezed,
    Object story = freezed,
    Object chapterCoverURL = freezed,
    Object copyrightsStr = freezed,
    Object genreOptionalStr = freezed,
    Object genreStr = freezed,
    Object languageStr = freezed,
    Object seriesCoverURL = freezed,
    Object storyStr = freezed,
    Object titleStr = freezed,
    Object storyController = freezed,
    Object titleController = freezed,
    Object title = freezed,
  }) {
    return _then(_ChapterEditorDatabaseState(
      isEditMode:
          isEditMode == freezed ? _value.isEditMode : isEditMode as bool,
      isFirstChapter: isFirstChapter == freezed
          ? _value.isFirstChapter
          : isFirstChapter as bool,
      isLastChapter: isLastChapter == freezed
          ? _value.isLastChapter
          : isLastChapter as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isNSFW: isNSFW == freezed ? _value.isNSFW : isNSFW as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      chapterDraft: chapterDraft == freezed
          ? _value.chapterDraft
          : chapterDraft as Chapter,
      previousChapter: previousChapter == freezed
          ? _value.previousChapter
          : previousChapter as Chapter,
      licence: licence == freezed ? _value.licence : licence as Licence,
      editorContentOrigin: editorContentOrigin == freezed
          ? _value.editorContentOrigin
          : editorContentOrigin as EditorContentOrigin,
      genre: genre == freezed ? _value.genre : genre as Genre,
      genreOptional: genreOptional == freezed
          ? _value.genreOptional
          : genreOptional as Genre,
      storyWordCount: storyWordCount == freezed
          ? _value.storyWordCount
          : storyWordCount as int,
      titleWordCount: titleWordCount == freezed
          ? _value.titleWordCount
          : titleWordCount as int,
      language: language == freezed ? _value.language : language as Language,
      chapterDatabaseFailureOrSuccessOption:
          chapterDatabaseFailureOrSuccessOption == freezed
              ? _value.chapterDatabaseFailureOrSuccessOption
              : chapterDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>,
      chapterDraftDatabaseFailureOrSuccessOption:
          chapterDraftDatabaseFailureOrSuccessOption == freezed
              ? _value.chapterDraftDatabaseFailureOrSuccessOption
              : chapterDraftDatabaseFailureOrSuccessOption as Option<
                  Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>,
      placeholderDatabaseFailureOrSuccessOption:
          placeholderDatabaseFailureOrSuccessOption == freezed
              ? _value.placeholderDatabaseFailureOrSuccessOption
              : placeholderDatabaseFailureOrSuccessOption as Option<
                  Either<PlaceholderDatabaseFailure,
                      PlaceholderDatabaseSuccess>>,
      seriesDatabaseFailureOrSuccessOption:
          seriesDatabaseFailureOrSuccessOption == freezed
              ? _value.seriesDatabaseFailureOrSuccessOption
              : seriesDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>,
      seriesDraftDatabaseFailureOrSuccessOption:
          seriesDraftDatabaseFailureOrSuccessOption == freezed
              ? _value.seriesDraftDatabaseFailureOrSuccessOption
              : seriesDraftDatabaseFailureOrSuccessOption as Option<
                  Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>,
      sessionDatabaseFailureOrSuccessOption:
          sessionDatabaseFailureOrSuccessOption == freezed
              ? _value.sessionDatabaseFailureOrSuccessOption
              : sessionDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, SessionDatabaseSuccess>>,
      seriesDraft:
          seriesDraft == freezed ? _value.seriesDraft : seriesDraft as Series,
      story: story == freezed ? _value.story : story as Story,
      chapterCoverURL: chapterCoverURL == freezed
          ? _value.chapterCoverURL
          : chapterCoverURL as String,
      copyrightsStr: copyrightsStr == freezed
          ? _value.copyrightsStr
          : copyrightsStr as String,
      genreOptionalStr: genreOptionalStr == freezed
          ? _value.genreOptionalStr
          : genreOptionalStr as String,
      genreStr: genreStr == freezed ? _value.genreStr : genreStr as String,
      languageStr:
          languageStr == freezed ? _value.languageStr : languageStr as String,
      seriesCoverURL: seriesCoverURL == freezed
          ? _value.seriesCoverURL
          : seriesCoverURL as String,
      storyStr: storyStr == freezed ? _value.storyStr : storyStr as String,
      titleStr: titleStr == freezed ? _value.titleStr : titleStr as String,
      storyController: storyController == freezed
          ? _value.storyController
          : storyController as TextEditingController,
      titleController: titleController == freezed
          ? _value.titleController
          : titleController as TextEditingController,
      title: title == freezed ? _value.title : title as Title,
    ));
  }
}

/// @nodoc
class _$_ChapterEditorDatabaseState
    with DiagnosticableTreeMixin
    implements _ChapterEditorDatabaseState {
  const _$_ChapterEditorDatabaseState(
      {@required this.isEditMode,
      @required this.isFirstChapter,
      @required this.isLastChapter,
      @required this.isLoading,
      @required this.isNSFW,
      @required this.showErrorMessages,
      @required this.chapterDraft,
      @required this.previousChapter,
      @required this.licence,
      @required this.editorContentOrigin,
      @required this.genre,
      @required this.genreOptional,
      @required this.storyWordCount,
      @required this.titleWordCount,
      @required this.language,
      @required this.chapterDatabaseFailureOrSuccessOption,
      @required this.chapterDraftDatabaseFailureOrSuccessOption,
      @required this.placeholderDatabaseFailureOrSuccessOption,
      @required this.seriesDatabaseFailureOrSuccessOption,
      @required this.seriesDraftDatabaseFailureOrSuccessOption,
      @required this.sessionDatabaseFailureOrSuccessOption,
      @required this.seriesDraft,
      @required this.story,
      @required this.chapterCoverURL,
      @required this.copyrightsStr,
      @required this.genreOptionalStr,
      @required this.genreStr,
      @required this.languageStr,
      @required this.seriesCoverURL,
      @required this.storyStr,
      @required this.titleStr,
      @required this.storyController,
      @required this.titleController,
      @required this.title})
      : assert(isEditMode != null),
        assert(isFirstChapter != null),
        assert(isLastChapter != null),
        assert(isLoading != null),
        assert(isNSFW != null),
        assert(showErrorMessages != null),
        assert(chapterDraft != null),
        assert(previousChapter != null),
        assert(licence != null),
        assert(editorContentOrigin != null),
        assert(genre != null),
        assert(genreOptional != null),
        assert(storyWordCount != null),
        assert(titleWordCount != null),
        assert(language != null),
        assert(chapterDatabaseFailureOrSuccessOption != null),
        assert(chapterDraftDatabaseFailureOrSuccessOption != null),
        assert(placeholderDatabaseFailureOrSuccessOption != null),
        assert(seriesDatabaseFailureOrSuccessOption != null),
        assert(seriesDraftDatabaseFailureOrSuccessOption != null),
        assert(sessionDatabaseFailureOrSuccessOption != null),
        assert(seriesDraft != null),
        assert(story != null),
        assert(chapterCoverURL != null),
        assert(copyrightsStr != null),
        assert(genreOptionalStr != null),
        assert(genreStr != null),
        assert(languageStr != null),
        assert(seriesCoverURL != null),
        assert(storyStr != null),
        assert(titleStr != null),
        assert(storyController != null),
        assert(titleController != null),
        assert(title != null);

  @override
  final bool isEditMode;
  @override
  final bool isFirstChapter;
  @override
  final bool isLastChapter;
  @override
  final bool isLoading;
  @override
  final bool isNSFW;
  @override
  final bool showErrorMessages;
  @override
  final Chapter chapterDraft;
  @override
  final Chapter previousChapter;
  @override
  final Licence licence;
  @override
  final EditorContentOrigin editorContentOrigin;
  @override
  final Genre genre;
  @override
  final Genre genreOptional;
  @override
  final int storyWordCount;
  @override
  final int titleWordCount;
  @override
  final Language language;
  @override
  final Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      chapterDatabaseFailureOrSuccessOption;
  @override
  final Option<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
      chapterDraftDatabaseFailureOrSuccessOption;
  @override
  final Option<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
      placeholderDatabaseFailureOrSuccessOption;
  @override
  final Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      seriesDatabaseFailureOrSuccessOption;
  @override
  final Option<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
      seriesDraftDatabaseFailureOrSuccessOption;
  @override
  final Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
      sessionDatabaseFailureOrSuccessOption;
  @override
  final Series seriesDraft;
  @override
  final Story story;
  @override
  final String chapterCoverURL;
  @override
  final String copyrightsStr;
  @override
  final String genreOptionalStr;
  @override
  final String genreStr;
  @override
  final String languageStr;
  @override
  final String seriesCoverURL;
  @override
  final String storyStr;
  @override
  final String titleStr;
  @override
  final TextEditingController storyController;
  @override
  final TextEditingController titleController;
  @override
  final Title title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterEditorDatabaseState(isEditMode: $isEditMode, isFirstChapter: $isFirstChapter, isLastChapter: $isLastChapter, isLoading: $isLoading, isNSFW: $isNSFW, showErrorMessages: $showErrorMessages, chapterDraft: $chapterDraft, previousChapter: $previousChapter, licence: $licence, editorContentOrigin: $editorContentOrigin, genre: $genre, genreOptional: $genreOptional, storyWordCount: $storyWordCount, titleWordCount: $titleWordCount, language: $language, chapterDatabaseFailureOrSuccessOption: $chapterDatabaseFailureOrSuccessOption, chapterDraftDatabaseFailureOrSuccessOption: $chapterDraftDatabaseFailureOrSuccessOption, placeholderDatabaseFailureOrSuccessOption: $placeholderDatabaseFailureOrSuccessOption, seriesDatabaseFailureOrSuccessOption: $seriesDatabaseFailureOrSuccessOption, seriesDraftDatabaseFailureOrSuccessOption: $seriesDraftDatabaseFailureOrSuccessOption, sessionDatabaseFailureOrSuccessOption: $sessionDatabaseFailureOrSuccessOption, seriesDraft: $seriesDraft, story: $story, chapterCoverURL: $chapterCoverURL, copyrightsStr: $copyrightsStr, genreOptionalStr: $genreOptionalStr, genreStr: $genreStr, languageStr: $languageStr, seriesCoverURL: $seriesCoverURL, storyStr: $storyStr, titleStr: $titleStr, storyController: $storyController, titleController: $titleController, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChapterEditorDatabaseState'))
      ..add(DiagnosticsProperty('isEditMode', isEditMode))
      ..add(DiagnosticsProperty('isFirstChapter', isFirstChapter))
      ..add(DiagnosticsProperty('isLastChapter', isLastChapter))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isNSFW', isNSFW))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('chapterDraft', chapterDraft))
      ..add(DiagnosticsProperty('previousChapter', previousChapter))
      ..add(DiagnosticsProperty('licence', licence))
      ..add(DiagnosticsProperty('editorContentOrigin', editorContentOrigin))
      ..add(DiagnosticsProperty('genre', genre))
      ..add(DiagnosticsProperty('genreOptional', genreOptional))
      ..add(DiagnosticsProperty('storyWordCount', storyWordCount))
      ..add(DiagnosticsProperty('titleWordCount', titleWordCount))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('chapterDatabaseFailureOrSuccessOption',
          chapterDatabaseFailureOrSuccessOption))
      ..add(DiagnosticsProperty('chapterDraftDatabaseFailureOrSuccessOption',
          chapterDraftDatabaseFailureOrSuccessOption))
      ..add(DiagnosticsProperty('placeholderDatabaseFailureOrSuccessOption',
          placeholderDatabaseFailureOrSuccessOption))
      ..add(DiagnosticsProperty('seriesDatabaseFailureOrSuccessOption',
          seriesDatabaseFailureOrSuccessOption))
      ..add(DiagnosticsProperty('seriesDraftDatabaseFailureOrSuccessOption',
          seriesDraftDatabaseFailureOrSuccessOption))
      ..add(DiagnosticsProperty('sessionDatabaseFailureOrSuccessOption',
          sessionDatabaseFailureOrSuccessOption))
      ..add(DiagnosticsProperty('seriesDraft', seriesDraft))
      ..add(DiagnosticsProperty('story', story))
      ..add(DiagnosticsProperty('chapterCoverURL', chapterCoverURL))
      ..add(DiagnosticsProperty('copyrightsStr', copyrightsStr))
      ..add(DiagnosticsProperty('genreOptionalStr', genreOptionalStr))
      ..add(DiagnosticsProperty('genreStr', genreStr))
      ..add(DiagnosticsProperty('languageStr', languageStr))
      ..add(DiagnosticsProperty('seriesCoverURL', seriesCoverURL))
      ..add(DiagnosticsProperty('storyStr', storyStr))
      ..add(DiagnosticsProperty('titleStr', titleStr))
      ..add(DiagnosticsProperty('storyController', storyController))
      ..add(DiagnosticsProperty('titleController', titleController))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChapterEditorDatabaseState &&
            (identical(other.isEditMode, isEditMode) ||
                const DeepCollectionEquality()
                    .equals(other.isEditMode, isEditMode)) &&
            (identical(other.isFirstChapter, isFirstChapter) ||
                const DeepCollectionEquality()
                    .equals(other.isFirstChapter, isFirstChapter)) &&
            (identical(other.isLastChapter, isLastChapter) ||
                const DeepCollectionEquality()
                    .equals(other.isLastChapter, isLastChapter)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isNSFW, isNSFW) ||
                const DeepCollectionEquality().equals(other.isNSFW, isNSFW)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.chapterDraft, chapterDraft) ||
                const DeepCollectionEquality()
                    .equals(other.chapterDraft, chapterDraft)) &&
            (identical(other.previousChapter, previousChapter) ||
                const DeepCollectionEquality()
                    .equals(other.previousChapter, previousChapter)) &&
            (identical(other.licence, licence) ||
                const DeepCollectionEquality()
                    .equals(other.licence, licence)) &&
            (identical(other.editorContentOrigin, editorContentOrigin) ||
                const DeepCollectionEquality()
                    .equals(other.editorContentOrigin, editorContentOrigin)) &&
            (identical(other.genre, genre) ||
                const DeepCollectionEquality().equals(other.genre, genre)) &&
            (identical(other.genreOptional, genreOptional) ||
                const DeepCollectionEquality()
                    .equals(other.genreOptional, genreOptional)) &&
            (identical(other.storyWordCount, storyWordCount) ||
                const DeepCollectionEquality()
                    .equals(other.storyWordCount, storyWordCount)) &&
            (identical(other.titleWordCount, titleWordCount) ||
                const DeepCollectionEquality()
                    .equals(other.titleWordCount, titleWordCount)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.chapterDatabaseFailureOrSuccessOption, chapterDatabaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.chapterDatabaseFailureOrSuccessOption,
                    chapterDatabaseFailureOrSuccessOption)) &&
            (identical(other.chapterDraftDatabaseFailureOrSuccessOption, chapterDraftDatabaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.chapterDraftDatabaseFailureOrSuccessOption,
                    chapterDraftDatabaseFailureOrSuccessOption)) &&
            (identical(other.placeholderDatabaseFailureOrSuccessOption, placeholderDatabaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.placeholderDatabaseFailureOrSuccessOption,
                    placeholderDatabaseFailureOrSuccessOption)) &&
            (identical(other.seriesDatabaseFailureOrSuccessOption, seriesDatabaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.seriesDatabaseFailureOrSuccessOption,
                    seriesDatabaseFailureOrSuccessOption)) &&
            (identical(other.seriesDraftDatabaseFailureOrSuccessOption, seriesDraftDatabaseFailureOrSuccessOption) || const DeepCollectionEquality().equals(other.seriesDraftDatabaseFailureOrSuccessOption, seriesDraftDatabaseFailureOrSuccessOption)) &&
            (identical(other.sessionDatabaseFailureOrSuccessOption, sessionDatabaseFailureOrSuccessOption) || const DeepCollectionEquality().equals(other.sessionDatabaseFailureOrSuccessOption, sessionDatabaseFailureOrSuccessOption)) &&
            (identical(other.seriesDraft, seriesDraft) || const DeepCollectionEquality().equals(other.seriesDraft, seriesDraft)) &&
            (identical(other.story, story) || const DeepCollectionEquality().equals(other.story, story)) &&
            (identical(other.chapterCoverURL, chapterCoverURL) || const DeepCollectionEquality().equals(other.chapterCoverURL, chapterCoverURL)) &&
            (identical(other.copyrightsStr, copyrightsStr) || const DeepCollectionEquality().equals(other.copyrightsStr, copyrightsStr)) &&
            (identical(other.genreOptionalStr, genreOptionalStr) || const DeepCollectionEquality().equals(other.genreOptionalStr, genreOptionalStr)) &&
            (identical(other.genreStr, genreStr) || const DeepCollectionEquality().equals(other.genreStr, genreStr)) &&
            (identical(other.languageStr, languageStr) || const DeepCollectionEquality().equals(other.languageStr, languageStr)) &&
            (identical(other.seriesCoverURL, seriesCoverURL) || const DeepCollectionEquality().equals(other.seriesCoverURL, seriesCoverURL)) &&
            (identical(other.storyStr, storyStr) || const DeepCollectionEquality().equals(other.storyStr, storyStr)) &&
            (identical(other.titleStr, titleStr) || const DeepCollectionEquality().equals(other.titleStr, titleStr)) &&
            (identical(other.storyController, storyController) || const DeepCollectionEquality().equals(other.storyController, storyController)) &&
            (identical(other.titleController, titleController) || const DeepCollectionEquality().equals(other.titleController, titleController)) &&
            (identical(other.title, title) || const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isEditMode) ^
      const DeepCollectionEquality().hash(isFirstChapter) ^
      const DeepCollectionEquality().hash(isLastChapter) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isNSFW) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(chapterDraft) ^
      const DeepCollectionEquality().hash(previousChapter) ^
      const DeepCollectionEquality().hash(licence) ^
      const DeepCollectionEquality().hash(editorContentOrigin) ^
      const DeepCollectionEquality().hash(genre) ^
      const DeepCollectionEquality().hash(genreOptional) ^
      const DeepCollectionEquality().hash(storyWordCount) ^
      const DeepCollectionEquality().hash(titleWordCount) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality()
          .hash(chapterDatabaseFailureOrSuccessOption) ^
      const DeepCollectionEquality()
          .hash(chapterDraftDatabaseFailureOrSuccessOption) ^
      const DeepCollectionEquality()
          .hash(placeholderDatabaseFailureOrSuccessOption) ^
      const DeepCollectionEquality()
          .hash(seriesDatabaseFailureOrSuccessOption) ^
      const DeepCollectionEquality()
          .hash(seriesDraftDatabaseFailureOrSuccessOption) ^
      const DeepCollectionEquality()
          .hash(sessionDatabaseFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(seriesDraft) ^
      const DeepCollectionEquality().hash(story) ^
      const DeepCollectionEquality().hash(chapterCoverURL) ^
      const DeepCollectionEquality().hash(copyrightsStr) ^
      const DeepCollectionEquality().hash(genreOptionalStr) ^
      const DeepCollectionEquality().hash(genreStr) ^
      const DeepCollectionEquality().hash(languageStr) ^
      const DeepCollectionEquality().hash(seriesCoverURL) ^
      const DeepCollectionEquality().hash(storyStr) ^
      const DeepCollectionEquality().hash(titleStr) ^
      const DeepCollectionEquality().hash(storyController) ^
      const DeepCollectionEquality().hash(titleController) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$ChapterEditorDatabaseStateCopyWith<_ChapterEditorDatabaseState>
      get copyWith => __$ChapterEditorDatabaseStateCopyWithImpl<
          _ChapterEditorDatabaseState>(this, _$identity);
}

abstract class _ChapterEditorDatabaseState
    implements ChapterEditorDatabaseState {
  const factory _ChapterEditorDatabaseState(
      {@required
          bool isEditMode,
      @required
          bool isFirstChapter,
      @required
          bool isLastChapter,
      @required
          bool isLoading,
      @required
          bool isNSFW,
      @required
          bool showErrorMessages,
      @required
          Chapter chapterDraft,
      @required
          Chapter previousChapter,
      @required
          Licence licence,
      @required
          EditorContentOrigin editorContentOrigin,
      @required
          Genre genre,
      @required
          Genre genreOptional,
      @required
          int storyWordCount,
      @required
          int titleWordCount,
      @required
          Language language,
      @required
          Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>
              chapterDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
              chapterDraftDatabaseFailureOrSuccessOption,
      @required
          Option<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
              placeholderDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>
              seriesDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
              seriesDraftDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
              sessionDatabaseFailureOrSuccessOption,
      @required
          Series seriesDraft,
      @required
          Story story,
      @required
          String chapterCoverURL,
      @required
          String copyrightsStr,
      @required
          String genreOptionalStr,
      @required
          String genreStr,
      @required
          String languageStr,
      @required
          String seriesCoverURL,
      @required
          String storyStr,
      @required
          String titleStr,
      @required
          TextEditingController storyController,
      @required
          TextEditingController titleController,
      @required
          Title title}) = _$_ChapterEditorDatabaseState;

  @override
  bool get isEditMode;
  @override
  bool get isFirstChapter;
  @override
  bool get isLastChapter;
  @override
  bool get isLoading;
  @override
  bool get isNSFW;
  @override
  bool get showErrorMessages;
  @override
  Chapter get chapterDraft;
  @override
  Chapter get previousChapter;
  @override
  Licence get licence;
  @override
  EditorContentOrigin get editorContentOrigin;
  @override
  Genre get genre;
  @override
  Genre get genreOptional;
  @override
  int get storyWordCount;
  @override
  int get titleWordCount;
  @override
  Language get language;
  @override
  Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      get chapterDatabaseFailureOrSuccessOption;
  @override
  Option<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
      get chapterDraftDatabaseFailureOrSuccessOption;
  @override
  Option<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
      get placeholderDatabaseFailureOrSuccessOption;
  @override
  Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      get seriesDatabaseFailureOrSuccessOption;
  @override
  Option<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
      get seriesDraftDatabaseFailureOrSuccessOption;
  @override
  Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
      get sessionDatabaseFailureOrSuccessOption;
  @override
  Series get seriesDraft;
  @override
  Story get story;
  @override
  String get chapterCoverURL;
  @override
  String get copyrightsStr;
  @override
  String get genreOptionalStr;
  @override
  String get genreStr;
  @override
  String get languageStr;
  @override
  String get seriesCoverURL;
  @override
  String get storyStr;
  @override
  String get titleStr;
  @override
  TextEditingController get storyController;
  @override
  TextEditingController get titleController;
  @override
  Title get title;
  @override
  @JsonKey(ignore: true)
  _$ChapterEditorDatabaseStateCopyWith<_ChapterEditorDatabaseState>
      get copyWith;
}
