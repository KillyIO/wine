// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'new_chapter_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NewChapterDatabaseEventTearOff {
  const _$NewChapterDatabaseEventTearOff();

  AddCoverPressedEVT addCoverPressedEVT() {
    return const AddCoverPressedEVT();
  }

  ChapterDraftDeletedEVT chapterDraftDeletedEVT(Chapter chapter) {
    return ChapterDraftDeletedEVT(
      chapter,
    );
  }

  ChapterPublishedEVT chapterPublishedEVT(Chapter chapter) {
    return ChapterPublishedEVT(
      chapter,
    );
  }

  CopyrightsSelectedEVT copyrightsSelectedEVT(String copyrights) {
    return CopyrightsSelectedEVT(
      copyrights,
    );
  }

  ChapterCoverUploadedEVT chapterCoverUploadedEVT(
      String coverUrl, ChapterDraft chapterDraft) {
    return ChapterCoverUploadedEVT(
      coverUrl,
      chapterDraft,
    );
  }

  DeleteDraftButtonPressedEVT deleteDraftButtonPressedEVT() {
    return const DeleteDraftButtonPressedEVT();
  }

  EditModeLaunchedEVT editModeLaunchedEVT(ChapterDraft chapterDraft) {
    return EditModeLaunchedEVT(
      chapterDraft,
    );
  }

  GenreOptionalSelectedEVT genreOptionalSelectedEVT(String genreOptional) {
    return GenreOptionalSelectedEVT(
      genreOptional,
    );
  }

  GenreSelectedEVT genreSelectedEVT(String genre) {
    return GenreSelectedEVT(
      genre,
    );
  }

  IsEndChangedEVT isEndChangedEVT({@required bool isEnd}) {
    return IsEndChangedEVT(
      isEnd: isEnd,
    );
  }

  IsNSFWChangedEVT isNSFWChangedEVT({@required bool isNSFW}) {
    return IsNSFWChangedEVT(
      isNSFW: isNSFW,
    );
  }

  LanguageSelectedEVT languageSelectedEVT(String language) {
    return LanguageSelectedEVT(
      language,
    );
  }

  NewChapterPageLaunchedEVT newChapterPageLaunchedEVT(
      {@required BuildContext context,
      Chapter previousChapter,
      ChapterDraft chapterDraft,
      SeriesDraft seriesDraft}) {
    return NewChapterPageLaunchedEVT(
      context: context,
      previousChapter: previousChapter,
      chapterDraft: chapterDraft,
      seriesDraft: seriesDraft,
    );
  }

  PlaceholderFetchedEVT placeholderFetchedEVT(
      {Chapter previousChapter,
      SeriesDraft seriesDraft,
      @required String sessionUid,
      @required String coverUrl}) {
    return PlaceholderFetchedEVT(
      previousChapter: previousChapter,
      seriesDraft: seriesDraft,
      sessionUid: sessionUid,
      coverUrl: coverUrl,
    );
  }

  PublishButtonPressedEVT publishButtonPressedEVT() {
    return const PublishButtonPressedEVT();
  }

  SaveOrBackButtonPressedEVT saveOrBackButtonPressedEVT() {
    return const SaveOrBackButtonPressedEVT();
  }

  SeriesCoverUploadedEVT seriesCoverUploadedEVT(
      String coverUrl, SeriesDraft seriesDraft) {
    return SeriesCoverUploadedEVT(
      coverUrl,
      seriesDraft,
    );
  }

  SeriesDraftDeletedEVT seriesDraftDeletedEVT() {
    return const SeriesDraftDeletedEVT();
  }

  SeriesDraftFetchedEVT seriesDraftFetchedEVT(SeriesDraft seriesDraft) {
    return SeriesDraftFetchedEVT(
      seriesDraft,
    );
  }

  SeriesPublishedEVT seriesPublishedEVT(Series series) {
    return SeriesPublishedEVT(
      series,
    );
  }

  SessionFetchedEVT sessionFetchedEVT(
      {@required Session session,
      Chapter previousChapter,
      SeriesDraft seriesDraft}) {
    return SessionFetchedEVT(
      session: session,
      previousChapter: previousChapter,
      seriesDraft: seriesDraft,
    );
  }

  StoryChangedEVT storyChangedEVT(String story) {
    return StoryChangedEVT(
      story,
    );
  }

  TitleChangedEVT titleChangedEVT(String title) {
    return TitleChangedEVT(
      title,
    );
  }
}

// ignore: unused_element
const $NewChapterDatabaseEvent = _$NewChapterDatabaseEventTearOff();

mixin _$NewChapterDatabaseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
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

abstract class $AddCoverPressedEVTCopyWith<$Res> {
  factory $AddCoverPressedEVTCopyWith(
          AddCoverPressedEVT value, $Res Function(AddCoverPressedEVT) then) =
      _$AddCoverPressedEVTCopyWithImpl<$Res>;
}

class _$AddCoverPressedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $AddCoverPressedEVTCopyWith<$Res> {
  _$AddCoverPressedEVTCopyWithImpl(
      AddCoverPressedEVT _value, $Res Function(AddCoverPressedEVT) _then)
      : super(_value, (v) => _then(v as AddCoverPressedEVT));

  @override
  AddCoverPressedEVT get _value => super._value as AddCoverPressedEVT;
}

class _$AddCoverPressedEVT
    with DiagnosticableTreeMixin
    implements AddCoverPressedEVT {
  const _$AddCoverPressedEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.addCoverPressedEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.addCoverPressedEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddCoverPressedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return addCoverPressedEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addCoverPressedEVT != null) {
      return addCoverPressedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return addCoverPressedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addCoverPressedEVT != null) {
      return addCoverPressedEVT(this);
    }
    return orElse();
  }
}

abstract class AddCoverPressedEVT implements NewChapterDatabaseEvent {
  const factory AddCoverPressedEVT() = _$AddCoverPressedEVT;
}

abstract class $ChapterDraftDeletedEVTCopyWith<$Res> {
  factory $ChapterDraftDeletedEVTCopyWith(ChapterDraftDeletedEVT value,
          $Res Function(ChapterDraftDeletedEVT) then) =
      _$ChapterDraftDeletedEVTCopyWithImpl<$Res>;
  $Res call({Chapter chapter});
}

class _$ChapterDraftDeletedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $ChapterDraftDeletedEVTCopyWith<$Res> {
  _$ChapterDraftDeletedEVTCopyWithImpl(ChapterDraftDeletedEVT _value,
      $Res Function(ChapterDraftDeletedEVT) _then)
      : super(_value, (v) => _then(v as ChapterDraftDeletedEVT));

  @override
  ChapterDraftDeletedEVT get _value => super._value as ChapterDraftDeletedEVT;

  @override
  $Res call({
    Object chapter = freezed,
  }) {
    return _then(ChapterDraftDeletedEVT(
      chapter == freezed ? _value.chapter : chapter as Chapter,
    ));
  }
}

