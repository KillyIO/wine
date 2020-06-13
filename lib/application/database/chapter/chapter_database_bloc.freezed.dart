// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'chapter_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ChapterDatabaseEventTearOff {
  const _$ChapterDatabaseEventTearOff();

  ChapterPageLaunched chapterPageLaunched(
      {Chapter chapter, BuildContext context}) {
    return ChapterPageLaunched(
      chapter: chapter,
      context: context,
    );
  }

  PreviousChapterButtonPressed previousChapterButtonPressed() {
    return const PreviousChapterButtonPressed();
  }

  LikeButtonPressed likeButtonPressed() {
    return const LikeButtonPressed();
  }

  BookmarkButtonPressed bookmarkButtonPressed() {
    return const BookmarkButtonPressed();
  }

  ShowOrHideNavbar showOrHideNavbar() {
    return const ShowOrHideNavbar();
  }

  Scroll scroll(
      {@required int currentScrollPosition, @required int maxScrollPosition}) {
    return Scroll(
      currentScrollPosition: currentScrollPosition,
      maxScrollPosition: maxScrollPosition,
    );
  }

  ToggleChapterAdditionalInfo toggleChapterAdditionalInfo() {
    return const ToggleChapterAdditionalInfo();
  }

  FetchNextChapters fetchNextChapters() {
    return const FetchNextChapters();
  }
}

// ignore: unused_element
const $ChapterDatabaseEvent = _$ChapterDatabaseEventTearOff();

mixin _$ChapterDatabaseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result chapterPageLaunched(Chapter chapter, BuildContext context),
    @required Result previousChapterButtonPressed(),
    @required Result likeButtonPressed(),
    @required Result bookmarkButtonPressed(),
    @required Result showOrHideNavbar(),
    @required Result scroll(int currentScrollPosition, int maxScrollPosition),
    @required Result toggleChapterAdditionalInfo(),
    @required Result fetchNextChapters(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result chapterPageLaunched(Chapter chapter, BuildContext context),
    Result previousChapterButtonPressed(),
    Result likeButtonPressed(),
    Result bookmarkButtonPressed(),
    Result showOrHideNavbar(),
    Result scroll(int currentScrollPosition, int maxScrollPosition),
    Result toggleChapterAdditionalInfo(),
    Result fetchNextChapters(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result chapterPageLaunched(ChapterPageLaunched value),
    @required
        Result previousChapterButtonPressed(PreviousChapterButtonPressed value),
    @required Result likeButtonPressed(LikeButtonPressed value),
    @required Result bookmarkButtonPressed(BookmarkButtonPressed value),
    @required Result showOrHideNavbar(ShowOrHideNavbar value),
    @required Result scroll(Scroll value),
    @required
        Result toggleChapterAdditionalInfo(ToggleChapterAdditionalInfo value),
    @required Result fetchNextChapters(FetchNextChapters value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result chapterPageLaunched(ChapterPageLaunched value),
    Result previousChapterButtonPressed(PreviousChapterButtonPressed value),
    Result likeButtonPressed(LikeButtonPressed value),
    Result bookmarkButtonPressed(BookmarkButtonPressed value),
    Result showOrHideNavbar(ShowOrHideNavbar value),
    Result scroll(Scroll value),
    Result toggleChapterAdditionalInfo(ToggleChapterAdditionalInfo value),
    Result fetchNextChapters(FetchNextChapters value),
    @required Result orElse(),
  });
}

abstract class $ChapterDatabaseEventCopyWith<$Res> {
  factory $ChapterDatabaseEventCopyWith(ChapterDatabaseEvent value,
          $Res Function(ChapterDatabaseEvent) then) =
      _$ChapterDatabaseEventCopyWithImpl<$Res>;
}

class _$ChapterDatabaseEventCopyWithImpl<$Res>
    implements $ChapterDatabaseEventCopyWith<$Res> {
  _$ChapterDatabaseEventCopyWithImpl(this._value, this._then);

  final ChapterDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(ChapterDatabaseEvent) _then;
}

abstract class $ChapterPageLaunchedCopyWith<$Res> {
  factory $ChapterPageLaunchedCopyWith(
          ChapterPageLaunched value, $Res Function(ChapterPageLaunched) then) =
      _$ChapterPageLaunchedCopyWithImpl<$Res>;
  $Res call({Chapter chapter, BuildContext context});
}

