// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'new_series_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NewSeriesDatabaseEventTearOff {
  const _$NewSeriesDatabaseEventTearOff();

  NewSeriesPageLaunched newSeriesPageLaunched(
      {SeriesDraft seriesDraft, BuildContext context}) {
    return NewSeriesPageLaunched(
      seriesDraft: seriesDraft,
      context: context,
    );
  }

  TitleChanged titleChanged(String title) {
    return TitleChanged(
      title,
    );
  }

  SubtitleChanged subtitleChanged(String subtitle) {
    return SubtitleChanged(
      subtitle,
    );
  }

  SummaryChanged summaryChanged(String summary) {
    return SummaryChanged(
      summary,
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

  IsNSFWChanged isNSFWChanged({@required bool isNSFW}) {
    return IsNSFWChanged(
      isNSFW: isNSFW,
    );
  }

  SaveSeriesDraftButtonPressed saveSeriesDraftButtonPressed() {
    return const SaveSeriesDraftButtonPressed();
  }
}

// ignore: unused_element
const $NewSeriesDatabaseEvent = _$NewSeriesDatabaseEventTearOff();

mixin _$NewSeriesDatabaseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result newSeriesPageLaunched(
            SeriesDraft seriesDraft, BuildContext context),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result saveSeriesDraftButtonPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft, BuildContext context),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result isNSFWChanged(bool isNSFW),
    Result saveSeriesDraftButtonPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required
        Result saveSeriesDraftButtonPressed(SaveSeriesDraftButtonPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result saveSeriesDraftButtonPressed(SaveSeriesDraftButtonPressed value),
    @required Result orElse(),
  });
}

abstract class $NewSeriesDatabaseEventCopyWith<$Res> {
  factory $NewSeriesDatabaseEventCopyWith(NewSeriesDatabaseEvent value,
          $Res Function(NewSeriesDatabaseEvent) then) =
      _$NewSeriesDatabaseEventCopyWithImpl<$Res>;
}

class _$NewSeriesDatabaseEventCopyWithImpl<$Res>
    implements $NewSeriesDatabaseEventCopyWith<$Res> {
  _$NewSeriesDatabaseEventCopyWithImpl(this._value, this._then);

  final NewSeriesDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(NewSeriesDatabaseEvent) _then;
}

abstract class $NewSeriesPageLaunchedCopyWith<$Res> {
  factory $NewSeriesPageLaunchedCopyWith(NewSeriesPageLaunched value,
          $Res Function(NewSeriesPageLaunched) then) =
      _$NewSeriesPageLaunchedCopyWithImpl<$Res>;
  $Res call({SeriesDraft seriesDraft, BuildContext context});
}