class _$ChapterDraftDeletedEVT
    with DiagnosticableTreeMixin
    implements ChapterDraftDeletedEVT {
  const _$ChapterDraftDeletedEVT(this.chapter) : assert(chapter != null);

  @override
  final Chapter chapter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.chapterDraftDeletedEVT(chapter: $chapter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.chapterDraftDeletedEVT'))
      ..add(DiagnosticsProperty('chapter', chapter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterDraftDeletedEVT &&
            (identical(other.chapter, chapter) ||
                const DeepCollectionEquality().equals(other.chapter, chapter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapter);

  @override
  $ChapterDraftDeletedEVTCopyWith<ChapterDraftDeletedEVT> get copyWith =>
      _$ChapterDraftDeletedEVTCopyWithImpl<ChapterDraftDeletedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return chapterDraftDeletedEVT(chapter);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftDeletedEVT != null) {
      return chapterDraftDeletedEVT(chapter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return chapterDraftDeletedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftDeletedEVT != null) {
      return chapterDraftDeletedEVT(this);
    }
    return orElse();
  }
}

abstract class ChapterDraftDeletedEVT implements NewChapterDatabaseEvent {
  const factory ChapterDraftDeletedEVT(Chapter chapter) =
      _$ChapterDraftDeletedEVT;

  Chapter get chapter;
  $ChapterDraftDeletedEVTCopyWith<ChapterDraftDeletedEVT> get copyWith;
}

abstract class $ChapterPublishedEVTCopyWith<$Res> {
  factory $ChapterPublishedEVTCopyWith(
          ChapterPublishedEVT value, $Res Function(ChapterPublishedEVT) then) =
      _$ChapterPublishedEVTCopyWithImpl<$Res>;
  $Res call({Chapter chapter});
}

class _$ChapterPublishedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $ChapterPublishedEVTCopyWith<$Res> {
  _$ChapterPublishedEVTCopyWithImpl(
      ChapterPublishedEVT _value, $Res Function(ChapterPublishedEVT) _then)
      : super(_value, (v) => _then(v as ChapterPublishedEVT));

  @override
  ChapterPublishedEVT get _value => super._value as ChapterPublishedEVT;

  @override
  $Res call({
    Object chapter = freezed,
  }) {
    return _then(ChapterPublishedEVT(
      chapter == freezed ? _value.chapter : chapter as Chapter,
    ));
  }
}

class _$ChapterPublishedEVT
    with DiagnosticableTreeMixin
    implements ChapterPublishedEVT {
  const _$ChapterPublishedEVT(this.chapter) : assert(chapter != null);

  @override
  final Chapter chapter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.chapterPublishedEVT(chapter: $chapter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.chapterPublishedEVT'))
      ..add(DiagnosticsProperty('chapter', chapter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterPublishedEVT &&
            (identical(other.chapter, chapter) ||
                const DeepCollectionEquality().equals(other.chapter, chapter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapter);

  @override
  $ChapterPublishedEVTCopyWith<ChapterPublishedEVT> get copyWith =>
      _$ChapterPublishedEVTCopyWithImpl<ChapterPublishedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return chapterPublishedEVT(chapter);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedEVT != null) {
      return chapterPublishedEVT(chapter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return chapterPublishedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedEVT != null) {
      return chapterPublishedEVT(this);
    }
    return orElse();
  }
}

abstract class ChapterPublishedEVT implements NewChapterDatabaseEvent {
  const factory ChapterPublishedEVT(Chapter chapter) = _$ChapterPublishedEVT;

  Chapter get chapter;
  $ChapterPublishedEVTCopyWith<ChapterPublishedEVT> get copyWith;
}

abstract class $CopyrightsSelectedEVTCopyWith<$Res> {
  factory $CopyrightsSelectedEVTCopyWith(CopyrightsSelectedEVT value,
          $Res Function(CopyrightsSelectedEVT) then) =
      _$CopyrightsSelectedEVTCopyWithImpl<$Res>;
  $Res call({String copyrights});
}

class _$CopyrightsSelectedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $CopyrightsSelectedEVTCopyWith<$Res> {
  _$CopyrightsSelectedEVTCopyWithImpl(
      CopyrightsSelectedEVT _value, $Res Function(CopyrightsSelectedEVT) _then)
      : super(_value, (v) => _then(v as CopyrightsSelectedEVT));

  @override
  CopyrightsSelectedEVT get _value => super._value as CopyrightsSelectedEVT;

  @override
  $Res call({
    Object copyrights = freezed,
  }) {
    return _then(CopyrightsSelectedEVT(
      copyrights == freezed ? _value.copyrights : copyrights as String,
    ));
  }
}

class _$CopyrightsSelectedEVT
    with DiagnosticableTreeMixin
    implements CopyrightsSelectedEVT {
  const _$CopyrightsSelectedEVT(this.copyrights) : assert(copyrights != null);

  @override
  final String copyrights;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.copyrightsSelectedEVT(copyrights: $copyrights)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.copyrightsSelectedEVT'))
      ..add(DiagnosticsProperty('copyrights', copyrights));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CopyrightsSelectedEVT &&
            (identical(other.copyrights, copyrights) ||
                const DeepCollectionEquality()
                    .equals(other.copyrights, copyrights)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(copyrights);

  @override
  $CopyrightsSelectedEVTCopyWith<CopyrightsSelectedEVT> get copyWith =>
      _$CopyrightsSelectedEVTCopyWithImpl<CopyrightsSelectedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return copyrightsSelectedEVT(copyrights);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (copyrightsSelectedEVT != null) {
      return copyrightsSelectedEVT(copyrights);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return copyrightsSelectedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (copyrightsSelectedEVT != null) {
      return copyrightsSelectedEVT(this);
    }
    return orElse();
  }
}

abstract class CopyrightsSelectedEVT implements NewChapterDatabaseEvent {
  const factory CopyrightsSelectedEVT(String copyrights) =
      _$CopyrightsSelectedEVT;

  String get copyrights;
  $CopyrightsSelectedEVTCopyWith<CopyrightsSelectedEVT> get copyWith;
}

abstract class $ChapterCoverUploadedEVTCopyWith<$Res> {
  factory $ChapterCoverUploadedEVTCopyWith(ChapterCoverUploadedEVT value,
          $Res Function(ChapterCoverUploadedEVT) then) =
      _$ChapterCoverUploadedEVTCopyWithImpl<$Res>;
  $Res call({String coverUrl, ChapterDraft chapterDraft});
}

class _$ChapterCoverUploadedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $ChapterCoverUploadedEVTCopyWith<$Res> {
  _$ChapterCoverUploadedEVTCopyWithImpl(ChapterCoverUploadedEVT _value,
      $Res Function(ChapterCoverUploadedEVT) _then)
      : super(_value, (v) => _then(v as ChapterCoverUploadedEVT));

  @override
  ChapterCoverUploadedEVT get _value => super._value as ChapterCoverUploadedEVT;

  @override
  $Res call({
    Object coverUrl = freezed,
    Object chapterDraft = freezed,
  }) {
    return _then(ChapterCoverUploadedEVT(
      coverUrl == freezed ? _value.coverUrl : coverUrl as String,
      chapterDraft == freezed
          ? _value.chapterDraft
          : chapterDraft as ChapterDraft,
    ));
  }
}

class _$ChapterCoverUploadedEVT
    with DiagnosticableTreeMixin
    implements ChapterCoverUploadedEVT {
  const _$ChapterCoverUploadedEVT(this.coverUrl, this.chapterDraft)
      : assert(coverUrl != null),
        assert(chapterDraft != null);

  @override
  final String coverUrl;
  @override
  final ChapterDraft chapterDraft;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.chapterCoverUploadedEVT(coverUrl: $coverUrl, chapterDraft: $chapterDraft)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.chapterCoverUploadedEVT'))
      ..add(DiagnosticsProperty('coverUrl', coverUrl))
      ..add(DiagnosticsProperty('chapterDraft', chapterDraft));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterCoverUploadedEVT &&
            (identical(other.coverUrl, coverUrl) ||
                const DeepCollectionEquality()
                    .equals(other.coverUrl, coverUrl)) &&
            (identical(other.chapterDraft, chapterDraft) ||
                const DeepCollectionEquality()
                    .equals(other.chapterDraft, chapterDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coverUrl) ^
      const DeepCollectionEquality().hash(chapterDraft);

  @override
  $ChapterCoverUploadedEVTCopyWith<ChapterCoverUploadedEVT> get copyWith =>
      _$ChapterCoverUploadedEVTCopyWithImpl<ChapterCoverUploadedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return chapterCoverUploadedEVT(coverUrl, chapterDraft);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (chapterCoverUploadedEVT != null) {
      return chapterCoverUploadedEVT(coverUrl, chapterDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return chapterCoverUploadedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (chapterCoverUploadedEVT != null) {
      return chapterCoverUploadedEVT(this);
    }
    return orElse();
  }
}

abstract class ChapterCoverUploadedEVT implements NewChapterDatabaseEvent {
  const factory ChapterCoverUploadedEVT(
      String coverUrl, ChapterDraft chapterDraft) = _$ChapterCoverUploadedEVT;

  String get coverUrl;
  ChapterDraft get chapterDraft;
  $ChapterCoverUploadedEVTCopyWith<ChapterCoverUploadedEVT> get copyWith;
}

abstract class $DeleteDraftButtonPressedEVTCopyWith<$Res> {
  factory $DeleteDraftButtonPressedEVTCopyWith(
          DeleteDraftButtonPressedEVT value,
          $Res Function(DeleteDraftButtonPressedEVT) then) =
      _$DeleteDraftButtonPressedEVTCopyWithImpl<$Res>;
}

class _$DeleteDraftButtonPressedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $DeleteDraftButtonPressedEVTCopyWith<$Res> {
  _$DeleteDraftButtonPressedEVTCopyWithImpl(DeleteDraftButtonPressedEVT _value,
      $Res Function(DeleteDraftButtonPressedEVT) _then)
      : super(_value, (v) => _then(v as DeleteDraftButtonPressedEVT));

  @override
  DeleteDraftButtonPressedEVT get _value =>
      super._value as DeleteDraftButtonPressedEVT;
}

class _$DeleteDraftButtonPressedEVT
    with DiagnosticableTreeMixin
    implements DeleteDraftButtonPressedEVT {
  const _$DeleteDraftButtonPressedEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.deleteDraftButtonPressedEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.deleteDraftButtonPressedEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteDraftButtonPressedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return deleteDraftButtonPressedEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteDraftButtonPressedEVT != null) {
      return deleteDraftButtonPressedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return deleteDraftButtonPressedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteDraftButtonPressedEVT != null) {
      return deleteDraftButtonPressedEVT(this);
    }
    return orElse();
  }
}

abstract class DeleteDraftButtonPressedEVT implements NewChapterDatabaseEvent {
  const factory DeleteDraftButtonPressedEVT() = _$DeleteDraftButtonPressedEVT;
}

abstract class $EditModeLaunchedEVTCopyWith<$Res> {
  factory $EditModeLaunchedEVTCopyWith(
          EditModeLaunchedEVT value, $Res Function(EditModeLaunchedEVT) then) =
      _$EditModeLaunchedEVTCopyWithImpl<$Res>;
  $Res call({ChapterDraft chapterDraft});
}

class _$EditModeLaunchedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $EditModeLaunchedEVTCopyWith<$Res> {
  _$EditModeLaunchedEVTCopyWithImpl(
      EditModeLaunchedEVT _value, $Res Function(EditModeLaunchedEVT) _then)
      : super(_value, (v) => _then(v as EditModeLaunchedEVT));

  @override
  EditModeLaunchedEVT get _value => super._value as EditModeLaunchedEVT;

  @override
  $Res call({
    Object chapterDraft = freezed,
  }) {
    return _then(EditModeLaunchedEVT(
      chapterDraft == freezed
          ? _value.chapterDraft
          : chapterDraft as ChapterDraft,
    ));
  }
}

class _$EditModeLaunchedEVT
    with DiagnosticableTreeMixin
    implements EditModeLaunchedEVT {
  const _$EditModeLaunchedEVT(this.chapterDraft) : assert(chapterDraft != null);

  @override
  final ChapterDraft chapterDraft;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.editModeLaunchedEVT(chapterDraft: $chapterDraft)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.editModeLaunchedEVT'))
      ..add(DiagnosticsProperty('chapterDraft', chapterDraft));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditModeLaunchedEVT &&
            (identical(other.chapterDraft, chapterDraft) ||
                const DeepCollectionEquality()
                    .equals(other.chapterDraft, chapterDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapterDraft);

  @override
  $EditModeLaunchedEVTCopyWith<EditModeLaunchedEVT> get copyWith =>
      _$EditModeLaunchedEVTCopyWithImpl<EditModeLaunchedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return editModeLaunchedEVT(chapterDraft);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editModeLaunchedEVT != null) {
      return editModeLaunchedEVT(chapterDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return editModeLaunchedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editModeLaunchedEVT != null) {
      return editModeLaunchedEVT(this);
    }
    return orElse();
  }
}

abstract class EditModeLaunchedEVT implements NewChapterDatabaseEvent {
  const factory EditModeLaunchedEVT(ChapterDraft chapterDraft) =
      _$EditModeLaunchedEVT;

  ChapterDraft get chapterDraft;
  $EditModeLaunchedEVTCopyWith<EditModeLaunchedEVT> get copyWith;
}

abstract class $GenreOptionalSelectedEVTCopyWith<$Res> {
  factory $GenreOptionalSelectedEVTCopyWith(GenreOptionalSelectedEVT value,
          $Res Function(GenreOptionalSelectedEVT) then) =
      _$GenreOptionalSelectedEVTCopyWithImpl<$Res>;
  $Res call({String genreOptional});
}

class _$GenreOptionalSelectedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $GenreOptionalSelectedEVTCopyWith<$Res> {
  _$GenreOptionalSelectedEVTCopyWithImpl(GenreOptionalSelectedEVT _value,
      $Res Function(GenreOptionalSelectedEVT) _then)
      : super(_value, (v) => _then(v as GenreOptionalSelectedEVT));

  @override
  GenreOptionalSelectedEVT get _value =>
      super._value as GenreOptionalSelectedEVT;

  @override
  $Res call({
    Object genreOptional = freezed,
  }) {
    return _then(GenreOptionalSelectedEVT(
      genreOptional == freezed ? _value.genreOptional : genreOptional as String,
    ));
  }
}

class _$GenreOptionalSelectedEVT
    with DiagnosticableTreeMixin
    implements GenreOptionalSelectedEVT {
  const _$GenreOptionalSelectedEVT(this.genreOptional)
      : assert(genreOptional != null);

  @override
  final String genreOptional;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.genreOptionalSelectedEVT(genreOptional: $genreOptional)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.genreOptionalSelectedEVT'))
      ..add(DiagnosticsProperty('genreOptional', genreOptional));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GenreOptionalSelectedEVT &&
            (identical(other.genreOptional, genreOptional) ||
                const DeepCollectionEquality()
                    .equals(other.genreOptional, genreOptional)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(genreOptional);

  @override
  $GenreOptionalSelectedEVTCopyWith<GenreOptionalSelectedEVT> get copyWith =>
      _$GenreOptionalSelectedEVTCopyWithImpl<GenreOptionalSelectedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return genreOptionalSelectedEVT(genreOptional);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genreOptionalSelectedEVT != null) {
      return genreOptionalSelectedEVT(genreOptional);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return genreOptionalSelectedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genreOptionalSelectedEVT != null) {
      return genreOptionalSelectedEVT(this);
    }
    return orElse();
  }
}

abstract class GenreOptionalSelectedEVT implements NewChapterDatabaseEvent {
  const factory GenreOptionalSelectedEVT(String genreOptional) =
      _$GenreOptionalSelectedEVT;

  String get genreOptional;
  $GenreOptionalSelectedEVTCopyWith<GenreOptionalSelectedEVT> get copyWith;
}

abstract class $GenreSelectedEVTCopyWith<$Res> {
  factory $GenreSelectedEVTCopyWith(
          GenreSelectedEVT value, $Res Function(GenreSelectedEVT) then) =
      _$GenreSelectedEVTCopyWithImpl<$Res>;
  $Res call({String genre});
}

class _$GenreSelectedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $GenreSelectedEVTCopyWith<$Res> {
  _$GenreSelectedEVTCopyWithImpl(
      GenreSelectedEVT _value, $Res Function(GenreSelectedEVT) _then)
      : super(_value, (v) => _then(v as GenreSelectedEVT));

  @override
  GenreSelectedEVT get _value => super._value as GenreSelectedEVT;

  @override
  $Res call({
    Object genre = freezed,
  }) {
    return _then(GenreSelectedEVT(
      genre == freezed ? _value.genre : genre as String,
    ));
  }
}

class _$GenreSelectedEVT
    with DiagnosticableTreeMixin
    implements GenreSelectedEVT {
  const _$GenreSelectedEVT(this.genre) : assert(genre != null);

  @override
  final String genre;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.genreSelectedEVT(genre: $genre)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.genreSelectedEVT'))
      ..add(DiagnosticsProperty('genre', genre));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GenreSelectedEVT &&
            (identical(other.genre, genre) ||
                const DeepCollectionEquality().equals(other.genre, genre)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(genre);

  @override
  $GenreSelectedEVTCopyWith<GenreSelectedEVT> get copyWith =>
      _$GenreSelectedEVTCopyWithImpl<GenreSelectedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return genreSelectedEVT(genre);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genreSelectedEVT != null) {
      return genreSelectedEVT(genre);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return genreSelectedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genreSelectedEVT != null) {
      return genreSelectedEVT(this);
    }
    return orElse();
  }
}

abstract class GenreSelectedEVT implements NewChapterDatabaseEvent {
  const factory GenreSelectedEVT(String genre) = _$GenreSelectedEVT;

  String get genre;
  $GenreSelectedEVTCopyWith<GenreSelectedEVT> get copyWith;
}

abstract class $IsEndChangedEVTCopyWith<$Res> {
  factory $IsEndChangedEVTCopyWith(
          IsEndChangedEVT value, $Res Function(IsEndChangedEVT) then) =
      _$IsEndChangedEVTCopyWithImpl<$Res>;
  $Res call({bool isEnd});
}

class _$IsEndChangedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $IsEndChangedEVTCopyWith<$Res> {
  _$IsEndChangedEVTCopyWithImpl(
      IsEndChangedEVT _value, $Res Function(IsEndChangedEVT) _then)
      : super(_value, (v) => _then(v as IsEndChangedEVT));

  @override
  IsEndChangedEVT get _value => super._value as IsEndChangedEVT;

  @override
  $Res call({
    Object isEnd = freezed,
  }) {
    return _then(IsEndChangedEVT(
      isEnd: isEnd == freezed ? _value.isEnd : isEnd as bool,
    ));
  }
}

class _$IsEndChangedEVT
    with DiagnosticableTreeMixin
    implements IsEndChangedEVT {
  const _$IsEndChangedEVT({@required this.isEnd}) : assert(isEnd != null);

  @override
  final bool isEnd;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.isEndChangedEVT(isEnd: $isEnd)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.isEndChangedEVT'))
      ..add(DiagnosticsProperty('isEnd', isEnd));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsEndChangedEVT &&
            (identical(other.isEnd, isEnd) ||
                const DeepCollectionEquality().equals(other.isEnd, isEnd)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isEnd);

  @override
  $IsEndChangedEVTCopyWith<IsEndChangedEVT> get copyWith =>
      _$IsEndChangedEVTCopyWithImpl<IsEndChangedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return isEndChangedEVT(isEnd);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isEndChangedEVT != null) {
      return isEndChangedEVT(isEnd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return isEndChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isEndChangedEVT != null) {
      return isEndChangedEVT(this);
    }
    return orElse();
  }
}

abstract class IsEndChangedEVT implements NewChapterDatabaseEvent {
  const factory IsEndChangedEVT({@required bool isEnd}) = _$IsEndChangedEVT;

  bool get isEnd;
  $IsEndChangedEVTCopyWith<IsEndChangedEVT> get copyWith;
}

abstract class $IsNSFWChangedEVTCopyWith<$Res> {
  factory $IsNSFWChangedEVTCopyWith(
          IsNSFWChangedEVT value, $Res Function(IsNSFWChangedEVT) then) =
      _$IsNSFWChangedEVTCopyWithImpl<$Res>;
  $Res call({bool isNSFW});
}

class _$IsNSFWChangedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $IsNSFWChangedEVTCopyWith<$Res> {
  _$IsNSFWChangedEVTCopyWithImpl(
      IsNSFWChangedEVT _value, $Res Function(IsNSFWChangedEVT) _then)
      : super(_value, (v) => _then(v as IsNSFWChangedEVT));

  @override
  IsNSFWChangedEVT get _value => super._value as IsNSFWChangedEVT;

  @override
  $Res call({
    Object isNSFW = freezed,
  }) {
    return _then(IsNSFWChangedEVT(
      isNSFW: isNSFW == freezed ? _value.isNSFW : isNSFW as bool,
    ));
  }
}

class _$IsNSFWChangedEVT
    with DiagnosticableTreeMixin
    implements IsNSFWChangedEVT {
  const _$IsNSFWChangedEVT({@required this.isNSFW}) : assert(isNSFW != null);

  @override
  final bool isNSFW;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.isNSFWChangedEVT(isNSFW: $isNSFW)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.isNSFWChangedEVT'))
      ..add(DiagnosticsProperty('isNSFW', isNSFW));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsNSFWChangedEVT &&
            (identical(other.isNSFW, isNSFW) ||
                const DeepCollectionEquality().equals(other.isNSFW, isNSFW)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isNSFW);

  @override
  $IsNSFWChangedEVTCopyWith<IsNSFWChangedEVT> get copyWith =>
      _$IsNSFWChangedEVTCopyWithImpl<IsNSFWChangedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return isNSFWChangedEVT(isNSFW);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isNSFWChangedEVT != null) {
      return isNSFWChangedEVT(isNSFW);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return isNSFWChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isNSFWChangedEVT != null) {
      return isNSFWChangedEVT(this);
    }
    return orElse();
  }
}

abstract class IsNSFWChangedEVT implements NewChapterDatabaseEvent {
  const factory IsNSFWChangedEVT({@required bool isNSFW}) = _$IsNSFWChangedEVT;

  bool get isNSFW;
  $IsNSFWChangedEVTCopyWith<IsNSFWChangedEVT> get copyWith;
}

abstract class $LanguageSelectedEVTCopyWith<$Res> {
  factory $LanguageSelectedEVTCopyWith(
          LanguageSelectedEVT value, $Res Function(LanguageSelectedEVT) then) =
      _$LanguageSelectedEVTCopyWithImpl<$Res>;
  $Res call({String language});
}

class _$LanguageSelectedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $LanguageSelectedEVTCopyWith<$Res> {
  _$LanguageSelectedEVTCopyWithImpl(
      LanguageSelectedEVT _value, $Res Function(LanguageSelectedEVT) _then)
      : super(_value, (v) => _then(v as LanguageSelectedEVT));

  @override
  LanguageSelectedEVT get _value => super._value as LanguageSelectedEVT;

  @override
  $Res call({
    Object language = freezed,
  }) {
    return _then(LanguageSelectedEVT(
      language == freezed ? _value.language : language as String,
    ));
  }
}

class _$LanguageSelectedEVT
    with DiagnosticableTreeMixin
    implements LanguageSelectedEVT {
  const _$LanguageSelectedEVT(this.language) : assert(language != null);

  @override
  final String language;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.languageSelectedEVT(language: $language)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.languageSelectedEVT'))
      ..add(DiagnosticsProperty('language', language));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LanguageSelectedEVT &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(language);

  @override
  $LanguageSelectedEVTCopyWith<LanguageSelectedEVT> get copyWith =>
      _$LanguageSelectedEVTCopyWithImpl<LanguageSelectedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return languageSelectedEVT(language);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (languageSelectedEVT != null) {
      return languageSelectedEVT(language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return languageSelectedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (languageSelectedEVT != null) {
      return languageSelectedEVT(this);
    }
    return orElse();
  }
}

abstract class LanguageSelectedEVT implements NewChapterDatabaseEvent {
  const factory LanguageSelectedEVT(String language) = _$LanguageSelectedEVT;

  String get language;
  $LanguageSelectedEVTCopyWith<LanguageSelectedEVT> get copyWith;
}

abstract class $NewChapterPageLaunchedEVTCopyWith<$Res> {
  factory $NewChapterPageLaunchedEVTCopyWith(NewChapterPageLaunchedEVT value,
          $Res Function(NewChapterPageLaunchedEVT) then) =
      _$NewChapterPageLaunchedEVTCopyWithImpl<$Res>;
  $Res call(
      {BuildContext context,
      Chapter previousChapter,
      ChapterDraft chapterDraft,
      SeriesDraft seriesDraft});
}

class _$NewChapterPageLaunchedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $NewChapterPageLaunchedEVTCopyWith<$Res> {
  _$NewChapterPageLaunchedEVTCopyWithImpl(NewChapterPageLaunchedEVT _value,
      $Res Function(NewChapterPageLaunchedEVT) _then)
      : super(_value, (v) => _then(v as NewChapterPageLaunchedEVT));

  @override
  NewChapterPageLaunchedEVT get _value =>
      super._value as NewChapterPageLaunchedEVT;

  @override
  $Res call({
    Object context = freezed,
    Object previousChapter = freezed,
    Object chapterDraft = freezed,
    Object seriesDraft = freezed,
  }) {
    return _then(NewChapterPageLaunchedEVT(
      context: context == freezed ? _value.context : context as BuildContext,
      previousChapter: previousChapter == freezed
          ? _value.previousChapter
          : previousChapter as Chapter,
      chapterDraft: chapterDraft == freezed
          ? _value.chapterDraft
          : chapterDraft as ChapterDraft,
      seriesDraft: seriesDraft == freezed
          ? _value.seriesDraft
          : seriesDraft as SeriesDraft,
    ));
  }
}

class _$NewChapterPageLaunchedEVT
    with DiagnosticableTreeMixin
    implements NewChapterPageLaunchedEVT {
  const _$NewChapterPageLaunchedEVT(
      {@required this.context,
      this.previousChapter,
      this.chapterDraft,
      this.seriesDraft})
      : assert(context != null);

  @override
  final BuildContext context;
  @override
  final Chapter previousChapter;
  @override
  final ChapterDraft chapterDraft;
  @override
  final SeriesDraft seriesDraft;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.newChapterPageLaunchedEVT(context: $context, previousChapter: $previousChapter, chapterDraft: $chapterDraft, seriesDraft: $seriesDraft)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.newChapterPageLaunchedEVT'))
      ..add(DiagnosticsProperty('context', context))
      ..add(DiagnosticsProperty('previousChapter', previousChapter))
      ..add(DiagnosticsProperty('chapterDraft', chapterDraft))
      ..add(DiagnosticsProperty('seriesDraft', seriesDraft));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewChapterPageLaunchedEVT &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.previousChapter, previousChapter) ||
                const DeepCollectionEquality()
                    .equals(other.previousChapter, previousChapter)) &&
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
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(previousChapter) ^
      const DeepCollectionEquality().hash(chapterDraft) ^
      const DeepCollectionEquality().hash(seriesDraft);

  @override
  $NewChapterPageLaunchedEVTCopyWith<NewChapterPageLaunchedEVT> get copyWith =>
      _$NewChapterPageLaunchedEVTCopyWithImpl<NewChapterPageLaunchedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return newChapterPageLaunchedEVT(
        context, previousChapter, chapterDraft, seriesDraft);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newChapterPageLaunchedEVT != null) {
      return newChapterPageLaunchedEVT(
          context, previousChapter, chapterDraft, seriesDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return newChapterPageLaunchedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newChapterPageLaunchedEVT != null) {
      return newChapterPageLaunchedEVT(this);
    }
    return orElse();
  }
}