class _$ChapterPageLaunchedCopyWithImpl<$Res>
    extends _$ChapterDatabaseEventCopyWithImpl<$Res>
    implements $ChapterPageLaunchedCopyWith<$Res> {
  _$ChapterPageLaunchedCopyWithImpl(
      ChapterPageLaunched _value, $Res Function(ChapterPageLaunched) _then)
      : super(_value, (v) => _then(v as ChapterPageLaunched));

  @override
  ChapterPageLaunched get _value => super._value as ChapterPageLaunched;

  @override
  $Res call({
    Object chapter = freezed,
    Object context = freezed,
  }) {
    return _then(ChapterPageLaunched(
      chapter: chapter == freezed ? _value.chapter : chapter as Chapter,
      context: context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

class _$ChapterPageLaunched
    with DiagnosticableTreeMixin
    implements ChapterPageLaunched {
  const _$ChapterPageLaunched({this.chapter, this.context});

  @override
  final Chapter chapter;
  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterDatabaseEvent.chapterPageLaunched(chapter: $chapter, context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterDatabaseEvent.chapterPageLaunched'))
      ..add(DiagnosticsProperty('chapter', chapter))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterPageLaunched &&
            (identical(other.chapter, chapter) ||
                const DeepCollectionEquality()
                    .equals(other.chapter, chapter)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chapter) ^
      const DeepCollectionEquality().hash(context);

  @override
  $ChapterPageLaunchedCopyWith<ChapterPageLaunched> get copyWith =>
      _$ChapterPageLaunchedCopyWithImpl<ChapterPageLaunched>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result chapterPageLaunched(Chapter chapter, BuildContext context),
    @required Result previousChapterButtonPressed(),
    @required Result likeButtonPressed(),
    @required Result bookmarkButtonPressed(),
    @required Result showOrHideNavbar(),
    @required Result scroll(int currentScrollPosition, int maxScrollPosition),
    @required Result toggleChapterAdditionalInfo(),
    @required Result fetchNextChapters(),
  }) {
    assert(chapterPageLaunched != null);
    assert(previousChapterButtonPressed != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showOrHideNavbar != null);
    assert(scroll != null);
    assert(toggleChapterAdditionalInfo != null);
    assert(fetchNextChapters != null);
    return chapterPageLaunched(chapter, context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result chapterPageLaunched(Chapter chapter, BuildContext context),
    Result previousChapterButtonPressed(),
    Result likeButtonPressed(),
    Result bookmarkButtonPressed(),
    Result showOrHideNavbar(),
    Result scroll(int currentScrollPosition, int maxScrollPosition),
    Result toggleChapterAdditionalInfo(),
    Result fetchNextChapters(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (chapterPageLaunched != null) {
      return chapterPageLaunched(chapter, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result chapterPageLaunched(ChapterPageLaunched value),
    @required
        Result previousChapterButtonPressed(PreviousChapterButtonPressed value),
    @required Result likeButtonPressed(LikeButtonPressed value),
    @required Result bookmarkButtonPressed(BookmarkButtonPressed value),
    @required Result showOrHideNavbar(ShowOrHideNavbar value),
    @required Result scroll(Scroll value),
    @required
        Result toggleChapterAdditionalInfo(ToggleChapterAdditionalInfo value),
    @required Result fetchNextChapters(FetchNextChapters value),
  }) {
    assert(chapterPageLaunched != null);
    assert(previousChapterButtonPressed != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showOrHideNavbar != null);
    assert(scroll != null);
    assert(toggleChapterAdditionalInfo != null);
    assert(fetchNextChapters != null);
    return chapterPageLaunched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result chapterPageLaunched(ChapterPageLaunched value),
    Result previousChapterButtonPressed(PreviousChapterButtonPressed value),
    Result likeButtonPressed(LikeButtonPressed value),
    Result bookmarkButtonPressed(BookmarkButtonPressed value),
    Result showOrHideNavbar(ShowOrHideNavbar value),
    Result scroll(Scroll value),
    Result toggleChapterAdditionalInfo(ToggleChapterAdditionalInfo value),
    Result fetchNextChapters(FetchNextChapters value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (chapterPageLaunched != null) {
      return chapterPageLaunched(this);
    }
    return orElse();
  }
}

abstract class ChapterPageLaunched implements ChapterDatabaseEvent {
  const factory ChapterPageLaunched({Chapter chapter, BuildContext context}) =
      _$ChapterPageLaunched;

  Chapter get chapter;
  BuildContext get context;
  $ChapterPageLaunchedCopyWith<ChapterPageLaunched> get copyWith;
}

abstract class $PreviousChapterButtonPressedCopyWith<$Res> {
  factory $PreviousChapterButtonPressedCopyWith(
          PreviousChapterButtonPressed value,
          $Res Function(PreviousChapterButtonPressed) then) =
      _$PreviousChapterButtonPressedCopyWithImpl<$Res>;
}

class _$PreviousChapterButtonPressedCopyWithImpl<$Res>
    extends _$ChapterDatabaseEventCopyWithImpl<$Res>
    implements $PreviousChapterButtonPressedCopyWith<$Res> {
  _$PreviousChapterButtonPressedCopyWithImpl(
      PreviousChapterButtonPressed _value,
      $Res Function(PreviousChapterButtonPressed) _then)
      : super(_value, (v) => _then(v as PreviousChapterButtonPressed));

  @override
  PreviousChapterButtonPressed get _value =>
      super._value as PreviousChapterButtonPressed;
}

class _$PreviousChapterButtonPressed
    with DiagnosticableTreeMixin
    implements PreviousChapterButtonPressed {
  const _$PreviousChapterButtonPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterDatabaseEvent.previousChapterButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterDatabaseEvent.previousChapterButtonPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PreviousChapterButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result chapterPageLaunched(Chapter chapter, BuildContext context),
    @required Result previousChapterButtonPressed(),
    @required Result likeButtonPressed(),
    @required Result bookmarkButtonPressed(),
    @required Result showOrHideNavbar(),
    @required Result scroll(int currentScrollPosition, int maxScrollPosition),
    @required Result toggleChapterAdditionalInfo(),
    @required Result fetchNextChapters(),
  }) {
    assert(chapterPageLaunched != null);
    assert(previousChapterButtonPressed != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showOrHideNavbar != null);
    assert(scroll != null);
    assert(toggleChapterAdditionalInfo != null);
    assert(fetchNextChapters != null);
    return previousChapterButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result chapterPageLaunched(Chapter chapter, BuildContext context),
    Result previousChapterButtonPressed(),
    Result likeButtonPressed(),
    Result bookmarkButtonPressed(),
    Result showOrHideNavbar(),
    Result scroll(int currentScrollPosition, int maxScrollPosition),
    Result toggleChapterAdditionalInfo(),
    Result fetchNextChapters(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (previousChapterButtonPressed != null) {
      return previousChapterButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result chapterPageLaunched(ChapterPageLaunched value),
    @required
        Result previousChapterButtonPressed(PreviousChapterButtonPressed value),
    @required Result likeButtonPressed(LikeButtonPressed value),
    @required Result bookmarkButtonPressed(BookmarkButtonPressed value),
    @required Result showOrHideNavbar(ShowOrHideNavbar value),
    @required Result scroll(Scroll value),
    @required
        Result toggleChapterAdditionalInfo(ToggleChapterAdditionalInfo value),
    @required Result fetchNextChapters(FetchNextChapters value),
  }) {
    assert(chapterPageLaunched != null);
    assert(previousChapterButtonPressed != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showOrHideNavbar != null);
    assert(scroll != null);
    assert(toggleChapterAdditionalInfo != null);
    assert(fetchNextChapters != null);
    return previousChapterButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result chapterPageLaunched(ChapterPageLaunched value),
    Result previousChapterButtonPressed(PreviousChapterButtonPressed value),
    Result likeButtonPressed(LikeButtonPressed value),
    Result bookmarkButtonPressed(BookmarkButtonPressed value),
    Result showOrHideNavbar(ShowOrHideNavbar value),
    Result scroll(Scroll value),
    Result toggleChapterAdditionalInfo(ToggleChapterAdditionalInfo value),
    Result fetchNextChapters(FetchNextChapters value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (previousChapterButtonPressed != null) {
      return previousChapterButtonPressed(this);
    }
    return orElse();
  }
}

abstract class PreviousChapterButtonPressed implements ChapterDatabaseEvent {
  const factory PreviousChapterButtonPressed() = _$PreviousChapterButtonPressed;
}

abstract class $LikeButtonPressedCopyWith<$Res> {
  factory $LikeButtonPressedCopyWith(
          LikeButtonPressed value, $Res Function(LikeButtonPressed) then) =
      _$LikeButtonPressedCopyWithImpl<$Res>;
}

class _$LikeButtonPressedCopyWithImpl<$Res>
    extends _$ChapterDatabaseEventCopyWithImpl<$Res>
    implements $LikeButtonPressedCopyWith<$Res> {
  _$LikeButtonPressedCopyWithImpl(
      LikeButtonPressed _value, $Res Function(LikeButtonPressed) _then)
      : super(_value, (v) => _then(v as LikeButtonPressed));

  @override
  LikeButtonPressed get _value => super._value as LikeButtonPressed;
}

class _$LikeButtonPressed
    with DiagnosticableTreeMixin
    implements LikeButtonPressed {
  const _$LikeButtonPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterDatabaseEvent.likeButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterDatabaseEvent.likeButtonPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LikeButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result chapterPageLaunched(Chapter chapter, BuildContext context),
    @required Result previousChapterButtonPressed(),
    @required Result likeButtonPressed(),
    @required Result bookmarkButtonPressed(),
    @required Result showOrHideNavbar(),
    @required Result scroll(int currentScrollPosition, int maxScrollPosition),
    @required Result toggleChapterAdditionalInfo(),
    @required Result fetchNextChapters(),
  }) {
    assert(chapterPageLaunched != null);
    assert(previousChapterButtonPressed != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showOrHideNavbar != null);
    assert(scroll != null);
    assert(toggleChapterAdditionalInfo != null);
    assert(fetchNextChapters != null);
    return likeButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result chapterPageLaunched(Chapter chapter, BuildContext context),
    Result previousChapterButtonPressed(),
    Result likeButtonPressed(),
    Result bookmarkButtonPressed(),
    Result showOrHideNavbar(),
    Result scroll(int currentScrollPosition, int maxScrollPosition),
    Result toggleChapterAdditionalInfo(),
    Result fetchNextChapters(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likeButtonPressed != null) {
      return likeButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result chapterPageLaunched(ChapterPageLaunched value),
    @required
        Result previousChapterButtonPressed(PreviousChapterButtonPressed value),
    @required Result likeButtonPressed(LikeButtonPressed value),
    @required Result bookmarkButtonPressed(BookmarkButtonPressed value),
    @required Result showOrHideNavbar(ShowOrHideNavbar value),
    @required Result scroll(Scroll value),
    @required
        Result toggleChapterAdditionalInfo(ToggleChapterAdditionalInfo value),
    @required Result fetchNextChapters(FetchNextChapters value),
  }) {
    assert(chapterPageLaunched != null);
    assert(previousChapterButtonPressed != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showOrHideNavbar != null);
    assert(scroll != null);
    assert(toggleChapterAdditionalInfo != null);
    assert(fetchNextChapters != null);
    return likeButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result chapterPageLaunched(ChapterPageLaunched value),
    Result previousChapterButtonPressed(PreviousChapterButtonPressed value),
    Result likeButtonPressed(LikeButtonPressed value),
    Result bookmarkButtonPressed(BookmarkButtonPressed value),
    Result showOrHideNavbar(ShowOrHideNavbar value),
    Result scroll(Scroll value),
    Result toggleChapterAdditionalInfo(ToggleChapterAdditionalInfo value),
    Result fetchNextChapters(FetchNextChapters value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likeButtonPressed != null) {
      return likeButtonPressed(this);
    }
    return orElse();
  }
}

abstract class LikeButtonPressed implements ChapterDatabaseEvent {
  const factory LikeButtonPressed() = _$LikeButtonPressed;
}

abstract class $BookmarkButtonPressedCopyWith<$Res> {
  factory $BookmarkButtonPressedCopyWith(BookmarkButtonPressed value,
          $Res Function(BookmarkButtonPressed) then) =
      _$BookmarkButtonPressedCopyWithImpl<$Res>;
}

class _$BookmarkButtonPressedCopyWithImpl<$Res>
    extends _$ChapterDatabaseEventCopyWithImpl<$Res>
    implements $BookmarkButtonPressedCopyWith<$Res> {
  _$BookmarkButtonPressedCopyWithImpl(
      BookmarkButtonPressed _value, $Res Function(BookmarkButtonPressed) _then)
      : super(_value, (v) => _then(v as BookmarkButtonPressed));

  @override
  BookmarkButtonPressed get _value => super._value as BookmarkButtonPressed;
}

class _$BookmarkButtonPressed
    with DiagnosticableTreeMixin
    implements BookmarkButtonPressed {
  const _$BookmarkButtonPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterDatabaseEvent.bookmarkButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterDatabaseEvent.bookmarkButtonPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BookmarkButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result chapterPageLaunched(Chapter chapter, BuildContext context),
    @required Result previousChapterButtonPressed(),
    @required Result likeButtonPressed(),
    @required Result bookmarkButtonPressed(),
    @required Result showOrHideNavbar(),
    @required Result scroll(int currentScrollPosition, int maxScrollPosition),
    @required Result toggleChapterAdditionalInfo(),
    @required Result fetchNextChapters(),
  }) {
    assert(chapterPageLaunched != null);
    assert(previousChapterButtonPressed != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showOrHideNavbar != null);
    assert(scroll != null);
    assert(toggleChapterAdditionalInfo != null);
    assert(fetchNextChapters != null);
    return bookmarkButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result chapterPageLaunched(Chapter chapter, BuildContext context),
    Result previousChapterButtonPressed(),
    Result likeButtonPressed(),
    Result bookmarkButtonPressed(),
    Result showOrHideNavbar(),
    Result scroll(int currentScrollPosition, int maxScrollPosition),
    Result toggleChapterAdditionalInfo(),
    Result fetchNextChapters(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bookmarkButtonPressed != null) {
      return bookmarkButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result chapterPageLaunched(ChapterPageLaunched value),
    @required
        Result previousChapterButtonPressed(PreviousChapterButtonPressed value),
    @required Result likeButtonPressed(LikeButtonPressed value),
    @required Result bookmarkButtonPressed(BookmarkButtonPressed value),
    @required Result showOrHideNavbar(ShowOrHideNavbar value),
    @required Result scroll(Scroll value),
    @required
        Result toggleChapterAdditionalInfo(ToggleChapterAdditionalInfo value),
    @required Result fetchNextChapters(FetchNextChapters value),
  }) {
    assert(chapterPageLaunched != null);
    assert(previousChapterButtonPressed != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showOrHideNavbar != null);
    assert(scroll != null);
    assert(toggleChapterAdditionalInfo != null);
    assert(fetchNextChapters != null);
    return bookmarkButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result chapterPageLaunched(ChapterPageLaunched value),
    Result previousChapterButtonPressed(PreviousChapterButtonPressed value),
    Result likeButtonPressed(LikeButtonPressed value),
    Result bookmarkButtonPressed(BookmarkButtonPressed value),
    Result showOrHideNavbar(ShowOrHideNavbar value),
    Result scroll(Scroll value),
    Result toggleChapterAdditionalInfo(ToggleChapterAdditionalInfo value),
    Result fetchNextChapters(FetchNextChapters value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bookmarkButtonPressed != null) {
      return bookmarkButtonPressed(this);
    }
    return orElse();
  }
}

abstract class BookmarkButtonPressed implements ChapterDatabaseEvent {
  const factory BookmarkButtonPressed() = _$BookmarkButtonPressed;
}

abstract class $ShowOrHideNavbarCopyWith<$Res> {
  factory $ShowOrHideNavbarCopyWith(
          ShowOrHideNavbar value, $Res Function(ShowOrHideNavbar) then) =
      _$ShowOrHideNavbarCopyWithImpl<$Res>;
}

class _$ShowOrHideNavbarCopyWithImpl<$Res>
    extends _$ChapterDatabaseEventCopyWithImpl<$Res>
    implements $ShowOrHideNavbarCopyWith<$Res> {
  _$ShowOrHideNavbarCopyWithImpl(
      ShowOrHideNavbar _value, $Res Function(ShowOrHideNavbar) _then)
      : super(_value, (v) => _then(v as ShowOrHideNavbar));

  @override
  ShowOrHideNavbar get _value => super._value as ShowOrHideNavbar;
}

class _$ShowOrHideNavbar
    with DiagnosticableTreeMixin
    implements ShowOrHideNavbar {
  const _$ShowOrHideNavbar();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterDatabaseEvent.showOrHideNavbar()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ChapterDatabaseEvent.showOrHideNavbar'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowOrHideNavbar);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result chapterPageLaunched(Chapter chapter, BuildContext context),
    @required Result previousChapterButtonPressed(),
    @required Result likeButtonPressed(),
    @required Result bookmarkButtonPressed(),
    @required Result showOrHideNavbar(),
    @required Result scroll(int currentScrollPosition, int maxScrollPosition),
    @required Result toggleChapterAdditionalInfo(),
    @required Result fetchNextChapters(),
  }) {
    assert(chapterPageLaunched != null);
    assert(previousChapterButtonPressed != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showOrHideNavbar != null);
    assert(scroll != null);
    assert(toggleChapterAdditionalInfo != null);
    assert(fetchNextChapters != null);
    return showOrHideNavbar();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result chapterPageLaunched(Chapter chapter, BuildContext context),
    Result previousChapterButtonPressed(),
    Result likeButtonPressed(),
    Result bookmarkButtonPressed(),
    Result showOrHideNavbar(),
    Result scroll(int currentScrollPosition, int maxScrollPosition),
    Result toggleChapterAdditionalInfo(),
    Result fetchNextChapters(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showOrHideNavbar != null) {
      return showOrHideNavbar();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result chapterPageLaunched(ChapterPageLaunched value),
    @required
        Result previousChapterButtonPressed(PreviousChapterButtonPressed value),
    @required Result likeButtonPressed(LikeButtonPressed value),
    @required Result bookmarkButtonPressed(BookmarkButtonPressed value),
    @required Result showOrHideNavbar(ShowOrHideNavbar value),
    @required Result scroll(Scroll value),
    @required
        Result toggleChapterAdditionalInfo(ToggleChapterAdditionalInfo value),
    @required Result fetchNextChapters(FetchNextChapters value),
  }) {
    assert(chapterPageLaunched != null);
    assert(previousChapterButtonPressed != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showOrHideNavbar != null);
    assert(scroll != null);
    assert(toggleChapterAdditionalInfo != null);
    assert(fetchNextChapters != null);
    return showOrHideNavbar(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result chapterPageLaunched(ChapterPageLaunched value),
    Result previousChapterButtonPressed(PreviousChapterButtonPressed value),
    Result likeButtonPressed(LikeButtonPressed value),
    Result bookmarkButtonPressed(BookmarkButtonPressed value),
    Result showOrHideNavbar(ShowOrHideNavbar value),
    Result scroll(Scroll value),
    Result toggleChapterAdditionalInfo(ToggleChapterAdditionalInfo value),
    Result fetchNextChapters(FetchNextChapters value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showOrHideNavbar != null) {
      return showOrHideNavbar(this);
    }
    return orElse();
  }
}

abstract class ShowOrHideNavbar implements ChapterDatabaseEvent {
  const factory ShowOrHideNavbar() = _$ShowOrHideNavbar;
}

abstract class $ScrollCopyWith<$Res> {
  factory $ScrollCopyWith(Scroll value, $Res Function(Scroll) then) =
      _$ScrollCopyWithImpl<$Res>;
  $Res call({int currentScrollPosition, int maxScrollPosition});
}

class _$ScrollCopyWithImpl<$Res>
    extends _$ChapterDatabaseEventCopyWithImpl<$Res>
    implements $ScrollCopyWith<$Res> {
  _$ScrollCopyWithImpl(Scroll _value, $Res Function(Scroll) _then)
      : super(_value, (v) => _then(v as Scroll));

  @override
  Scroll get _value => super._value as Scroll;

  @override
  $Res call({
    Object currentScrollPosition = freezed,
    Object maxScrollPosition = freezed,
  }) {
    return _then(Scroll(
      currentScrollPosition: currentScrollPosition == freezed
          ? _value.currentScrollPosition
          : currentScrollPosition as int,
      maxScrollPosition: maxScrollPosition == freezed
          ? _value.maxScrollPosition
          : maxScrollPosition as int,
    ));
  }
}

class _$Scroll with DiagnosticableTreeMixin implements Scroll {
  const _$Scroll(
      {@required this.currentScrollPosition, @required this.maxScrollPosition})
      : assert(currentScrollPosition != null),
        assert(maxScrollPosition != null);

  @override
  final int currentScrollPosition;
  @override
  final int maxScrollPosition;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterDatabaseEvent.scroll(currentScrollPosition: $currentScrollPosition, maxScrollPosition: $maxScrollPosition)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChapterDatabaseEvent.scroll'))
      ..add(DiagnosticsProperty('currentScrollPosition', currentScrollPosition))
      ..add(DiagnosticsProperty('maxScrollPosition', maxScrollPosition));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Scroll &&
            (identical(other.currentScrollPosition, currentScrollPosition) ||
                const DeepCollectionEquality().equals(
                    other.currentScrollPosition, currentScrollPosition)) &&
            (identical(other.maxScrollPosition, maxScrollPosition) ||
                const DeepCollectionEquality()
                    .equals(other.maxScrollPosition, maxScrollPosition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentScrollPosition) ^
      const DeepCollectionEquality().hash(maxScrollPosition);

  @override
  $ScrollCopyWith<Scroll> get copyWith =>
      _$ScrollCopyWithImpl<Scroll>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result chapterPageLaunched(Chapter chapter, BuildContext context),
    @required Result previousChapterButtonPressed(),
    @required Result likeButtonPressed(),
    @required Result bookmarkButtonPressed(),
    @required Result showOrHideNavbar(),
    @required Result scroll(int currentScrollPosition, int maxScrollPosition),
    @required Result toggleChapterAdditionalInfo(),
    @required Result fetchNextChapters(),
  }) {
    assert(chapterPageLaunched != null);
    assert(previousChapterButtonPressed != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showOrHideNavbar != null);
    assert(scroll != null);
    assert(toggleChapterAdditionalInfo != null);
    assert(fetchNextChapters != null);
    return scroll(currentScrollPosition, maxScrollPosition);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result chapterPageLaunched(Chapter chapter, BuildContext context),
    Result previousChapterButtonPressed(),
    Result likeButtonPressed(),
    Result bookmarkButtonPressed(),
    Result showOrHideNavbar(),
    Result scroll(int currentScrollPosition, int maxScrollPosition),
    Result toggleChapterAdditionalInfo(),
    Result fetchNextChapters(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (scroll != null) {
      return scroll(currentScrollPosition, maxScrollPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result chapterPageLaunched(ChapterPageLaunched value),
    @required
        Result previousChapterButtonPressed(PreviousChapterButtonPressed value),
    @required Result likeButtonPressed(LikeButtonPressed value),
    @required Result bookmarkButtonPressed(BookmarkButtonPressed value),
    @required Result showOrHideNavbar(ShowOrHideNavbar value),
    @required Result scroll(Scroll value),
    @required
        Result toggleChapterAdditionalInfo(ToggleChapterAdditionalInfo value),
    @required Result fetchNextChapters(FetchNextChapters value),
  }) {
    assert(chapterPageLaunched != null);
    assert(previousChapterButtonPressed != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showOrHideNavbar != null);
    assert(scroll != null);
    assert(toggleChapterAdditionalInfo != null);
    assert(fetchNextChapters != null);
    return scroll(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result chapterPageLaunched(ChapterPageLaunched value),
    Result previousChapterButtonPressed(PreviousChapterButtonPressed value),
    Result likeButtonPressed(LikeButtonPressed value),
    Result bookmarkButtonPressed(BookmarkButtonPressed value),
    Result showOrHideNavbar(ShowOrHideNavbar value),
    Result scroll(Scroll value),
    Result toggleChapterAdditionalInfo(ToggleChapterAdditionalInfo value),
    Result fetchNextChapters(FetchNextChapters value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (scroll != null) {
      return scroll(this);
    }
    return orElse();
  }
}

abstract class Scroll implements ChapterDatabaseEvent {
  const factory Scroll(
      {@required int currentScrollPosition,
      @required int maxScrollPosition}) = _$Scroll;

  int get currentScrollPosition;
  int get maxScrollPosition;
  $ScrollCopyWith<Scroll> get copyWith;
}

abstract class $ToggleChapterAdditionalInfoCopyWith<$Res> {
  factory $ToggleChapterAdditionalInfoCopyWith(
          ToggleChapterAdditionalInfo value,
          $Res Function(ToggleChapterAdditionalInfo) then) =
      _$ToggleChapterAdditionalInfoCopyWithImpl<$Res>;
}

class _$ToggleChapterAdditionalInfoCopyWithImpl<$Res>
    extends _$ChapterDatabaseEventCopyWithImpl<$Res>
    implements $ToggleChapterAdditionalInfoCopyWith<$Res> {
  _$ToggleChapterAdditionalInfoCopyWithImpl(ToggleChapterAdditionalInfo _value,
      $Res Function(ToggleChapterAdditionalInfo) _then)
      : super(_value, (v) => _then(v as ToggleChapterAdditionalInfo));

  @override
  ToggleChapterAdditionalInfo get _value =>
      super._value as ToggleChapterAdditionalInfo;
}

class _$ToggleChapterAdditionalInfo
    with DiagnosticableTreeMixin
    implements ToggleChapterAdditionalInfo {
  const _$ToggleChapterAdditionalInfo();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterDatabaseEvent.toggleChapterAdditionalInfo()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterDatabaseEvent.toggleChapterAdditionalInfo'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ToggleChapterAdditionalInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result chapterPageLaunched(Chapter chapter, BuildContext context),
    @required Result previousChapterButtonPressed(),
    @required Result likeButtonPressed(),
    @required Result bookmarkButtonPressed(),
    @required Result showOrHideNavbar(),
    @required Result scroll(int currentScrollPosition, int maxScrollPosition),
    @required Result toggleChapterAdditionalInfo(),
    @required Result fetchNextChapters(),
  }) {
    assert(chapterPageLaunched != null);
    assert(previousChapterButtonPressed != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showOrHideNavbar != null);
    assert(scroll != null);
    assert(toggleChapterAdditionalInfo != null);
    assert(fetchNextChapters != null);
    return toggleChapterAdditionalInfo();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result chapterPageLaunched(Chapter chapter, BuildContext context),
    Result previousChapterButtonPressed(),
    Result likeButtonPressed(),
    Result bookmarkButtonPressed(),
    Result showOrHideNavbar(),
    Result scroll(int currentScrollPosition, int maxScrollPosition),
    Result toggleChapterAdditionalInfo(),
    Result fetchNextChapters(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleChapterAdditionalInfo != null) {
      return toggleChapterAdditionalInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result chapterPageLaunched(ChapterPageLaunched value),
    @required
        Result previousChapterButtonPressed(PreviousChapterButtonPressed value),
    @required Result likeButtonPressed(LikeButtonPressed value),
    @required Result bookmarkButtonPressed(BookmarkButtonPressed value),
    @required Result showOrHideNavbar(ShowOrHideNavbar value),
    @required Result scroll(Scroll value),
    @required
        Result toggleChapterAdditionalInfo(ToggleChapterAdditionalInfo value),
    @required Result fetchNextChapters(FetchNextChapters value),
  }) {
    assert(chapterPageLaunched != null);
    assert(previousChapterButtonPressed != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showOrHideNavbar != null);
    assert(scroll != null);
    assert(toggleChapterAdditionalInfo != null);
    assert(fetchNextChapters != null);
    return toggleChapterAdditionalInfo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result chapterPageLaunched(ChapterPageLaunched value),
    Result previousChapterButtonPressed(PreviousChapterButtonPressed value),
    Result likeButtonPressed(LikeButtonPressed value),
    Result bookmarkButtonPressed(BookmarkButtonPressed value),
    Result showOrHideNavbar(ShowOrHideNavbar value),
    Result scroll(Scroll value),
    Result toggleChapterAdditionalInfo(ToggleChapterAdditionalInfo value),
    Result fetchNextChapters(FetchNextChapters value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleChapterAdditionalInfo != null) {
      return toggleChapterAdditionalInfo(this);
    }
    return orElse();
  }
}

abstract class ToggleChapterAdditionalInfo implements ChapterDatabaseEvent {
  const factory ToggleChapterAdditionalInfo() = _$ToggleChapterAdditionalInfo;
}

abstract class $FetchNextChaptersCopyWith<$Res> {
  factory $FetchNextChaptersCopyWith(
          FetchNextChapters value, $Res Function(FetchNextChapters) then) =
      _$FetchNextChaptersCopyWithImpl<$Res>;
}

class _$FetchNextChaptersCopyWithImpl<$Res>
    extends _$ChapterDatabaseEventCopyWithImpl<$Res>
    implements $FetchNextChaptersCopyWith<$Res> {
  _$FetchNextChaptersCopyWithImpl(
      FetchNextChapters _value, $Res Function(FetchNextChapters) _then)
      : super(_value, (v) => _then(v as FetchNextChapters));

  @override
  FetchNextChapters get _value => super._value as FetchNextChapters;
}

class _$FetchNextChapters
    with DiagnosticableTreeMixin
    implements FetchNextChapters {
  const _$FetchNextChapters();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterDatabaseEvent.fetchNextChapters()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChapterDatabaseEvent.fetchNextChapters'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchNextChapters);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result chapterPageLaunched(Chapter chapter, BuildContext context),
    @required Result previousChapterButtonPressed(),
    @required Result likeButtonPressed(),
    @required Result bookmarkButtonPressed(),
    @required Result showOrHideNavbar(),
    @required Result scroll(int currentScrollPosition, int maxScrollPosition),
    @required Result toggleChapterAdditionalInfo(),
    @required Result fetchNextChapters(),
  }) {
    assert(chapterPageLaunched != null);
    assert(previousChapterButtonPressed != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showOrHideNavbar != null);
    assert(scroll != null);
    assert(toggleChapterAdditionalInfo != null);
    assert(fetchNextChapters != null);
    return fetchNextChapters();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result chapterPageLaunched(Chapter chapter, BuildContext context),
    Result previousChapterButtonPressed(),
    Result likeButtonPressed(),
    Result bookmarkButtonPressed(),
    Result showOrHideNavbar(),
    Result scroll(int currentScrollPosition, int maxScrollPosition),
    Result toggleChapterAdditionalInfo(),
    Result fetchNextChapters(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchNextChapters != null) {
      return fetchNextChapters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result chapterPageLaunched(ChapterPageLaunched value),
    @required
        Result previousChapterButtonPressed(PreviousChapterButtonPressed value),
    @required Result likeButtonPressed(LikeButtonPressed value),
    @required Result bookmarkButtonPressed(BookmarkButtonPressed value),
    @required Result showOrHideNavbar(ShowOrHideNavbar value),
    @required Result scroll(Scroll value),
    @required
        Result toggleChapterAdditionalInfo(ToggleChapterAdditionalInfo value),
    @required Result fetchNextChapters(FetchNextChapters value),
  }) {
    assert(chapterPageLaunched != null);
    assert(previousChapterButtonPressed != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showOrHideNavbar != null);
    assert(scroll != null);
    assert(toggleChapterAdditionalInfo != null);
    assert(fetchNextChapters != null);
    return fetchNextChapters(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result chapterPageLaunched(ChapterPageLaunched value),
    Result previousChapterButtonPressed(PreviousChapterButtonPressed value),
    Result likeButtonPressed(LikeButtonPressed value),
    Result bookmarkButtonPressed(BookmarkButtonPressed value),
    Result showOrHideNavbar(ShowOrHideNavbar value),
    Result scroll(Scroll value),
    Result toggleChapterAdditionalInfo(ToggleChapterAdditionalInfo value),
    Result fetchNextChapters(FetchNextChapters value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchNextChapters != null) {
      return fetchNextChapters(this);
    }
    return orElse();
  }
}

abstract class FetchNextChapters implements ChapterDatabaseEvent {
  const factory FetchNextChapters() = _$FetchNextChapters;
}

class _$ChapterDatabaseStateTearOff {
  const _$ChapterDatabaseStateTearOff();

  _ChapterDatabaseState call(
      {@required
          Session session,
      @required
          Chapter chapter,
      @required
          Chapter nextSameAuthorChapter,
      @required
          List<Chapter> nextChapters,
      @required
          bool isLiked,
      @required
          bool isBookmarked,
      @required
          int viewsCount,
      @required
          int likesCount,
      @required
          int bookmarksCount,
      @required
          bool showNavbar,
      @required
          double percentProgress,
      @required
          bool showChapterAdditionalInfo,
      @required
          Map<String, String> genresMap,
      @required
          Map<String, String> languagesMap,
      @required
          Map<String, String> copyrightsMap,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) {
    return _ChapterDatabaseState(
      session: session,
      chapter: chapter,
      nextSameAuthorChapter: nextSameAuthorChapter,
      nextChapters: nextChapters,
      isLiked: isLiked,
      isBookmarked: isBookmarked,
      viewsCount: viewsCount,
      likesCount: likesCount,
      bookmarksCount: bookmarksCount,
      showNavbar: showNavbar,
      percentProgress: percentProgress,
      showChapterAdditionalInfo: showChapterAdditionalInfo,
      genresMap: genresMap,
      languagesMap: languagesMap,
      copyrightsMap: copyrightsMap,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $ChapterDatabaseState = _$ChapterDatabaseStateTearOff();

mixin _$ChapterDatabaseState {
  Session get session;
  Chapter get chapter;
  Chapter get nextSameAuthorChapter;
  List<Chapter> get nextChapters;
  bool get isLiked;
  bool get isBookmarked;
  int get viewsCount;
  int get likesCount;
  int get bookmarksCount;
  bool get showNavbar;
  double get percentProgress;
  bool get showChapterAdditionalInfo;
  Map<String, String> get genresMap;
  Map<String, String> get languagesMap;
  Map<String, String> get copyrightsMap;
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;

  $ChapterDatabaseStateCopyWith<ChapterDatabaseState> get copyWith;
}

abstract class $ChapterDatabaseStateCopyWith<$Res> {
  factory $ChapterDatabaseStateCopyWith(ChapterDatabaseState value,
          $Res Function(ChapterDatabaseState) then) =
      _$ChapterDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {Session session,
      Chapter chapter,
      Chapter nextSameAuthorChapter,
      List<Chapter> nextChapters,
      bool isLiked,
      bool isBookmarked,
      int viewsCount,
      int likesCount,
      int bookmarksCount,
      bool showNavbar,
      double percentProgress,
      bool showChapterAdditionalInfo,
      Map<String, String> genresMap,
      Map<String, String> languagesMap,
      Map<String, String> copyrightsMap,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption});
}

class _$ChapterDatabaseStateCopyWithImpl<$Res>
    implements $ChapterDatabaseStateCopyWith<$Res> {
  _$ChapterDatabaseStateCopyWithImpl(this._value, this._then);

  final ChapterDatabaseState _value;
  // ignore: unused_field
  final $Res Function(ChapterDatabaseState) _then;

  @override
  $Res call({
    Object session = freezed,
    Object chapter = freezed,
    Object nextSameAuthorChapter = freezed,
    Object nextChapters = freezed,
    Object isLiked = freezed,
    Object isBookmarked = freezed,
    Object viewsCount = freezed,
    Object likesCount = freezed,
    Object bookmarksCount = freezed,
    Object showNavbar = freezed,
    Object percentProgress = freezed,
    Object showChapterAdditionalInfo = freezed,
    Object genresMap = freezed,
    Object languagesMap = freezed,
    Object copyrightsMap = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      session: session == freezed ? _value.session : session as Session,
      chapter: chapter == freezed ? _value.chapter : chapter as Chapter,
      nextSameAuthorChapter: nextSameAuthorChapter == freezed
          ? _value.nextSameAuthorChapter
          : nextSameAuthorChapter as Chapter,
      nextChapters: nextChapters == freezed
          ? _value.nextChapters
          : nextChapters as List<Chapter>,
      isLiked: isLiked == freezed ? _value.isLiked : isLiked as bool,
      isBookmarked:
          isBookmarked == freezed ? _value.isBookmarked : isBookmarked as bool,
      viewsCount: viewsCount == freezed ? _value.viewsCount : viewsCount as int,
      likesCount: likesCount == freezed ? _value.likesCount : likesCount as int,
      bookmarksCount: bookmarksCount == freezed
          ? _value.bookmarksCount
          : bookmarksCount as int,
      showNavbar:
          showNavbar == freezed ? _value.showNavbar : showNavbar as bool,
      percentProgress: percentProgress == freezed
          ? _value.percentProgress
          : percentProgress as double,
      showChapterAdditionalInfo: showChapterAdditionalInfo == freezed
          ? _value.showChapterAdditionalInfo
          : showChapterAdditionalInfo as bool,
      genresMap: genresMap == freezed
          ? _value.genresMap
          : genresMap as Map<String, String>,
      languagesMap: languagesMap == freezed
          ? _value.languagesMap
          : languagesMap as Map<String, String>,
      copyrightsMap: copyrightsMap == freezed
          ? _value.copyrightsMap
          : copyrightsMap as Map<String, String>,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, dynamic>>,
    ));
  }
}

abstract class _$ChapterDatabaseStateCopyWith<$Res>
    implements $ChapterDatabaseStateCopyWith<$Res> {
  factory _$ChapterDatabaseStateCopyWith(_ChapterDatabaseState value,
          $Res Function(_ChapterDatabaseState) then) =
      __$ChapterDatabaseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Session session,
      Chapter chapter,
      Chapter nextSameAuthorChapter,
      List<Chapter> nextChapters,
      bool isLiked,
      bool isBookmarked,
      int viewsCount,
      int likesCount,
      int bookmarksCount,
      bool showNavbar,
      double percentProgress,
      bool showChapterAdditionalInfo,
      Map<String, String> genresMap,
      Map<String, String> languagesMap,
      Map<String, String> copyrightsMap,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption});
}

class __$ChapterDatabaseStateCopyWithImpl<$Res>
    extends _$ChapterDatabaseStateCopyWithImpl<$Res>
    implements _$ChapterDatabaseStateCopyWith<$Res> {
  __$ChapterDatabaseStateCopyWithImpl(
      _ChapterDatabaseState _value, $Res Function(_ChapterDatabaseState) _then)
      : super(_value, (v) => _then(v as _ChapterDatabaseState));

  @override
  _ChapterDatabaseState get _value => super._value as _ChapterDatabaseState;

  @override
  $Res call({
    Object session = freezed,
    Object chapter = freezed,
    Object nextSameAuthorChapter = freezed,
    Object nextChapters = freezed,
    Object isLiked = freezed,
    Object isBookmarked = freezed,
    Object viewsCount = freezed,
    Object likesCount = freezed,
    Object bookmarksCount = freezed,
    Object showNavbar = freezed,
    Object percentProgress = freezed,
    Object showChapterAdditionalInfo = freezed,
    Object genresMap = freezed,
    Object languagesMap = freezed,
    Object copyrightsMap = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_ChapterDatabaseState(
      session: session == freezed ? _value.session : session as Session,
      chapter: chapter == freezed ? _value.chapter : chapter as Chapter,
      nextSameAuthorChapter: nextSameAuthorChapter == freezed
          ? _value.nextSameAuthorChapter
          : nextSameAuthorChapter as Chapter,
      nextChapters: nextChapters == freezed
          ? _value.nextChapters
          : nextChapters as List<Chapter>,
      isLiked: isLiked == freezed ? _value.isLiked : isLiked as bool,
      isBookmarked:
          isBookmarked == freezed ? _value.isBookmarked : isBookmarked as bool,
      viewsCount: viewsCount == freezed ? _value.viewsCount : viewsCount as int,
      likesCount: likesCount == freezed ? _value.likesCount : likesCount as int,
      bookmarksCount: bookmarksCount == freezed
          ? _value.bookmarksCount
          : bookmarksCount as int,
      showNavbar:
          showNavbar == freezed ? _value.showNavbar : showNavbar as bool,
      percentProgress: percentProgress == freezed
          ? _value.percentProgress
          : percentProgress as double,
      showChapterAdditionalInfo: showChapterAdditionalInfo == freezed
          ? _value.showChapterAdditionalInfo
          : showChapterAdditionalInfo as bool,
      genresMap: genresMap == freezed
          ? _value.genresMap
          : genresMap as Map<String, String>,
      languagesMap: languagesMap == freezed
          ? _value.languagesMap
          : languagesMap as Map<String, String>,
      copyrightsMap: copyrightsMap == freezed
          ? _value.copyrightsMap
          : copyrightsMap as Map<String, String>,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, dynamic>>,
    ));
  }
}

class _$_ChapterDatabaseState
    with DiagnosticableTreeMixin
    implements _ChapterDatabaseState {
  const _$_ChapterDatabaseState(
      {@required this.session,
      @required this.chapter,
      @required this.nextSameAuthorChapter,
      @required this.nextChapters,
      @required this.isLiked,
      @required this.isBookmarked,
      @required this.viewsCount,
      @required this.likesCount,
      @required this.bookmarksCount,
      @required this.showNavbar,
      @required this.percentProgress,
      @required this.showChapterAdditionalInfo,
      @required this.genresMap,
      @required this.languagesMap,
      @required this.copyrightsMap,
      @required this.databaseFailureOrSuccessOption})
      : assert(session != null),
        assert(chapter != null),
        assert(nextSameAuthorChapter != null),
        assert(nextChapters != null),
        assert(isLiked != null),
        assert(isBookmarked != null),
        assert(viewsCount != null),
        assert(likesCount != null),
        assert(bookmarksCount != null),
        assert(showNavbar != null),
        assert(percentProgress != null),
        assert(showChapterAdditionalInfo != null),
        assert(genresMap != null),
        assert(languagesMap != null),
        assert(copyrightsMap != null),
        assert(databaseFailureOrSuccessOption != null);

  @override
  final Session session;
  @override
  final Chapter chapter;
  @override
  final Chapter nextSameAuthorChapter;
  @override
  final List<Chapter> nextChapters;
  @override
  final bool isLiked;
  @override
  final bool isBookmarked;
  @override
  final int viewsCount;
  @override
  final int likesCount;
  @override
  final int bookmarksCount;
  @override
  final bool showNavbar;
  @override
  final double percentProgress;
  @override
  final bool showChapterAdditionalInfo;
  @override
  final Map<String, String> genresMap;
  @override
  final Map<String, String> languagesMap;
  @override
  final Map<String, String> copyrightsMap;
  @override
  final Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterDatabaseState(session: $session, chapter: $chapter, nextSameAuthorChapter: $nextSameAuthorChapter, nextChapters: $nextChapters, isLiked: $isLiked, isBookmarked: $isBookmarked, viewsCount: $viewsCount, likesCount: $likesCount, bookmarksCount: $bookmarksCount, showNavbar: $showNavbar, percentProgress: $percentProgress, showChapterAdditionalInfo: $showChapterAdditionalInfo, genresMap: $genresMap, languagesMap: $languagesMap, copyrightsMap: $copyrightsMap, databaseFailureOrSuccessOption: $databaseFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChapterDatabaseState'))
      ..add(DiagnosticsProperty('session', session))
      ..add(DiagnosticsProperty('chapter', chapter))
      ..add(DiagnosticsProperty('nextSameAuthorChapter', nextSameAuthorChapter))
      ..add(DiagnosticsProperty('nextChapters', nextChapters))
      ..add(DiagnosticsProperty('isLiked', isLiked))
      ..add(DiagnosticsProperty('isBookmarked', isBookmarked))
      ..add(DiagnosticsProperty('viewsCount', viewsCount))
      ..add(DiagnosticsProperty('likesCount', likesCount))
      ..add(DiagnosticsProperty('bookmarksCount', bookmarksCount))
      ..add(DiagnosticsProperty('showNavbar', showNavbar))
      ..add(DiagnosticsProperty('percentProgress', percentProgress))
      ..add(DiagnosticsProperty(
          'showChapterAdditionalInfo', showChapterAdditionalInfo))
      ..add(DiagnosticsProperty('genresMap', genresMap))
      ..add(DiagnosticsProperty('languagesMap', languagesMap))
      ..add(DiagnosticsProperty('copyrightsMap', copyrightsMap))
      ..add(DiagnosticsProperty(
          'databaseFailureOrSuccessOption', databaseFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChapterDatabaseState &&
            (identical(other.session, session) ||
                const DeepCollectionEquality()
                    .equals(other.session, session)) &&
            (identical(other.chapter, chapter) ||
                const DeepCollectionEquality()
                    .equals(other.chapter, chapter)) &&
            (identical(other.nextSameAuthorChapter, nextSameAuthorChapter) ||
                const DeepCollectionEquality().equals(
                    other.nextSameAuthorChapter, nextSameAuthorChapter)) &&
            (identical(other.nextChapters, nextChapters) ||
                const DeepCollectionEquality()
                    .equals(other.nextChapters, nextChapters)) &&
            (identical(other.isLiked, isLiked) ||
                const DeepCollectionEquality()
                    .equals(other.isLiked, isLiked)) &&
            (identical(other.isBookmarked, isBookmarked) ||
                const DeepCollectionEquality()
                    .equals(other.isBookmarked, isBookmarked)) &&
            (identical(other.viewsCount, viewsCount) ||
                const DeepCollectionEquality()
                    .equals(other.viewsCount, viewsCount)) &&
            (identical(other.likesCount, likesCount) ||
                const DeepCollectionEquality()
                    .equals(other.likesCount, likesCount)) &&
            (identical(other.bookmarksCount, bookmarksCount) ||
                const DeepCollectionEquality()
                    .equals(other.bookmarksCount, bookmarksCount)) &&
            (identical(other.showNavbar, showNavbar) ||
                const DeepCollectionEquality()
                    .equals(other.showNavbar, showNavbar)) &&
            (identical(other.percentProgress, percentProgress) ||
                const DeepCollectionEquality()
                    .equals(other.percentProgress, percentProgress)) &&
            (identical(other.showChapterAdditionalInfo,
                    showChapterAdditionalInfo) ||
                const DeepCollectionEquality().equals(
                    other.showChapterAdditionalInfo,
                    showChapterAdditionalInfo)) &&
            (identical(other.genresMap, genresMap) ||
                const DeepCollectionEquality()
                    .equals(other.genresMap, genresMap)) &&
            (identical(other.languagesMap, languagesMap) ||
                const DeepCollectionEquality()
                    .equals(other.languagesMap, languagesMap)) &&
            (identical(other.copyrightsMap, copyrightsMap) ||
                const DeepCollectionEquality()
                    .equals(other.copyrightsMap, copyrightsMap)) &&
            (identical(other.databaseFailureOrSuccessOption,
                    databaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.databaseFailureOrSuccessOption,
                    databaseFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(session) ^
      const DeepCollectionEquality().hash(chapter) ^
      const DeepCollectionEquality().hash(nextSameAuthorChapter) ^
      const DeepCollectionEquality().hash(nextChapters) ^
      const DeepCollectionEquality().hash(isLiked) ^
      const DeepCollectionEquality().hash(isBookmarked) ^
      const DeepCollectionEquality().hash(viewsCount) ^
      const DeepCollectionEquality().hash(likesCount) ^
      const DeepCollectionEquality().hash(bookmarksCount) ^
      const DeepCollectionEquality().hash(showNavbar) ^
      const DeepCollectionEquality().hash(percentProgress) ^
      const DeepCollectionEquality().hash(showChapterAdditionalInfo) ^
      const DeepCollectionEquality().hash(genresMap) ^
      const DeepCollectionEquality().hash(languagesMap) ^
      const DeepCollectionEquality().hash(copyrightsMap) ^
      const DeepCollectionEquality().hash(databaseFailureOrSuccessOption);

  @override
  _$ChapterDatabaseStateCopyWith<_ChapterDatabaseState> get copyWith =>
      __$ChapterDatabaseStateCopyWithImpl<_ChapterDatabaseState>(
          this, _$identity);
}

abstract class _ChapterDatabaseState implements ChapterDatabaseState {
  const factory _ChapterDatabaseState(
      {@required
          Session session,
      @required
          Chapter chapter,
      @required
          Chapter nextSameAuthorChapter,
      @required
          List<Chapter> nextChapters,
      @required
          bool isLiked,
      @required
          bool isBookmarked,
      @required
          int viewsCount,
      @required
          int likesCount,
      @required
          int bookmarksCount,
      @required
          bool showNavbar,
      @required
          double percentProgress,
      @required
          bool showChapterAdditionalInfo,
      @required
          Map<String, String> genresMap,
      @required
          Map<String, String> languagesMap,
      @required
          Map<String, String> copyrightsMap,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) = _$_ChapterDatabaseState;

  @override
  Session get session;
  @override
  Chapter get chapter;
  @override
  Chapter get nextSameAuthorChapter;
  @override
  List<Chapter> get nextChapters;
  @override
  bool get isLiked;
  @override
  bool get isBookmarked;
  @override
  int get viewsCount;
  @override
  int get likesCount;
  @override
  int get bookmarksCount;
  @override
  bool get showNavbar;
  @override
  double get percentProgress;
  @override
  bool get showChapterAdditionalInfo;
  @override
  Map<String, String> get genresMap;
  @override
  Map<String, String> get languagesMap;
  @override
  Map<String, String> get copyrightsMap;
  @override
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;
  @override
  _$ChapterDatabaseStateCopyWith<_ChapterDatabaseState> get copyWith;
}