class _$NewSeriesPageLaunchedCopyWithImpl<$Res>
    extends _$NewSeriesDatabaseEventCopyWithImpl<$Res>
    implements $NewSeriesPageLaunchedCopyWith<$Res> {
  _$NewSeriesPageLaunchedCopyWithImpl(
      NewSeriesPageLaunched _value, $Res Function(NewSeriesPageLaunched) _then)
      : super(_value, (v) => _then(v as NewSeriesPageLaunched));

  @override
  NewSeriesPageLaunched get _value => super._value as NewSeriesPageLaunched;

  @override
  $Res call({
    Object seriesDraft = freezed,
    Object context = freezed,
  }) {
    return _then(NewSeriesPageLaunched(
      seriesDraft: seriesDraft == freezed
          ? _value.seriesDraft
          : seriesDraft as SeriesDraft,
      context: context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

class _$NewSeriesPageLaunched
    with DiagnosticableTreeMixin
    implements NewSeriesPageLaunched {
  const _$NewSeriesPageLaunched({this.seriesDraft, this.context});

  @override
  final SeriesDraft seriesDraft;
  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewSeriesDatabaseEvent.newSeriesPageLaunched(seriesDraft: $seriesDraft, context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewSeriesDatabaseEvent.newSeriesPageLaunched'))
      ..add(DiagnosticsProperty('seriesDraft', seriesDraft))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewSeriesPageLaunched &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(seriesDraft) ^
      const DeepCollectionEquality().hash(context);

  @override
  $NewSeriesPageLaunchedCopyWith<NewSeriesPageLaunched> get copyWith =>
      _$NewSeriesPageLaunchedCopyWithImpl<NewSeriesPageLaunched>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result newSeriesPageLaunched(
            SeriesDraft seriesDraft, BuildContext context),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result saveSeriesDraftButtonPressed(),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(isNSFWChanged != null);
    assert(saveSeriesDraftButtonPressed != null);
    return newSeriesPageLaunched(seriesDraft, context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft, BuildContext context),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result isNSFWChanged(bool isNSFW),
    Result saveSeriesDraftButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newSeriesPageLaunched != null) {
      return newSeriesPageLaunched(seriesDraft, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required
        Result saveSeriesDraftButtonPressed(SaveSeriesDraftButtonPressed value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(isNSFWChanged != null);
    assert(saveSeriesDraftButtonPressed != null);
    return newSeriesPageLaunched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result saveSeriesDraftButtonPressed(SaveSeriesDraftButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newSeriesPageLaunched != null) {
      return newSeriesPageLaunched(this);
    }
    return orElse();
  }
}

abstract class NewSeriesPageLaunched implements NewSeriesDatabaseEvent {
  const factory NewSeriesPageLaunched(
      {SeriesDraft seriesDraft,
      BuildContext context}) = _$NewSeriesPageLaunched;

  SeriesDraft get seriesDraft;
  BuildContext get context;
  $NewSeriesPageLaunchedCopyWith<NewSeriesPageLaunched> get copyWith;
}

abstract class $TitleChangedCopyWith<$Res> {
  factory $TitleChangedCopyWith(
          TitleChanged value, $Res Function(TitleChanged) then) =
      _$TitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

class _$TitleChangedCopyWithImpl<$Res>
    extends _$NewSeriesDatabaseEventCopyWithImpl<$Res>
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
    return 'NewSeriesDatabaseEvent.titleChanged(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewSeriesDatabaseEvent.titleChanged'))
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
        Result newSeriesPageLaunched(
            SeriesDraft seriesDraft, BuildContext context),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result saveSeriesDraftButtonPressed(),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(isNSFWChanged != null);
    assert(saveSeriesDraftButtonPressed != null);
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft, BuildContext context),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result isNSFWChanged(bool isNSFW),
    Result saveSeriesDraftButtonPressed(),
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
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required
        Result saveSeriesDraftButtonPressed(SaveSeriesDraftButtonPressed value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(isNSFWChanged != null);
    assert(saveSeriesDraftButtonPressed != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result saveSeriesDraftButtonPressed(SaveSeriesDraftButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class TitleChanged implements NewSeriesDatabaseEvent {
  const factory TitleChanged(String title) = _$TitleChanged;

  String get title;
  $TitleChangedCopyWith<TitleChanged> get copyWith;
}

abstract class $SubtitleChangedCopyWith<$Res> {
  factory $SubtitleChangedCopyWith(
          SubtitleChanged value, $Res Function(SubtitleChanged) then) =
      _$SubtitleChangedCopyWithImpl<$Res>;
  $Res call({String subtitle});
}

class _$SubtitleChangedCopyWithImpl<$Res>
    extends _$NewSeriesDatabaseEventCopyWithImpl<$Res>
    implements $SubtitleChangedCopyWith<$Res> {
  _$SubtitleChangedCopyWithImpl(
      SubtitleChanged _value, $Res Function(SubtitleChanged) _then)
      : super(_value, (v) => _then(v as SubtitleChanged));

  @override
  SubtitleChanged get _value => super._value as SubtitleChanged;

  @override
  $Res call({
    Object subtitle = freezed,
  }) {
    return _then(SubtitleChanged(
      subtitle == freezed ? _value.subtitle : subtitle as String,
    ));
  }
}

class _$SubtitleChanged
    with DiagnosticableTreeMixin
    implements SubtitleChanged {
  const _$SubtitleChanged(this.subtitle) : assert(subtitle != null);

  @override
  final String subtitle;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewSeriesDatabaseEvent.subtitleChanged(subtitle: $subtitle)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NewSeriesDatabaseEvent.subtitleChanged'))
      ..add(DiagnosticsProperty('subtitle', subtitle));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubtitleChanged &&
            (identical(other.subtitle, subtitle) ||
                const DeepCollectionEquality()
                    .equals(other.subtitle, subtitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subtitle);

  @override
  $SubtitleChangedCopyWith<SubtitleChanged> get copyWith =>
      _$SubtitleChangedCopyWithImpl<SubtitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result newSeriesPageLaunched(
            SeriesDraft seriesDraft, BuildContext context),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result saveSeriesDraftButtonPressed(),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(isNSFWChanged != null);
    assert(saveSeriesDraftButtonPressed != null);
    return subtitleChanged(subtitle);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft, BuildContext context),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result isNSFWChanged(bool isNSFW),
    Result saveSeriesDraftButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (subtitleChanged != null) {
      return subtitleChanged(subtitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required
        Result saveSeriesDraftButtonPressed(SaveSeriesDraftButtonPressed value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(isNSFWChanged != null);
    assert(saveSeriesDraftButtonPressed != null);
    return subtitleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result saveSeriesDraftButtonPressed(SaveSeriesDraftButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (subtitleChanged != null) {
      return subtitleChanged(this);
    }
    return orElse();
  }
}

abstract class SubtitleChanged implements NewSeriesDatabaseEvent {
  const factory SubtitleChanged(String subtitle) = _$SubtitleChanged;

  String get subtitle;
  $SubtitleChangedCopyWith<SubtitleChanged> get copyWith;
}

abstract class $SummaryChangedCopyWith<$Res> {
  factory $SummaryChangedCopyWith(
          SummaryChanged value, $Res Function(SummaryChanged) then) =
      _$SummaryChangedCopyWithImpl<$Res>;
  $Res call({String summary});
}

class _$SummaryChangedCopyWithImpl<$Res>
    extends _$NewSeriesDatabaseEventCopyWithImpl<$Res>
    implements $SummaryChangedCopyWith<$Res> {
  _$SummaryChangedCopyWithImpl(
      SummaryChanged _value, $Res Function(SummaryChanged) _then)
      : super(_value, (v) => _then(v as SummaryChanged));

  @override
  SummaryChanged get _value => super._value as SummaryChanged;

  @override
  $Res call({
    Object summary = freezed,
  }) {
    return _then(SummaryChanged(
      summary == freezed ? _value.summary : summary as String,
    ));
  }
}

class _$SummaryChanged with DiagnosticableTreeMixin implements SummaryChanged {
  const _$SummaryChanged(this.summary) : assert(summary != null);

  @override
  final String summary;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewSeriesDatabaseEvent.summaryChanged(summary: $summary)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NewSeriesDatabaseEvent.summaryChanged'))
      ..add(DiagnosticsProperty('summary', summary));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SummaryChanged &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality().equals(other.summary, summary)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(summary);

  @override
  $SummaryChangedCopyWith<SummaryChanged> get copyWith =>
      _$SummaryChangedCopyWithImpl<SummaryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result newSeriesPageLaunched(
            SeriesDraft seriesDraft, BuildContext context),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result saveSeriesDraftButtonPressed(),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(isNSFWChanged != null);
    assert(saveSeriesDraftButtonPressed != null);
    return summaryChanged(summary);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft, BuildContext context),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result isNSFWChanged(bool isNSFW),
    Result saveSeriesDraftButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (summaryChanged != null) {
      return summaryChanged(summary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required
        Result saveSeriesDraftButtonPressed(SaveSeriesDraftButtonPressed value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(isNSFWChanged != null);
    assert(saveSeriesDraftButtonPressed != null);
    return summaryChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result saveSeriesDraftButtonPressed(SaveSeriesDraftButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (summaryChanged != null) {
      return summaryChanged(this);
    }
    return orElse();
  }
}

abstract class SummaryChanged implements NewSeriesDatabaseEvent {
  const factory SummaryChanged(String summary) = _$SummaryChanged;

  String get summary;
  $SummaryChangedCopyWith<SummaryChanged> get copyWith;
}

abstract class $GenreSelectedCopyWith<$Res> {
  factory $GenreSelectedCopyWith(
          GenreSelected value, $Res Function(GenreSelected) then) =
      _$GenreSelectedCopyWithImpl<$Res>;
  $Res call({String genre});
}

class _$GenreSelectedCopyWithImpl<$Res>
    extends _$NewSeriesDatabaseEventCopyWithImpl<$Res>
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
    return 'NewSeriesDatabaseEvent.genreSelected(genre: $genre)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewSeriesDatabaseEvent.genreSelected'))
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
        Result newSeriesPageLaunched(
            SeriesDraft seriesDraft, BuildContext context),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result saveSeriesDraftButtonPressed(),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(isNSFWChanged != null);
    assert(saveSeriesDraftButtonPressed != null);
    return genreSelected(genre);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft, BuildContext context),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result isNSFWChanged(bool isNSFW),
    Result saveSeriesDraftButtonPressed(),
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
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required
        Result saveSeriesDraftButtonPressed(SaveSeriesDraftButtonPressed value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(isNSFWChanged != null);
    assert(saveSeriesDraftButtonPressed != null);
    return genreSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result saveSeriesDraftButtonPressed(SaveSeriesDraftButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genreSelected != null) {
      return genreSelected(this);
    }
    return orElse();
  }
}

abstract class GenreSelected implements NewSeriesDatabaseEvent {
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
    extends _$NewSeriesDatabaseEventCopyWithImpl<$Res>
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
    return 'NewSeriesDatabaseEvent.genreOptionalSelected(genreOptional: $genreOptional)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewSeriesDatabaseEvent.genreOptionalSelected'))
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
        Result newSeriesPageLaunched(
            SeriesDraft seriesDraft, BuildContext context),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result saveSeriesDraftButtonPressed(),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(isNSFWChanged != null);
    assert(saveSeriesDraftButtonPressed != null);
    return genreOptionalSelected(genreOptional);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft, BuildContext context),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result isNSFWChanged(bool isNSFW),
    Result saveSeriesDraftButtonPressed(),
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
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required
        Result saveSeriesDraftButtonPressed(SaveSeriesDraftButtonPressed value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(isNSFWChanged != null);
    assert(saveSeriesDraftButtonPressed != null);
    return genreOptionalSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result saveSeriesDraftButtonPressed(SaveSeriesDraftButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genreOptionalSelected != null) {
      return genreOptionalSelected(this);
    }
    return orElse();
  }
}

abstract class GenreOptionalSelected implements NewSeriesDatabaseEvent {
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
    extends _$NewSeriesDatabaseEventCopyWithImpl<$Res>
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
    return 'NewSeriesDatabaseEvent.languageSelected(language: $language)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewSeriesDatabaseEvent.languageSelected'))
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
        Result newSeriesPageLaunched(
            SeriesDraft seriesDraft, BuildContext context),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result saveSeriesDraftButtonPressed(),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(isNSFWChanged != null);
    assert(saveSeriesDraftButtonPressed != null);
    return languageSelected(language);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft, BuildContext context),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result isNSFWChanged(bool isNSFW),
    Result saveSeriesDraftButtonPressed(),
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
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required
        Result saveSeriesDraftButtonPressed(SaveSeriesDraftButtonPressed value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(isNSFWChanged != null);
    assert(saveSeriesDraftButtonPressed != null);
    return languageSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result saveSeriesDraftButtonPressed(SaveSeriesDraftButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (languageSelected != null) {
      return languageSelected(this);
    }
    return orElse();
  }
}

abstract class LanguageSelected implements NewSeriesDatabaseEvent {
  const factory LanguageSelected(String language) = _$LanguageSelected;

  String get language;
  $LanguageSelectedCopyWith<LanguageSelected> get copyWith;
}

abstract class $IsNSFWChangedCopyWith<$Res> {
  factory $IsNSFWChangedCopyWith(
          IsNSFWChanged value, $Res Function(IsNSFWChanged) then) =
      _$IsNSFWChangedCopyWithImpl<$Res>;
  $Res call({bool isNSFW});
}

class _$IsNSFWChangedCopyWithImpl<$Res>
    extends _$NewSeriesDatabaseEventCopyWithImpl<$Res>
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
    return 'NewSeriesDatabaseEvent.isNSFWChanged(isNSFW: $isNSFW)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewSeriesDatabaseEvent.isNSFWChanged'))
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
        Result newSeriesPageLaunched(
            SeriesDraft seriesDraft, BuildContext context),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result saveSeriesDraftButtonPressed(),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(isNSFWChanged != null);
    assert(saveSeriesDraftButtonPressed != null);
    return isNSFWChanged(isNSFW);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft, BuildContext context),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result isNSFWChanged(bool isNSFW),
    Result saveSeriesDraftButtonPressed(),
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
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required
        Result saveSeriesDraftButtonPressed(SaveSeriesDraftButtonPressed value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(isNSFWChanged != null);
    assert(saveSeriesDraftButtonPressed != null);
    return isNSFWChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result saveSeriesDraftButtonPressed(SaveSeriesDraftButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isNSFWChanged != null) {
      return isNSFWChanged(this);
    }
    return orElse();
  }
}