abstract class NewChapterPageLaunchedEVT implements NewChapterDatabaseEvent {
  const factory NewChapterPageLaunchedEVT(
      {@required BuildContext context,
      Chapter previousChapter,
      ChapterDraft chapterDraft,
      SeriesDraft seriesDraft}) = _$NewChapterPageLaunchedEVT;

  BuildContext get context;
  Chapter get previousChapter;
  ChapterDraft get chapterDraft;
  SeriesDraft get seriesDraft;
  $NewChapterPageLaunchedEVTCopyWith<NewChapterPageLaunchedEVT> get copyWith;
}

abstract class $PlaceholderFetchedEVTCopyWith<$Res> {
  factory $PlaceholderFetchedEVTCopyWith(PlaceholderFetchedEVT value,
          $Res Function(PlaceholderFetchedEVT) then) =
      _$PlaceholderFetchedEVTCopyWithImpl<$Res>;
  $Res call(
      {Chapter previousChapter,
      SeriesDraft seriesDraft,
      String sessionUid,
      String coverUrl});
}

class _$PlaceholderFetchedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $PlaceholderFetchedEVTCopyWith<$Res> {
  _$PlaceholderFetchedEVTCopyWithImpl(
      PlaceholderFetchedEVT _value, $Res Function(PlaceholderFetchedEVT) _then)
      : super(_value, (v) => _then(v as PlaceholderFetchedEVT));

  @override
  PlaceholderFetchedEVT get _value => super._value as PlaceholderFetchedEVT;

  @override
  $Res call({
    Object previousChapter = freezed,
    Object seriesDraft = freezed,
    Object sessionUid = freezed,
    Object coverUrl = freezed,
  }) {
    return _then(PlaceholderFetchedEVT(
      previousChapter: previousChapter == freezed
          ? _value.previousChapter
          : previousChapter as Chapter,
      seriesDraft: seriesDraft == freezed
          ? _value.seriesDraft
          : seriesDraft as SeriesDraft,
      sessionUid:
          sessionUid == freezed ? _value.sessionUid : sessionUid as String,
      coverUrl: coverUrl == freezed ? _value.coverUrl : coverUrl as String,
    ));
  }
}

class _$PlaceholderFetchedEVT
    with DiagnosticableTreeMixin
    implements PlaceholderFetchedEVT {
  const _$PlaceholderFetchedEVT(
      {this.previousChapter,
      this.seriesDraft,
      @required this.sessionUid,
      @required this.coverUrl})
      : assert(sessionUid != null),
        assert(coverUrl != null);

  @override
  final Chapter previousChapter;
  @override
  final SeriesDraft seriesDraft;
  @override
  final String sessionUid;
  @override
  final String coverUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.placeholderFetchedEVT(previousChapter: $previousChapter, seriesDraft: $seriesDraft, sessionUid: $sessionUid, coverUrl: $coverUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.placeholderFetchedEVT'))
      ..add(DiagnosticsProperty('previousChapter', previousChapter))
      ..add(DiagnosticsProperty('seriesDraft', seriesDraft))
      ..add(DiagnosticsProperty('sessionUid', sessionUid))
      ..add(DiagnosticsProperty('coverUrl', coverUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaceholderFetchedEVT &&
            (identical(other.previousChapter, previousChapter) ||
                const DeepCollectionEquality()
                    .equals(other.previousChapter, previousChapter)) &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)) &&
            (identical(other.sessionUid, sessionUid) ||
                const DeepCollectionEquality()
                    .equals(other.sessionUid, sessionUid)) &&
            (identical(other.coverUrl, coverUrl) ||
                const DeepCollectionEquality()
                    .equals(other.coverUrl, coverUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(previousChapter) ^
      const DeepCollectionEquality().hash(seriesDraft) ^
      const DeepCollectionEquality().hash(sessionUid) ^
      const DeepCollectionEquality().hash(coverUrl);

  @override
  $PlaceholderFetchedEVTCopyWith<PlaceholderFetchedEVT> get copyWith =>
      _$PlaceholderFetchedEVTCopyWithImpl<PlaceholderFetchedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return placeholderFetchedEVT(
        previousChapter, seriesDraft, sessionUid, coverUrl);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (placeholderFetchedEVT != null) {
      return placeholderFetchedEVT(
          previousChapter, seriesDraft, sessionUid, coverUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return placeholderFetchedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (placeholderFetchedEVT != null) {
      return placeholderFetchedEVT(this);
    }
    return orElse();
  }
}

abstract class PlaceholderFetchedEVT implements NewChapterDatabaseEvent {
  const factory PlaceholderFetchedEVT(
      {Chapter previousChapter,
      SeriesDraft seriesDraft,
      @required String sessionUid,
      @required String coverUrl}) = _$PlaceholderFetchedEVT;

  Chapter get previousChapter;
  SeriesDraft get seriesDraft;
  String get sessionUid;
  String get coverUrl;
  $PlaceholderFetchedEVTCopyWith<PlaceholderFetchedEVT> get copyWith;
}

abstract class $PublishButtonPressedEVTCopyWith<$Res> {
  factory $PublishButtonPressedEVTCopyWith(PublishButtonPressedEVT value,
          $Res Function(PublishButtonPressedEVT) then) =
      _$PublishButtonPressedEVTCopyWithImpl<$Res>;
}

class _$PublishButtonPressedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $PublishButtonPressedEVTCopyWith<$Res> {
  _$PublishButtonPressedEVTCopyWithImpl(PublishButtonPressedEVT _value,
      $Res Function(PublishButtonPressedEVT) _then)
      : super(_value, (v) => _then(v as PublishButtonPressedEVT));

  @override
  PublishButtonPressedEVT get _value => super._value as PublishButtonPressedEVT;
}

class _$PublishButtonPressedEVT
    with DiagnosticableTreeMixin
    implements PublishButtonPressedEVT {
  const _$PublishButtonPressedEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.publishButtonPressedEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.publishButtonPressedEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PublishButtonPressedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return publishButtonPressedEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (publishButtonPressedEVT != null) {
      return publishButtonPressedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return publishButtonPressedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (publishButtonPressedEVT != null) {
      return publishButtonPressedEVT(this);
    }
    return orElse();
  }
}

abstract class PublishButtonPressedEVT implements NewChapterDatabaseEvent {
  const factory PublishButtonPressedEVT() = _$PublishButtonPressedEVT;
}

abstract class $SaveOrBackButtonPressedEVTCopyWith<$Res> {
  factory $SaveOrBackButtonPressedEVTCopyWith(SaveOrBackButtonPressedEVT value,
          $Res Function(SaveOrBackButtonPressedEVT) then) =
      _$SaveOrBackButtonPressedEVTCopyWithImpl<$Res>;
}

class _$SaveOrBackButtonPressedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $SaveOrBackButtonPressedEVTCopyWith<$Res> {
  _$SaveOrBackButtonPressedEVTCopyWithImpl(SaveOrBackButtonPressedEVT _value,
      $Res Function(SaveOrBackButtonPressedEVT) _then)
      : super(_value, (v) => _then(v as SaveOrBackButtonPressedEVT));

  @override
  SaveOrBackButtonPressedEVT get _value =>
      super._value as SaveOrBackButtonPressedEVT;
}

class _$SaveOrBackButtonPressedEVT
    with DiagnosticableTreeMixin
    implements SaveOrBackButtonPressedEVT {
  const _$SaveOrBackButtonPressedEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.saveOrBackButtonPressedEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.saveOrBackButtonPressedEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SaveOrBackButtonPressedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return saveOrBackButtonPressedEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveOrBackButtonPressedEVT != null) {
      return saveOrBackButtonPressedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return saveOrBackButtonPressedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveOrBackButtonPressedEVT != null) {
      return saveOrBackButtonPressedEVT(this);
    }
    return orElse();
  }
}

abstract class SaveOrBackButtonPressedEVT implements NewChapterDatabaseEvent {
  const factory SaveOrBackButtonPressedEVT() = _$SaveOrBackButtonPressedEVT;
}

abstract class $SeriesCoverUploadedEVTCopyWith<$Res> {
  factory $SeriesCoverUploadedEVTCopyWith(SeriesCoverUploadedEVT value,
          $Res Function(SeriesCoverUploadedEVT) then) =
      _$SeriesCoverUploadedEVTCopyWithImpl<$Res>;
  $Res call({String coverUrl, SeriesDraft seriesDraft});
}

class _$SeriesCoverUploadedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $SeriesCoverUploadedEVTCopyWith<$Res> {
  _$SeriesCoverUploadedEVTCopyWithImpl(SeriesCoverUploadedEVT _value,
      $Res Function(SeriesCoverUploadedEVT) _then)
      : super(_value, (v) => _then(v as SeriesCoverUploadedEVT));

  @override
  SeriesCoverUploadedEVT get _value => super._value as SeriesCoverUploadedEVT;

  @override
  $Res call({
    Object coverUrl = freezed,
    Object seriesDraft = freezed,
  }) {
    return _then(SeriesCoverUploadedEVT(
      coverUrl == freezed ? _value.coverUrl : coverUrl as String,
      seriesDraft == freezed ? _value.seriesDraft : seriesDraft as SeriesDraft,
    ));
  }
}

class _$SeriesCoverUploadedEVT
    with DiagnosticableTreeMixin
    implements SeriesCoverUploadedEVT {
  const _$SeriesCoverUploadedEVT(this.coverUrl, this.seriesDraft)
      : assert(coverUrl != null),
        assert(seriesDraft != null);

  @override
  final String coverUrl;
  @override
  final SeriesDraft seriesDraft;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.seriesCoverUploadedEVT(coverUrl: $coverUrl, seriesDraft: $seriesDraft)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.seriesCoverUploadedEVT'))
      ..add(DiagnosticsProperty('coverUrl', coverUrl))
      ..add(DiagnosticsProperty('seriesDraft', seriesDraft));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesCoverUploadedEVT &&
            (identical(other.coverUrl, coverUrl) ||
                const DeepCollectionEquality()
                    .equals(other.coverUrl, coverUrl)) &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coverUrl) ^
      const DeepCollectionEquality().hash(seriesDraft);

  @override
  $SeriesCoverUploadedEVTCopyWith<SeriesCoverUploadedEVT> get copyWith =>
      _$SeriesCoverUploadedEVTCopyWithImpl<SeriesCoverUploadedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return seriesCoverUploadedEVT(coverUrl, seriesDraft);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesCoverUploadedEVT != null) {
      return seriesCoverUploadedEVT(coverUrl, seriesDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return seriesCoverUploadedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesCoverUploadedEVT != null) {
      return seriesCoverUploadedEVT(this);
    }
    return orElse();
  }
}