abstract class IsNSFWChanged implements NewSeriesDatabaseEvent {
  const factory IsNSFWChanged({@required bool isNSFW}) = _$IsNSFWChanged;

  bool get isNSFW;
  $IsNSFWChangedCopyWith<IsNSFWChanged> get copyWith;
}

abstract class $SaveSeriesDraftButtonPressedCopyWith<$Res> {
  factory $SaveSeriesDraftButtonPressedCopyWith(
          SaveSeriesDraftButtonPressed value,
          $Res Function(SaveSeriesDraftButtonPressed) then) =
      _$SaveSeriesDraftButtonPressedCopyWithImpl<$Res>;
}

class _$SaveSeriesDraftButtonPressedCopyWithImpl<$Res>
    extends _$NewSeriesDatabaseEventCopyWithImpl<$Res>
    implements $SaveSeriesDraftButtonPressedCopyWith<$Res> {
  _$SaveSeriesDraftButtonPressedCopyWithImpl(
      SaveSeriesDraftButtonPressed _value,
      $Res Function(SaveSeriesDraftButtonPressed) _then)
      : super(_value, (v) => _then(v as SaveSeriesDraftButtonPressed));

  @override
  SaveSeriesDraftButtonPressed get _value =>
      super._value as SaveSeriesDraftButtonPressed;
}