abstract class SeriesCoverUploadedEVT implements NewChapterDatabaseEvent {
  const factory SeriesCoverUploadedEVT(
      String coverUrl, SeriesDraft seriesDraft) = _$SeriesCoverUploadedEVT;

  String get coverUrl;
  SeriesDraft get seriesDraft;
  $SeriesCoverUploadedEVTCopyWith<SeriesCoverUploadedEVT> get copyWith;
}

abstract class $SeriesDraftDeletedEVTCopyWith<$Res> {
  factory $SeriesDraftDeletedEVTCopyWith(SeriesDraftDeletedEVT value,
          $Res Function(SeriesDraftDeletedEVT) then) =
      _$SeriesDraftDeletedEVTCopyWithImpl<$Res>;
}

class _$SeriesDraftDeletedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $SeriesDraftDeletedEVTCopyWith<$Res> {
  _$SeriesDraftDeletedEVTCopyWithImpl(
      SeriesDraftDeletedEVT _value, $Res Function(SeriesDraftDeletedEVT) _then)
      : super(_value, (v) => _then(v as SeriesDraftDeletedEVT));

  @override
  SeriesDraftDeletedEVT get _value => super._value as SeriesDraftDeletedEVT;
}

class _$SeriesDraftDeletedEVT
    with DiagnosticableTreeMixin
    implements SeriesDraftDeletedEVT {
  const _$SeriesDraftDeletedEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.seriesDraftDeletedEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.seriesDraftDeletedEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SeriesDraftDeletedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return seriesDraftDeletedEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftDeletedEVT != null) {
      return seriesDraftDeletedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return seriesDraftDeletedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftDeletedEVT != null) {
      return seriesDraftDeletedEVT(this);
    }
    return orElse();
  }
}

abstract class SeriesDraftDeletedEVT implements NewChapterDatabaseEvent {
  const factory SeriesDraftDeletedEVT() = _$SeriesDraftDeletedEVT;
}

abstract class $SeriesDraftFetchedEVTCopyWith<$Res> {
  factory $SeriesDraftFetchedEVTCopyWith(SeriesDraftFetchedEVT value,
          $Res Function(SeriesDraftFetchedEVT) then) =
      _$SeriesDraftFetchedEVTCopyWithImpl<$Res>;
  $Res call({SeriesDraft seriesDraft});
}

class _$SeriesDraftFetchedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $SeriesDraftFetchedEVTCopyWith<$Res> {
  _$SeriesDraftFetchedEVTCopyWithImpl(
      SeriesDraftFetchedEVT _value, $Res Function(SeriesDraftFetchedEVT) _then)
      : super(_value, (v) => _then(v as SeriesDraftFetchedEVT));

  @override
  SeriesDraftFetchedEVT get _value => super._value as SeriesDraftFetchedEVT;

  @override
  $Res call({
    Object seriesDraft = freezed,
  }) {
    return _then(SeriesDraftFetchedEVT(
      seriesDraft == freezed ? _value.seriesDraft : seriesDraft as SeriesDraft,
    ));
  }
}

class _$SeriesDraftFetchedEVT
    with DiagnosticableTreeMixin
    implements SeriesDraftFetchedEVT {
  const _$SeriesDraftFetchedEVT(this.seriesDraft) : assert(seriesDraft != null);

  @override
  final SeriesDraft seriesDraft;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.seriesDraftFetchedEVT(seriesDraft: $seriesDraft)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.seriesDraftFetchedEVT'))
      ..add(DiagnosticsProperty('seriesDraft', seriesDraft));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesDraftFetchedEVT &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seriesDraft);

  @override
  $SeriesDraftFetchedEVTCopyWith<SeriesDraftFetchedEVT> get copyWith =>
      _$SeriesDraftFetchedEVTCopyWithImpl<SeriesDraftFetchedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return seriesDraftFetchedEVT(seriesDraft);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftFetchedEVT != null) {
      return seriesDraftFetchedEVT(seriesDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return seriesDraftFetchedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftFetchedEVT != null) {
      return seriesDraftFetchedEVT(this);
    }
    return orElse();
  }
}

abstract class SeriesDraftFetchedEVT implements NewChapterDatabaseEvent {
  const factory SeriesDraftFetchedEVT(SeriesDraft seriesDraft) =
      _$SeriesDraftFetchedEVT;

  SeriesDraft get seriesDraft;
  $SeriesDraftFetchedEVTCopyWith<SeriesDraftFetchedEVT> get copyWith;
}

abstract class $SeriesPublishedEVTCopyWith<$Res> {
  factory $SeriesPublishedEVTCopyWith(
          SeriesPublishedEVT value, $Res Function(SeriesPublishedEVT) then) =
      _$SeriesPublishedEVTCopyWithImpl<$Res>;
  $Res call({Series series});
}

class _$SeriesPublishedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $SeriesPublishedEVTCopyWith<$Res> {
  _$SeriesPublishedEVTCopyWithImpl(
      SeriesPublishedEVT _value, $Res Function(SeriesPublishedEVT) _then)
      : super(_value, (v) => _then(v as SeriesPublishedEVT));

  @override
  SeriesPublishedEVT get _value => super._value as SeriesPublishedEVT;

  @override
  $Res call({
    Object series = freezed,
  }) {
    return _then(SeriesPublishedEVT(
      series == freezed ? _value.series : series as Series,
    ));
  }
}

class _$SeriesPublishedEVT
    with DiagnosticableTreeMixin
    implements SeriesPublishedEVT {
  const _$SeriesPublishedEVT(this.series) : assert(series != null);

  @override
  final Series series;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.seriesPublishedEVT(series: $series)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.seriesPublishedEVT'))
      ..add(DiagnosticsProperty('series', series));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesPublishedEVT &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(series);

  @override
  $SeriesPublishedEVTCopyWith<SeriesPublishedEVT> get copyWith =>
      _$SeriesPublishedEVTCopyWithImpl<SeriesPublishedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return seriesPublishedEVT(series);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedEVT != null) {
      return seriesPublishedEVT(series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return seriesPublishedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedEVT != null) {
      return seriesPublishedEVT(this);
    }
    return orElse();
  }
}

abstract class SeriesPublishedEVT implements NewChapterDatabaseEvent {
  const factory SeriesPublishedEVT(Series series) = _$SeriesPublishedEVT;

  Series get series;
  $SeriesPublishedEVTCopyWith<SeriesPublishedEVT> get copyWith;
}

abstract class $SessionFetchedEVTCopyWith<$Res> {
  factory $SessionFetchedEVTCopyWith(
          SessionFetchedEVT value, $Res Function(SessionFetchedEVT) then) =
      _$SessionFetchedEVTCopyWithImpl<$Res>;
  $Res call(
      {Session session, Chapter previousChapter, SeriesDraft seriesDraft});
}

class _$SessionFetchedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $SessionFetchedEVTCopyWith<$Res> {
  _$SessionFetchedEVTCopyWithImpl(
      SessionFetchedEVT _value, $Res Function(SessionFetchedEVT) _then)
      : super(_value, (v) => _then(v as SessionFetchedEVT));

  @override
  SessionFetchedEVT get _value => super._value as SessionFetchedEVT;

  @override
  $Res call({
    Object session = freezed,
    Object previousChapter = freezed,
    Object seriesDraft = freezed,
  }) {
    return _then(SessionFetchedEVT(
      session: session == freezed ? _value.session : session as Session,
      previousChapter: previousChapter == freezed
          ? _value.previousChapter
          : previousChapter as Chapter,
      seriesDraft: seriesDraft == freezed
          ? _value.seriesDraft
          : seriesDraft as SeriesDraft,
    ));
  }
}

class _$SessionFetchedEVT
    with DiagnosticableTreeMixin
    implements SessionFetchedEVT {
  const _$SessionFetchedEVT(
      {@required this.session, this.previousChapter, this.seriesDraft})
      : assert(session != null);

  @override
  final Session session;
  @override
  final Chapter previousChapter;
  @override
  final SeriesDraft seriesDraft;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.sessionFetchedEVT(session: $session, previousChapter: $previousChapter, seriesDraft: $seriesDraft)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.sessionFetchedEVT'))
      ..add(DiagnosticsProperty('session', session))
      ..add(DiagnosticsProperty('previousChapter', previousChapter))
      ..add(DiagnosticsProperty('seriesDraft', seriesDraft));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SessionFetchedEVT &&
            (identical(other.session, session) ||
                const DeepCollectionEquality()
                    .equals(other.session, session)) &&
            (identical(other.previousChapter, previousChapter) ||
                const DeepCollectionEquality()
                    .equals(other.previousChapter, previousChapter)) &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(session) ^
      const DeepCollectionEquality().hash(previousChapter) ^
      const DeepCollectionEquality().hash(seriesDraft);

  @override
  $SessionFetchedEVTCopyWith<SessionFetchedEVT> get copyWith =>
      _$SessionFetchedEVTCopyWithImpl<SessionFetchedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return sessionFetchedEVT(session, previousChapter, seriesDraft);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sessionFetchedEVT != null) {
      return sessionFetchedEVT(session, previousChapter, seriesDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return sessionFetchedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sessionFetchedEVT != null) {
      return sessionFetchedEVT(this);
    }
    return orElse();
  }
}