class _$SaveSeriesDraftButtonPressed
    with DiagnosticableTreeMixin
    implements SaveSeriesDraftButtonPressed {
  const _$SaveSeriesDraftButtonPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewSeriesDatabaseEvent.saveSeriesDraftButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewSeriesDatabaseEvent.saveSeriesDraftButtonPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SaveSeriesDraftButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result newSeriesPageLaunched(
            SeriesDraft seriesDraft, BuildContext context),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result isNSFWChanged(bool isNSFW),
    @required Result saveSeriesDraftButtonPressed(),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(isNSFWChanged != null);
    assert(saveSeriesDraftButtonPressed != null);
    return saveSeriesDraftButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft, BuildContext context),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result isNSFWChanged(bool isNSFW),
    Result saveSeriesDraftButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveSeriesDraftButtonPressed != null) {
      return saveSeriesDraftButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
    @required
        Result saveSeriesDraftButtonPressed(SaveSeriesDraftButtonPressed value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(isNSFWChanged != null);
    assert(saveSeriesDraftButtonPressed != null);
    return saveSeriesDraftButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    Result saveSeriesDraftButtonPressed(SaveSeriesDraftButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveSeriesDraftButtonPressed != null) {
      return saveSeriesDraftButtonPressed(this);
    }
    return orElse();
  }
}

abstract class SaveSeriesDraftButtonPressed implements NewSeriesDatabaseEvent {
  const factory SaveSeriesDraftButtonPressed() = _$SaveSeriesDraftButtonPressed;
}

class _$NewSeriesDatabaseStateTearOff {
  const _$NewSeriesDatabaseStateTearOff();

  _NewSeriesDatabaseState call(
      {@required
          SeriesDraft seriesDraft,
      @required
          bool isEditMode,
      @required
          Title title,
      @required
          int titleWordCount,
      @required
          Subtitle subtitle,
      @required
          int subtitleWordCount,
      @required
          Summary summary,
      @required
          int summaryWordCount,
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
          bool isNSFW,
      @required
          bool isCreating,
      @required
          Map<String, String> genresMap,
      @required
          Map<String, String> languagesMap,
      @required
          bool showErrorMessages,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) {
    return _NewSeriesDatabaseState(
      seriesDraft: seriesDraft,
      isEditMode: isEditMode,
      title: title,
      titleWordCount: titleWordCount,
      subtitle: subtitle,
      subtitleWordCount: subtitleWordCount,
      summary: summary,
      summaryWordCount: summaryWordCount,
      genre: genre,
      genreStr: genreStr,
      genreOptional: genreOptional,
      genreOptionalStr: genreOptionalStr,
      language: language,
      languageStr: languageStr,
      isNSFW: isNSFW,
      isCreating: isCreating,
      genresMap: genresMap,
      languagesMap: languagesMap,
      showErrorMessages: showErrorMessages,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $NewSeriesDatabaseState = _$NewSeriesDatabaseStateTearOff();

mixin _$NewSeriesDatabaseState {
  SeriesDraft get seriesDraft;
  bool get isEditMode;
  Title get title;
  int get titleWordCount;
  Subtitle get subtitle;
  int get subtitleWordCount;
  Summary get summary;
  int get summaryWordCount;
  Genre get genre;
  String get genreStr;
  Genre get genreOptional;
  String get genreOptionalStr;
  Language get language;
  String get languageStr;
  bool get isNSFW;
  bool get isCreating;
  Map<String, String> get genresMap;
  Map<String, String> get languagesMap;
  bool get showErrorMessages;
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;

  $NewSeriesDatabaseStateCopyWith<NewSeriesDatabaseState> get copyWith;
}

abstract class $NewSeriesDatabaseStateCopyWith<$Res> {
  factory $NewSeriesDatabaseStateCopyWith(NewSeriesDatabaseState value,
          $Res Function(NewSeriesDatabaseState) then) =
      _$NewSeriesDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {SeriesDraft seriesDraft,
      bool isEditMode,
      Title title,
      int titleWordCount,
      Subtitle subtitle,
      int subtitleWordCount,
      Summary summary,
      int summaryWordCount,
      Genre genre,
      String genreStr,
      Genre genreOptional,
      String genreOptionalStr,
      Language language,
      String languageStr,
      bool isNSFW,
      bool isCreating,
      Map<String, String> genresMap,
      Map<String, String> languagesMap,
      bool showErrorMessages,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption});
}

class _$NewSeriesDatabaseStateCopyWithImpl<$Res>
    implements $NewSeriesDatabaseStateCopyWith<$Res> {
  _$NewSeriesDatabaseStateCopyWithImpl(this._value, this._then);

  final NewSeriesDatabaseState _value;
  // ignore: unused_field
  final $Res Function(NewSeriesDatabaseState) _then;

  @override
  $Res call({
    Object seriesDraft = freezed,
    Object isEditMode = freezed,
    Object title = freezed,
    Object titleWordCount = freezed,
    Object subtitle = freezed,
    Object subtitleWordCount = freezed,
    Object summary = freezed,
    Object summaryWordCount = freezed,
    Object genre = freezed,
    Object genreStr = freezed,
    Object genreOptional = freezed,
    Object genreOptionalStr = freezed,
    Object language = freezed,
    Object languageStr = freezed,
    Object isNSFW = freezed,
    Object isCreating = freezed,
    Object genresMap = freezed,
    Object languagesMap = freezed,
    Object showErrorMessages = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      seriesDraft: seriesDraft == freezed
          ? _value.seriesDraft
          : seriesDraft as SeriesDraft,
      isEditMode:
          isEditMode == freezed ? _value.isEditMode : isEditMode as bool,
      title: title == freezed ? _value.title : title as Title,
      titleWordCount: titleWordCount == freezed
          ? _value.titleWordCount
          : titleWordCount as int,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as Subtitle,
      subtitleWordCount: subtitleWordCount == freezed
          ? _value.subtitleWordCount
          : subtitleWordCount as int,
      summary: summary == freezed ? _value.summary : summary as Summary,
      summaryWordCount: summaryWordCount == freezed
          ? _value.summaryWordCount
          : summaryWordCount as int,
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
      isNSFW: isNSFW == freezed ? _value.isNSFW : isNSFW as bool,
      isCreating:
          isCreating == freezed ? _value.isCreating : isCreating as bool,
      genresMap: genresMap == freezed
          ? _value.genresMap
          : genresMap as Map<String, String>,
      languagesMap: languagesMap == freezed
          ? _value.languagesMap
          : languagesMap as Map<String, String>,
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

abstract class _$NewSeriesDatabaseStateCopyWith<$Res>
    implements $NewSeriesDatabaseStateCopyWith<$Res> {
  factory _$NewSeriesDatabaseStateCopyWith(_NewSeriesDatabaseState value,
          $Res Function(_NewSeriesDatabaseState) then) =
      __$NewSeriesDatabaseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SeriesDraft seriesDraft,
      bool isEditMode,
      Title title,
      int titleWordCount,
      Subtitle subtitle,
      int subtitleWordCount,
      Summary summary,
      int summaryWordCount,
      Genre genre,
      String genreStr,
      Genre genreOptional,
      String genreOptionalStr,
      Language language,
      String languageStr,
      bool isNSFW,
      bool isCreating,
      Map<String, String> genresMap,
      Map<String, String> languagesMap,
      bool showErrorMessages,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption});
}

class __$NewSeriesDatabaseStateCopyWithImpl<$Res>
    extends _$NewSeriesDatabaseStateCopyWithImpl<$Res>
    implements _$NewSeriesDatabaseStateCopyWith<$Res> {
  __$NewSeriesDatabaseStateCopyWithImpl(_NewSeriesDatabaseState _value,
      $Res Function(_NewSeriesDatabaseState) _then)
      : super(_value, (v) => _then(v as _NewSeriesDatabaseState));

  @override
  _NewSeriesDatabaseState get _value => super._value as _NewSeriesDatabaseState;

  @override
  $Res call({
    Object seriesDraft = freezed,
    Object isEditMode = freezed,
    Object title = freezed,
    Object titleWordCount = freezed,
    Object subtitle = freezed,
    Object subtitleWordCount = freezed,
    Object summary = freezed,
    Object summaryWordCount = freezed,
    Object genre = freezed,
    Object genreStr = freezed,
    Object genreOptional = freezed,
    Object genreOptionalStr = freezed,
    Object language = freezed,
    Object languageStr = freezed,
    Object isNSFW = freezed,
    Object isCreating = freezed,
    Object genresMap = freezed,
    Object languagesMap = freezed,
    Object showErrorMessages = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_NewSeriesDatabaseState(
      seriesDraft: seriesDraft == freezed
          ? _value.seriesDraft
          : seriesDraft as SeriesDraft,
      isEditMode:
          isEditMode == freezed ? _value.isEditMode : isEditMode as bool,
      title: title == freezed ? _value.title : title as Title,
      titleWordCount: titleWordCount == freezed
          ? _value.titleWordCount
          : titleWordCount as int,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as Subtitle,
      subtitleWordCount: subtitleWordCount == freezed
          ? _value.subtitleWordCount
          : subtitleWordCount as int,
      summary: summary == freezed ? _value.summary : summary as Summary,
      summaryWordCount: summaryWordCount == freezed
          ? _value.summaryWordCount
          : summaryWordCount as int,
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
      isNSFW: isNSFW == freezed ? _value.isNSFW : isNSFW as bool,
      isCreating:
          isCreating == freezed ? _value.isCreating : isCreating as bool,
      genresMap: genresMap == freezed
          ? _value.genresMap
          : genresMap as Map<String, String>,
      languagesMap: languagesMap == freezed
          ? _value.languagesMap
          : languagesMap as Map<String, String>,
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

class _$_NewSeriesDatabaseState
    with DiagnosticableTreeMixin
    implements _NewSeriesDatabaseState {
  const _$_NewSeriesDatabaseState(
      {@required this.seriesDraft,
      @required this.isEditMode,
      @required this.title,
      @required this.titleWordCount,
      @required this.subtitle,
      @required this.subtitleWordCount,
      @required this.summary,
      @required this.summaryWordCount,
      @required this.genre,
      @required this.genreStr,
      @required this.genreOptional,
      @required this.genreOptionalStr,
      @required this.language,
      @required this.languageStr,
      @required this.isNSFW,
      @required this.isCreating,
      @required this.genresMap,
      @required this.languagesMap,
      @required this.showErrorMessages,
      @required this.databaseFailureOrSuccessOption})
      : assert(seriesDraft != null),
        assert(isEditMode != null),
        assert(title != null),
        assert(titleWordCount != null),
        assert(subtitle != null),
        assert(subtitleWordCount != null),
        assert(summary != null),
        assert(summaryWordCount != null),
        assert(genre != null),
        assert(genreStr != null),
        assert(genreOptional != null),
        assert(genreOptionalStr != null),
        assert(language != null),
        assert(languageStr != null),
        assert(isNSFW != null),
        assert(isCreating != null),
        assert(genresMap != null),
        assert(languagesMap != null),
        assert(showErrorMessages != null),
        assert(databaseFailureOrSuccessOption != null);

  @override
  final SeriesDraft seriesDraft;
  @override
  final bool isEditMode;
  @override
  final Title title;
  @override
  final int titleWordCount;
  @override
  final Subtitle subtitle;
  @override
  final int subtitleWordCount;
  @override
  final Summary summary;
  @override
  final int summaryWordCount;
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
  final bool isNSFW;
  @override
  final bool isCreating;
  @override
  final Map<String, String> genresMap;
  @override
  final Map<String, String> languagesMap;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewSeriesDatabaseState(seriesDraft: $seriesDraft, isEditMode: $isEditMode, title: $title, titleWordCount: $titleWordCount, subtitle: $subtitle, subtitleWordCount: $subtitleWordCount, summary: $summary, summaryWordCount: $summaryWordCount, genre: $genre, genreStr: $genreStr, genreOptional: $genreOptional, genreOptionalStr: $genreOptionalStr, language: $language, languageStr: $languageStr, isNSFW: $isNSFW, isCreating: $isCreating, genresMap: $genresMap, languagesMap: $languagesMap, showErrorMessages: $showErrorMessages, databaseFailureOrSuccessOption: $databaseFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewSeriesDatabaseState'))
      ..add(DiagnosticsProperty('seriesDraft', seriesDraft))
      ..add(DiagnosticsProperty('isEditMode', isEditMode))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('titleWordCount', titleWordCount))
      ..add(DiagnosticsProperty('subtitle', subtitle))
      ..add(DiagnosticsProperty('subtitleWordCount', subtitleWordCount))
      ..add(DiagnosticsProperty('summary', summary))
      ..add(DiagnosticsProperty('summaryWordCount', summaryWordCount))
      ..add(DiagnosticsProperty('genre', genre))
      ..add(DiagnosticsProperty('genreStr', genreStr))
      ..add(DiagnosticsProperty('genreOptional', genreOptional))
      ..add(DiagnosticsProperty('genreOptionalStr', genreOptionalStr))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('languageStr', languageStr))
      ..add(DiagnosticsProperty('isNSFW', isNSFW))
      ..add(DiagnosticsProperty('isCreating', isCreating))
      ..add(DiagnosticsProperty('genresMap', genresMap))
      ..add(DiagnosticsProperty('languagesMap', languagesMap))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty(
          'databaseFailureOrSuccessOption', databaseFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewSeriesDatabaseState &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)) &&
            (identical(other.isEditMode, isEditMode) ||
                const DeepCollectionEquality()
                    .equals(other.isEditMode, isEditMode)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.titleWordCount, titleWordCount) ||
                const DeepCollectionEquality()
                    .equals(other.titleWordCount, titleWordCount)) &&
            (identical(other.subtitle, subtitle) ||
                const DeepCollectionEquality()
                    .equals(other.subtitle, subtitle)) &&
            (identical(other.subtitleWordCount, subtitleWordCount) ||
                const DeepCollectionEquality()
                    .equals(other.subtitleWordCount, subtitleWordCount)) &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality()
                    .equals(other.summary, summary)) &&
            (identical(other.summaryWordCount, summaryWordCount) ||
                const DeepCollectionEquality()
                    .equals(other.summaryWordCount, summaryWordCount)) &&
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
            (identical(other.isNSFW, isNSFW) ||
                const DeepCollectionEquality().equals(other.isNSFW, isNSFW)) &&
            (identical(other.isCreating, isCreating) ||
                const DeepCollectionEquality()
                    .equals(other.isCreating, isCreating)) &&
            (identical(other.genresMap, genresMap) ||
                const DeepCollectionEquality()
                    .equals(other.genresMap, genresMap)) &&
            (identical(other.languagesMap, languagesMap) ||
                const DeepCollectionEquality()
                    .equals(other.languagesMap, languagesMap)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.databaseFailureOrSuccessOption,
                    databaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.databaseFailureOrSuccessOption,
                    databaseFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(seriesDraft) ^
      const DeepCollectionEquality().hash(isEditMode) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(titleWordCount) ^
      const DeepCollectionEquality().hash(subtitle) ^
      const DeepCollectionEquality().hash(subtitleWordCount) ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(summaryWordCount) ^
      const DeepCollectionEquality().hash(genre) ^
      const DeepCollectionEquality().hash(genreStr) ^
      const DeepCollectionEquality().hash(genreOptional) ^
      const DeepCollectionEquality().hash(genreOptionalStr) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(languageStr) ^
      const DeepCollectionEquality().hash(isNSFW) ^
      const DeepCollectionEquality().hash(isCreating) ^
      const DeepCollectionEquality().hash(genresMap) ^
      const DeepCollectionEquality().hash(languagesMap) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(databaseFailureOrSuccessOption);

  @override
  _$NewSeriesDatabaseStateCopyWith<_NewSeriesDatabaseState> get copyWith =>
      __$NewSeriesDatabaseStateCopyWithImpl<_NewSeriesDatabaseState>(
          this, _$identity);
}

abstract class _NewSeriesDatabaseState implements NewSeriesDatabaseState {
  const factory _NewSeriesDatabaseState(
      {@required
          SeriesDraft seriesDraft,
      @required
          bool isEditMode,
      @required
          Title title,
      @required
          int titleWordCount,
      @required
          Subtitle subtitle,
      @required
          int subtitleWordCount,
      @required
          Summary summary,
      @required
          int summaryWordCount,
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
          bool isNSFW,
      @required
          bool isCreating,
      @required
          Map<String, String> genresMap,
      @required
          Map<String, String> languagesMap,
      @required
          bool showErrorMessages,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) = _$_NewSeriesDatabaseState;

  @override
  SeriesDraft get seriesDraft;
  @override
  bool get isEditMode;
  @override
  Title get title;
  @override
  int get titleWordCount;
  @override
  Subtitle get subtitle;
  @override
  int get subtitleWordCount;
  @override
  Summary get summary;
  @override
  int get summaryWordCount;
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
  bool get isNSFW;
  @override
  bool get isCreating;
  @override
  Map<String, String> get genresMap;
  @override
  Map<String, String> get languagesMap;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;
  @override
  _$NewSeriesDatabaseStateCopyWith<_NewSeriesDatabaseState> get copyWith;
}