abstract class SessionFetchedEVT implements NewChapterDatabaseEvent {
  const factory SessionFetchedEVT(
      {@required Session session,
      Chapter previousChapter,
      SeriesDraft seriesDraft}) = _$SessionFetchedEVT;

  Session get session;
  Chapter get previousChapter;
  SeriesDraft get seriesDraft;
  $SessionFetchedEVTCopyWith<SessionFetchedEVT> get copyWith;
}

abstract class $StoryChangedEVTCopyWith<$Res> {
  factory $StoryChangedEVTCopyWith(
          StoryChangedEVT value, $Res Function(StoryChangedEVT) then) =
      _$StoryChangedEVTCopyWithImpl<$Res>;
  $Res call({String story});
}

class _$StoryChangedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $StoryChangedEVTCopyWith<$Res> {
  _$StoryChangedEVTCopyWithImpl(
      StoryChangedEVT _value, $Res Function(StoryChangedEVT) _then)
      : super(_value, (v) => _then(v as StoryChangedEVT));

  @override
  StoryChangedEVT get _value => super._value as StoryChangedEVT;

  @override
  $Res call({
    Object story = freezed,
  }) {
    return _then(StoryChangedEVT(
      story == freezed ? _value.story : story as String,
    ));
  }
}

class _$StoryChangedEVT
    with DiagnosticableTreeMixin
    implements StoryChangedEVT {
  const _$StoryChangedEVT(this.story) : assert(story != null);

  @override
  final String story;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.storyChangedEVT(story: $story)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.storyChangedEVT'))
      ..add(DiagnosticsProperty('story', story));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StoryChangedEVT &&
            (identical(other.story, story) ||
                const DeepCollectionEquality().equals(other.story, story)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(story);

  @override
  $StoryChangedEVTCopyWith<StoryChangedEVT> get copyWith =>
      _$StoryChangedEVTCopyWithImpl<StoryChangedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return storyChangedEVT(story);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (storyChangedEVT != null) {
      return storyChangedEVT(story);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return storyChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (storyChangedEVT != null) {
      return storyChangedEVT(this);
    }
    return orElse();
  }
}

abstract class StoryChangedEVT implements NewChapterDatabaseEvent {
  const factory StoryChangedEVT(String story) = _$StoryChangedEVT;

  String get story;
  $StoryChangedEVTCopyWith<StoryChangedEVT> get copyWith;
}

abstract class $TitleChangedEVTCopyWith<$Res> {
  factory $TitleChangedEVTCopyWith(
          TitleChangedEVT value, $Res Function(TitleChangedEVT) then) =
      _$TitleChangedEVTCopyWithImpl<$Res>;
  $Res call({String title});
}

class _$TitleChangedEVTCopyWithImpl<$Res>
    extends _$NewChapterDatabaseEventCopyWithImpl<$Res>
    implements $TitleChangedEVTCopyWith<$Res> {
  _$TitleChangedEVTCopyWithImpl(
      TitleChangedEVT _value, $Res Function(TitleChangedEVT) _then)
      : super(_value, (v) => _then(v as TitleChangedEVT));

  @override
  TitleChangedEVT get _value => super._value as TitleChangedEVT;

  @override
  $Res call({
    Object title = freezed,
  }) {
    return _then(TitleChangedEVT(
      title == freezed ? _value.title : title as String,
    ));
  }
}

class _$TitleChangedEVT
    with DiagnosticableTreeMixin
    implements TitleChangedEVT {
  const _$TitleChangedEVT(this.title) : assert(title != null);

  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseEvent.titleChangedEVT(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewChapterDatabaseEvent.titleChangedEVT'))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TitleChangedEVT &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @override
  $TitleChangedEVTCopyWith<TitleChangedEVT> get copyWith =>
      _$TitleChangedEVTCopyWithImpl<TitleChangedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addCoverPressedEVT(),
    @required Result chapterDraftDeletedEVT(Chapter chapter),
    @required Result chapterPublishedEVT(Chapter chapter),
    @required Result copyrightsSelectedEVT(String copyrights),
    @required
        Result chapterCoverUploadedEVT(
            String coverUrl, ChapterDraft chapterDraft),
    @required Result deleteDraftButtonPressedEVT(),
    @required Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    @required Result genreOptionalSelectedEVT(String genreOptional),
    @required Result genreSelectedEVT(String genre),
    @required Result isEndChangedEVT(bool isEnd),
    @required Result isNSFWChangedEVT(bool isNSFW),
    @required Result languageSelectedEVT(String language),
    @required
        Result newChapterPageLaunchedEVT(
            BuildContext context,
            Chapter previousChapter,
            ChapterDraft chapterDraft,
            SeriesDraft seriesDraft),
    @required
        Result placeholderFetchedEVT(Chapter previousChapter,
            SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    @required Result publishButtonPressedEVT(),
    @required Result saveOrBackButtonPressedEVT(),
    @required
        Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    @required Result seriesDraftDeletedEVT(),
    @required Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    @required Result seriesPublishedEVT(Series series),
    @required
        Result sessionFetchedEVT(
            Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    @required Result storyChangedEVT(String story),
    @required Result titleChangedEVT(String title),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return titleChangedEVT(title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addCoverPressedEVT(),
    Result chapterDraftDeletedEVT(Chapter chapter),
    Result chapterPublishedEVT(Chapter chapter),
    Result copyrightsSelectedEVT(String copyrights),
    Result chapterCoverUploadedEVT(String coverUrl, ChapterDraft chapterDraft),
    Result deleteDraftButtonPressedEVT(),
    Result editModeLaunchedEVT(ChapterDraft chapterDraft),
    Result genreOptionalSelectedEVT(String genreOptional),
    Result genreSelectedEVT(String genre),
    Result isEndChangedEVT(bool isEnd),
    Result isNSFWChangedEVT(bool isNSFW),
    Result languageSelectedEVT(String language),
    Result newChapterPageLaunchedEVT(
        BuildContext context,
        Chapter previousChapter,
        ChapterDraft chapterDraft,
        SeriesDraft seriesDraft),
    Result placeholderFetchedEVT(Chapter previousChapter,
        SeriesDraft seriesDraft, String sessionUid, String coverUrl),
    Result publishButtonPressedEVT(),
    Result saveOrBackButtonPressedEVT(),
    Result seriesCoverUploadedEVT(String coverUrl, SeriesDraft seriesDraft),
    Result seriesDraftDeletedEVT(),
    Result seriesDraftFetchedEVT(SeriesDraft seriesDraft),
    Result seriesPublishedEVT(Series series),
    Result sessionFetchedEVT(
        Session session, Chapter previousChapter, SeriesDraft seriesDraft),
    Result storyChangedEVT(String story),
    Result titleChangedEVT(String title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChangedEVT != null) {
      return titleChangedEVT(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addCoverPressedEVT(AddCoverPressedEVT value),
    @required Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required Result chapterPublishedEVT(ChapterPublishedEVT value),
    @required Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    @required Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    @required
        Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    @required Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    @required Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    @required Result genreSelectedEVT(GenreSelectedEVT value),
    @required Result isEndChangedEVT(IsEndChangedEVT value),
    @required Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    @required Result languageSelectedEVT(LanguageSelectedEVT value),
    @required Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    @required Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    @required Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    @required
        Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    @required Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    @required Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    @required Result seriesPublishedEVT(SeriesPublishedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result storyChangedEVT(StoryChangedEVT value),
    @required Result titleChangedEVT(TitleChangedEVT value),
  }) {
    assert(addCoverPressedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(copyrightsSelectedEVT != null);
    assert(chapterCoverUploadedEVT != null);
    assert(deleteDraftButtonPressedEVT != null);
    assert(editModeLaunchedEVT != null);
    assert(genreOptionalSelectedEVT != null);
    assert(genreSelectedEVT != null);
    assert(isEndChangedEVT != null);
    assert(isNSFWChangedEVT != null);
    assert(languageSelectedEVT != null);
    assert(newChapterPageLaunchedEVT != null);
    assert(placeholderFetchedEVT != null);
    assert(publishButtonPressedEVT != null);
    assert(saveOrBackButtonPressedEVT != null);
    assert(seriesCoverUploadedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftFetchedEVT != null);
    assert(seriesPublishedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(storyChangedEVT != null);
    assert(titleChangedEVT != null);
    return titleChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addCoverPressedEVT(AddCoverPressedEVT value),
    Result chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    Result chapterPublishedEVT(ChapterPublishedEVT value),
    Result copyrightsSelectedEVT(CopyrightsSelectedEVT value),
    Result chapterCoverUploadedEVT(ChapterCoverUploadedEVT value),
    Result deleteDraftButtonPressedEVT(DeleteDraftButtonPressedEVT value),
    Result editModeLaunchedEVT(EditModeLaunchedEVT value),
    Result genreOptionalSelectedEVT(GenreOptionalSelectedEVT value),
    Result genreSelectedEVT(GenreSelectedEVT value),
    Result isEndChangedEVT(IsEndChangedEVT value),
    Result isNSFWChangedEVT(IsNSFWChangedEVT value),
    Result languageSelectedEVT(LanguageSelectedEVT value),
    Result newChapterPageLaunchedEVT(NewChapterPageLaunchedEVT value),
    Result placeholderFetchedEVT(PlaceholderFetchedEVT value),
    Result publishButtonPressedEVT(PublishButtonPressedEVT value),
    Result saveOrBackButtonPressedEVT(SaveOrBackButtonPressedEVT value),
    Result seriesCoverUploadedEVT(SeriesCoverUploadedEVT value),
    Result seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    Result seriesDraftFetchedEVT(SeriesDraftFetchedEVT value),
    Result seriesPublishedEVT(SeriesPublishedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result storyChangedEVT(StoryChangedEVT value),
    Result titleChangedEVT(TitleChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChangedEVT != null) {
      return titleChangedEVT(this);
    }
    return orElse();
  }
}

abstract class TitleChangedEVT implements NewChapterDatabaseEvent {
  const factory TitleChangedEVT(String title) = _$TitleChangedEVT;

  String get title;
  $TitleChangedEVTCopyWith<TitleChangedEVT> get copyWith;
}

class _$NewChapterDatabaseStateTearOff {
  const _$NewChapterDatabaseStateTearOff();

  _NewChapterPageState call(
      {@required
          bool isDeletingOrPublishingOrSaving,
      @required
          bool isEditMode,
      @required
          bool isEnd,
      @required
          bool isFirstChapter,
      @required
          bool isNSFW,
      @required
          bool showErrorMessages,
      @required
          ChapterDraft chapterDraft,
      @required
          Copyrights copyrights,
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
          Map<String, String> copyrightsMap,
      @required
          Map<String, String> genresMap,
      @required
          Map<String, String> languagesMap,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption,
      @required
          Story story,
      @required
          String copyrightsStr,
      @required
          String coverUrl,
      @required
          String genreOptionalStr,
      @required
          String genreStr,
      @required
          String languageStr,
      @required
          String storyStr,
      @required
          String titleStr,
      @required
          Title title}) {
    return _NewChapterPageState(
      isDeletingOrPublishingOrSaving: isDeletingOrPublishingOrSaving,
      isEditMode: isEditMode,
      isEnd: isEnd,
      isFirstChapter: isFirstChapter,
      isNSFW: isNSFW,
      showErrorMessages: showErrorMessages,
      chapterDraft: chapterDraft,
      copyrights: copyrights,
      genre: genre,
      genreOptional: genreOptional,
      storyWordCount: storyWordCount,
      titleWordCount: titleWordCount,
      language: language,
      copyrightsMap: copyrightsMap,
      genresMap: genresMap,
      languagesMap: languagesMap,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption,
      story: story,
      copyrightsStr: copyrightsStr,
      coverUrl: coverUrl,
      genreOptionalStr: genreOptionalStr,
      genreStr: genreStr,
      languageStr: languageStr,
      storyStr: storyStr,
      titleStr: titleStr,
      title: title,
    );
  }
}

// ignore: unused_element
const $NewChapterDatabaseState = _$NewChapterDatabaseStateTearOff();

mixin _$NewChapterDatabaseState {
  bool get isDeletingOrPublishingOrSaving;
  bool get isEditMode;
  bool get isEnd;
  bool get isFirstChapter;
  bool get isNSFW;
  bool get showErrorMessages;
  ChapterDraft get chapterDraft;
  Copyrights get copyrights;
  Genre get genre;
  Genre get genreOptional;
  int get storyWordCount;
  int get titleWordCount;
  Language get language;
  Map<String, String> get copyrightsMap;
  Map<String, String> get genresMap;
  Map<String, String> get languagesMap;
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;
  Story get story;
  String get copyrightsStr;
  String get coverUrl;
  String get genreOptionalStr;
  String get genreStr;
  String get languageStr;
  String get storyStr;
  String get titleStr;
  Title get title;

  $NewChapterDatabaseStateCopyWith<NewChapterDatabaseState> get copyWith;
}

abstract class $NewChapterDatabaseStateCopyWith<$Res> {
  factory $NewChapterDatabaseStateCopyWith(NewChapterDatabaseState value,
          $Res Function(NewChapterDatabaseState) then) =
      _$NewChapterDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {bool isDeletingOrPublishingOrSaving,
      bool isEditMode,
      bool isEnd,
      bool isFirstChapter,
      bool isNSFW,
      bool showErrorMessages,
      ChapterDraft chapterDraft,
      Copyrights copyrights,
      Genre genre,
      Genre genreOptional,
      int storyWordCount,
      int titleWordCount,
      Language language,
      Map<String, String> copyrightsMap,
      Map<String, String> genresMap,
      Map<String, String> languagesMap,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption,
      Story story,
      String copyrightsStr,
      String coverUrl,
      String genreOptionalStr,
      String genreStr,
      String languageStr,
      String storyStr,
      String titleStr,
      Title title});
}

class _$NewChapterDatabaseStateCopyWithImpl<$Res>
    implements $NewChapterDatabaseStateCopyWith<$Res> {
  _$NewChapterDatabaseStateCopyWithImpl(this._value, this._then);

  final NewChapterDatabaseState _value;
  // ignore: unused_field
  final $Res Function(NewChapterDatabaseState) _then;

  @override
  $Res call({
    Object isDeletingOrPublishingOrSaving = freezed,
    Object isEditMode = freezed,
    Object isEnd = freezed,
    Object isFirstChapter = freezed,
    Object isNSFW = freezed,
    Object showErrorMessages = freezed,
    Object chapterDraft = freezed,
    Object copyrights = freezed,
    Object genre = freezed,
    Object genreOptional = freezed,
    Object storyWordCount = freezed,
    Object titleWordCount = freezed,
    Object language = freezed,
    Object copyrightsMap = freezed,
    Object genresMap = freezed,
    Object languagesMap = freezed,
    Object databaseFailureOrSuccessOption = freezed,
    Object story = freezed,
    Object copyrightsStr = freezed,
    Object coverUrl = freezed,
    Object genreOptionalStr = freezed,
    Object genreStr = freezed,
    Object languageStr = freezed,
    Object storyStr = freezed,
    Object titleStr = freezed,
    Object title = freezed,
  }) {
    return _then(_value.copyWith(
      isDeletingOrPublishingOrSaving: isDeletingOrPublishingOrSaving == freezed
          ? _value.isDeletingOrPublishingOrSaving
          : isDeletingOrPublishingOrSaving as bool,
      isEditMode:
          isEditMode == freezed ? _value.isEditMode : isEditMode as bool,
      isEnd: isEnd == freezed ? _value.isEnd : isEnd as bool,
      isFirstChapter: isFirstChapter == freezed
          ? _value.isFirstChapter
          : isFirstChapter as bool,
      isNSFW: isNSFW == freezed ? _value.isNSFW : isNSFW as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      chapterDraft: chapterDraft == freezed
          ? _value.chapterDraft
          : chapterDraft as ChapterDraft,
      copyrights:
          copyrights == freezed ? _value.copyrights : copyrights as Copyrights,
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
      copyrightsMap: copyrightsMap == freezed
          ? _value.copyrightsMap
          : copyrightsMap as Map<String, String>,
      genresMap: genresMap == freezed
          ? _value.genresMap
          : genresMap as Map<String, String>,
      languagesMap: languagesMap == freezed
          ? _value.languagesMap
          : languagesMap as Map<String, String>,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, dynamic>>,
      story: story == freezed ? _value.story : story as Story,
      copyrightsStr: copyrightsStr == freezed
          ? _value.copyrightsStr
          : copyrightsStr as String,
      coverUrl: coverUrl == freezed ? _value.coverUrl : coverUrl as String,
      genreOptionalStr: genreOptionalStr == freezed
          ? _value.genreOptionalStr
          : genreOptionalStr as String,
      genreStr: genreStr == freezed ? _value.genreStr : genreStr as String,
      languageStr:
          languageStr == freezed ? _value.languageStr : languageStr as String,
      storyStr: storyStr == freezed ? _value.storyStr : storyStr as String,
      titleStr: titleStr == freezed ? _value.titleStr : titleStr as String,
      title: title == freezed ? _value.title : title as Title,
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
      {bool isDeletingOrPublishingOrSaving,
      bool isEditMode,
      bool isEnd,
      bool isFirstChapter,
      bool isNSFW,
      bool showErrorMessages,
      ChapterDraft chapterDraft,
      Copyrights copyrights,
      Genre genre,
      Genre genreOptional,
      int storyWordCount,
      int titleWordCount,
      Language language,
      Map<String, String> copyrightsMap,
      Map<String, String> genresMap,
      Map<String, String> languagesMap,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption,
      Story story,
      String copyrightsStr,
      String coverUrl,
      String genreOptionalStr,
      String genreStr,
      String languageStr,
      String storyStr,
      String titleStr,
      Title title});
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
    Object isDeletingOrPublishingOrSaving = freezed,
    Object isEditMode = freezed,
    Object isEnd = freezed,
    Object isFirstChapter = freezed,
    Object isNSFW = freezed,
    Object showErrorMessages = freezed,
    Object chapterDraft = freezed,
    Object copyrights = freezed,
    Object genre = freezed,
    Object genreOptional = freezed,
    Object storyWordCount = freezed,
    Object titleWordCount = freezed,
    Object language = freezed,
    Object copyrightsMap = freezed,
    Object genresMap = freezed,
    Object languagesMap = freezed,
    Object databaseFailureOrSuccessOption = freezed,
    Object story = freezed,
    Object copyrightsStr = freezed,
    Object coverUrl = freezed,
    Object genreOptionalStr = freezed,
    Object genreStr = freezed,
    Object languageStr = freezed,
    Object storyStr = freezed,
    Object titleStr = freezed,
    Object title = freezed,
  }) {
    return _then(_NewChapterPageState(
      isDeletingOrPublishingOrSaving: isDeletingOrPublishingOrSaving == freezed
          ? _value.isDeletingOrPublishingOrSaving
          : isDeletingOrPublishingOrSaving as bool,
      isEditMode:
          isEditMode == freezed ? _value.isEditMode : isEditMode as bool,
      isEnd: isEnd == freezed ? _value.isEnd : isEnd as bool,
      isFirstChapter: isFirstChapter == freezed
          ? _value.isFirstChapter
          : isFirstChapter as bool,
      isNSFW: isNSFW == freezed ? _value.isNSFW : isNSFW as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      chapterDraft: chapterDraft == freezed
          ? _value.chapterDraft
          : chapterDraft as ChapterDraft,
      copyrights:
          copyrights == freezed ? _value.copyrights : copyrights as Copyrights,
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
      copyrightsMap: copyrightsMap == freezed
          ? _value.copyrightsMap
          : copyrightsMap as Map<String, String>,
      genresMap: genresMap == freezed
          ? _value.genresMap
          : genresMap as Map<String, String>,
      languagesMap: languagesMap == freezed
          ? _value.languagesMap
          : languagesMap as Map<String, String>,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, dynamic>>,
      story: story == freezed ? _value.story : story as Story,
      copyrightsStr: copyrightsStr == freezed
          ? _value.copyrightsStr
          : copyrightsStr as String,
      coverUrl: coverUrl == freezed ? _value.coverUrl : coverUrl as String,
      genreOptionalStr: genreOptionalStr == freezed
          ? _value.genreOptionalStr
          : genreOptionalStr as String,
      genreStr: genreStr == freezed ? _value.genreStr : genreStr as String,
      languageStr:
          languageStr == freezed ? _value.languageStr : languageStr as String,
      storyStr: storyStr == freezed ? _value.storyStr : storyStr as String,
      titleStr: titleStr == freezed ? _value.titleStr : titleStr as String,
      title: title == freezed ? _value.title : title as Title,
    ));
  }
}

class _$_NewChapterPageState
    with DiagnosticableTreeMixin
    implements _NewChapterPageState {
  const _$_NewChapterPageState(
      {@required this.isDeletingOrPublishingOrSaving,
      @required this.isEditMode,
      @required this.isEnd,
      @required this.isFirstChapter,
      @required this.isNSFW,
      @required this.showErrorMessages,
      @required this.chapterDraft,
      @required this.copyrights,
      @required this.genre,
      @required this.genreOptional,
      @required this.storyWordCount,
      @required this.titleWordCount,
      @required this.language,
      @required this.copyrightsMap,
      @required this.genresMap,
      @required this.languagesMap,
      @required this.databaseFailureOrSuccessOption,
      @required this.story,
      @required this.copyrightsStr,
      @required this.coverUrl,
      @required this.genreOptionalStr,
      @required this.genreStr,
      @required this.languageStr,
      @required this.storyStr,
      @required this.titleStr,
      @required this.title})
      : assert(isDeletingOrPublishingOrSaving != null),
        assert(isEditMode != null),
        assert(isEnd != null),
        assert(isFirstChapter != null),
        assert(isNSFW != null),
        assert(showErrorMessages != null),
        assert(chapterDraft != null),
        assert(copyrights != null),
        assert(genre != null),
        assert(genreOptional != null),
        assert(storyWordCount != null),
        assert(titleWordCount != null),
        assert(language != null),
        assert(copyrightsMap != null),
        assert(genresMap != null),
        assert(languagesMap != null),
        assert(databaseFailureOrSuccessOption != null),
        assert(story != null),
        assert(copyrightsStr != null),
        assert(coverUrl != null),
        assert(genreOptionalStr != null),
        assert(genreStr != null),
        assert(languageStr != null),
        assert(storyStr != null),
        assert(titleStr != null),
        assert(title != null);

  @override
  final bool isDeletingOrPublishingOrSaving;
  @override
  final bool isEditMode;
  @override
  final bool isEnd;
  @override
  final bool isFirstChapter;
  @override
  final bool isNSFW;
  @override
  final bool showErrorMessages;
  @override
  final ChapterDraft chapterDraft;
  @override
  final Copyrights copyrights;
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
  final Map<String, String> copyrightsMap;
  @override
  final Map<String, String> genresMap;
  @override
  final Map<String, String> languagesMap;
  @override
  final Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption;
  @override
  final Story story;
  @override
  final String copyrightsStr;
  @override
  final String coverUrl;
  @override
  final String genreOptionalStr;
  @override
  final String genreStr;
  @override
  final String languageStr;
  @override
  final String storyStr;
  @override
  final String titleStr;
  @override
  final Title title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewChapterDatabaseState(isDeletingOrPublishingOrSaving: $isDeletingOrPublishingOrSaving, isEditMode: $isEditMode, isEnd: $isEnd, isFirstChapter: $isFirstChapter, isNSFW: $isNSFW, showErrorMessages: $showErrorMessages, chapterDraft: $chapterDraft, copyrights: $copyrights, genre: $genre, genreOptional: $genreOptional, storyWordCount: $storyWordCount, titleWordCount: $titleWordCount, language: $language, copyrightsMap: $copyrightsMap, genresMap: $genresMap, languagesMap: $languagesMap, databaseFailureOrSuccessOption: $databaseFailureOrSuccessOption, story: $story, copyrightsStr: $copyrightsStr, coverUrl: $coverUrl, genreOptionalStr: $genreOptionalStr, genreStr: $genreStr, languageStr: $languageStr, storyStr: $storyStr, titleStr: $titleStr, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewChapterDatabaseState'))
      ..add(DiagnosticsProperty(
          'isDeletingOrPublishingOrSaving', isDeletingOrPublishingOrSaving))
      ..add(DiagnosticsProperty('isEditMode', isEditMode))
      ..add(DiagnosticsProperty('isEnd', isEnd))
      ..add(DiagnosticsProperty('isFirstChapter', isFirstChapter))
      ..add(DiagnosticsProperty('isNSFW', isNSFW))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('chapterDraft', chapterDraft))
      ..add(DiagnosticsProperty('copyrights', copyrights))
      ..add(DiagnosticsProperty('genre', genre))
      ..add(DiagnosticsProperty('genreOptional', genreOptional))
      ..add(DiagnosticsProperty('storyWordCount', storyWordCount))
      ..add(DiagnosticsProperty('titleWordCount', titleWordCount))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('copyrightsMap', copyrightsMap))
      ..add(DiagnosticsProperty('genresMap', genresMap))
      ..add(DiagnosticsProperty('languagesMap', languagesMap))
      ..add(DiagnosticsProperty(
          'databaseFailureOrSuccessOption', databaseFailureOrSuccessOption))
      ..add(DiagnosticsProperty('story', story))
      ..add(DiagnosticsProperty('copyrightsStr', copyrightsStr))
      ..add(DiagnosticsProperty('coverUrl', coverUrl))
      ..add(DiagnosticsProperty('genreOptionalStr', genreOptionalStr))
      ..add(DiagnosticsProperty('genreStr', genreStr))
      ..add(DiagnosticsProperty('languageStr', languageStr))
      ..add(DiagnosticsProperty('storyStr', storyStr))
      ..add(DiagnosticsProperty('titleStr', titleStr))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewChapterPageState &&
            (identical(other.isDeletingOrPublishingOrSaving, isDeletingOrPublishingOrSaving) ||
                const DeepCollectionEquality().equals(
                    other.isDeletingOrPublishingOrSaving,
                    isDeletingOrPublishingOrSaving)) &&
            (identical(other.isEditMode, isEditMode) ||
                const DeepCollectionEquality()
                    .equals(other.isEditMode, isEditMode)) &&
            (identical(other.isEnd, isEnd) ||
                const DeepCollectionEquality().equals(other.isEnd, isEnd)) &&
            (identical(other.isFirstChapter, isFirstChapter) ||
                const DeepCollectionEquality()
                    .equals(other.isFirstChapter, isFirstChapter)) &&
            (identical(other.isNSFW, isNSFW) ||
                const DeepCollectionEquality().equals(other.isNSFW, isNSFW)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.chapterDraft, chapterDraft) ||
                const DeepCollectionEquality()
                    .equals(other.chapterDraft, chapterDraft)) &&
            (identical(other.copyrights, copyrights) ||
                const DeepCollectionEquality()
                    .equals(other.copyrights, copyrights)) &&
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
            (identical(other.copyrightsMap, copyrightsMap) ||
                const DeepCollectionEquality()
                    .equals(other.copyrightsMap, copyrightsMap)) &&
            (identical(other.genresMap, genresMap) ||
                const DeepCollectionEquality()
                    .equals(other.genresMap, genresMap)) &&
            (identical(other.languagesMap, languagesMap) ||
                const DeepCollectionEquality()
                    .equals(other.languagesMap, languagesMap)) &&
            (identical(other.databaseFailureOrSuccessOption, databaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.databaseFailureOrSuccessOption,
                    databaseFailureOrSuccessOption)) &&
            (identical(other.story, story) || const DeepCollectionEquality().equals(other.story, story)) &&
            (identical(other.copyrightsStr, copyrightsStr) || const DeepCollectionEquality().equals(other.copyrightsStr, copyrightsStr)) &&
            (identical(other.coverUrl, coverUrl) || const DeepCollectionEquality().equals(other.coverUrl, coverUrl)) &&
            (identical(other.genreOptionalStr, genreOptionalStr) || const DeepCollectionEquality().equals(other.genreOptionalStr, genreOptionalStr)) &&
            (identical(other.genreStr, genreStr) || const DeepCollectionEquality().equals(other.genreStr, genreStr)) &&
            (identical(other.languageStr, languageStr) || const DeepCollectionEquality().equals(other.languageStr, languageStr)) &&
            (identical(other.storyStr, storyStr) || const DeepCollectionEquality().equals(other.storyStr, storyStr)) &&
            (identical(other.titleStr, titleStr) || const DeepCollectionEquality().equals(other.titleStr, titleStr)) &&
            (identical(other.title, title) || const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isDeletingOrPublishingOrSaving) ^
      const DeepCollectionEquality().hash(isEditMode) ^
      const DeepCollectionEquality().hash(isEnd) ^
      const DeepCollectionEquality().hash(isFirstChapter) ^
      const DeepCollectionEquality().hash(isNSFW) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(chapterDraft) ^
      const DeepCollectionEquality().hash(copyrights) ^
      const DeepCollectionEquality().hash(genre) ^
      const DeepCollectionEquality().hash(genreOptional) ^
      const DeepCollectionEquality().hash(storyWordCount) ^
      const DeepCollectionEquality().hash(titleWordCount) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(copyrightsMap) ^
      const DeepCollectionEquality().hash(genresMap) ^
      const DeepCollectionEquality().hash(languagesMap) ^
      const DeepCollectionEquality().hash(databaseFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(story) ^
      const DeepCollectionEquality().hash(copyrightsStr) ^
      const DeepCollectionEquality().hash(coverUrl) ^
      const DeepCollectionEquality().hash(genreOptionalStr) ^
      const DeepCollectionEquality().hash(genreStr) ^
      const DeepCollectionEquality().hash(languageStr) ^
      const DeepCollectionEquality().hash(storyStr) ^
      const DeepCollectionEquality().hash(titleStr) ^
      const DeepCollectionEquality().hash(title);

  @override
  _$NewChapterPageStateCopyWith<_NewChapterPageState> get copyWith =>
      __$NewChapterPageStateCopyWithImpl<_NewChapterPageState>(
          this, _$identity);
}

abstract class _NewChapterPageState implements NewChapterDatabaseState {
  const factory _NewChapterPageState(
      {@required
          bool isDeletingOrPublishingOrSaving,
      @required
          bool isEditMode,
      @required
          bool isEnd,
      @required
          bool isFirstChapter,
      @required
          bool isNSFW,
      @required
          bool showErrorMessages,
      @required
          ChapterDraft chapterDraft,
      @required
          Copyrights copyrights,
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
          Map<String, String> copyrightsMap,
      @required
          Map<String, String> genresMap,
      @required
          Map<String, String> languagesMap,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption,
      @required
          Story story,
      @required
          String copyrightsStr,
      @required
          String coverUrl,
      @required
          String genreOptionalStr,
      @required
          String genreStr,
      @required
          String languageStr,
      @required
          String storyStr,
      @required
          String titleStr,
      @required
          Title title}) = _$_NewChapterPageState;

  @override
  bool get isDeletingOrPublishingOrSaving;
  @override
  bool get isEditMode;
  @override
  bool get isEnd;
  @override
  bool get isFirstChapter;
  @override
  bool get isNSFW;
  @override
  bool get showErrorMessages;
  @override
  ChapterDraft get chapterDraft;
  @override
  Copyrights get copyrights;
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
  Map<String, String> get copyrightsMap;
  @override
  Map<String, String> get genresMap;
  @override
  Map<String, String> get languagesMap;
  @override
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;
  @override
  Story get story;
  @override
  String get copyrightsStr;
  @override
  String get coverUrl;
  @override
  String get genreOptionalStr;
  @override
  String get genreStr;
  @override
  String get languageStr;
  @override
  String get storyStr;
  @override
  String get titleStr;
  @override
  Title get title;
  @override
  _$NewChapterPageStateCopyWith<_NewChapterPageState> get copyWith;
}
