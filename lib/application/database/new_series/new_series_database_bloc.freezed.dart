// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'new_series_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NewSeriesDatabaseEventTearOff {
  const _$NewSeriesDatabaseEventTearOff();

  NewSeriesPageLaunched newSeriesPageLaunched({SeriesDraft seriesDraft}) {
    return NewSeriesPageLaunched(
      seriesDraft: seriesDraft,
    );
  }

  CreateSeriesButtonPressed createSeriesButtonPressed() {
    return const CreateSeriesButtonPressed();
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
}

// ignore: unused_element
const $NewSeriesDatabaseEvent = _$NewSeriesDatabaseEventTearOff();

mixin _$NewSeriesDatabaseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    @required Result createSeriesButtonPressed(),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result createSeriesButtonPressed(),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
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
  $Res call({SeriesDraft seriesDraft});
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
  }) {
    return _then(NewSeriesPageLaunched(
      seriesDraft: seriesDraft == freezed
          ? _value.seriesDraft
          : seriesDraft as SeriesDraft,
    ));
  }
}

class _$NewSeriesPageLaunched implements NewSeriesPageLaunched {
  const _$NewSeriesPageLaunched({this.seriesDraft});

  @override
  final SeriesDraft seriesDraft;

  @override
  String toString() {
    return 'NewSeriesDatabaseEvent.newSeriesPageLaunched(seriesDraft: $seriesDraft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewSeriesPageLaunched &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seriesDraft);

  @override
  $NewSeriesPageLaunchedCopyWith<NewSeriesPageLaunched> get copyWith =>
      _$NewSeriesPageLaunchedCopyWithImpl<NewSeriesPageLaunched>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    @required Result createSeriesButtonPressed(),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    return newSeriesPageLaunched(seriesDraft);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result createSeriesButtonPressed(),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newSeriesPageLaunched != null) {
      return newSeriesPageLaunched(seriesDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    return newSeriesPageLaunched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
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
  const factory NewSeriesPageLaunched({SeriesDraft seriesDraft}) =
      _$NewSeriesPageLaunched;

  SeriesDraft get seriesDraft;
  $NewSeriesPageLaunchedCopyWith<NewSeriesPageLaunched> get copyWith;
}

abstract class $CreateSeriesButtonPressedCopyWith<$Res> {
  factory $CreateSeriesButtonPressedCopyWith(CreateSeriesButtonPressed value,
          $Res Function(CreateSeriesButtonPressed) then) =
      _$CreateSeriesButtonPressedCopyWithImpl<$Res>;
}

class _$CreateSeriesButtonPressedCopyWithImpl<$Res>
    extends _$NewSeriesDatabaseEventCopyWithImpl<$Res>
    implements $CreateSeriesButtonPressedCopyWith<$Res> {
  _$CreateSeriesButtonPressedCopyWithImpl(CreateSeriesButtonPressed _value,
      $Res Function(CreateSeriesButtonPressed) _then)
      : super(_value, (v) => _then(v as CreateSeriesButtonPressed));

  @override
  CreateSeriesButtonPressed get _value =>
      super._value as CreateSeriesButtonPressed;
}

class _$CreateSeriesButtonPressed implements CreateSeriesButtonPressed {
  const _$CreateSeriesButtonPressed();

  @override
  String toString() {
    return 'NewSeriesDatabaseEvent.createSeriesButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateSeriesButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    @required Result createSeriesButtonPressed(),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    return createSeriesButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result createSeriesButtonPressed(),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createSeriesButtonPressed != null) {
      return createSeriesButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    return createSeriesButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createSeriesButtonPressed != null) {
      return createSeriesButtonPressed(this);
    }
    return orElse();
  }
}

abstract class CreateSeriesButtonPressed implements NewSeriesDatabaseEvent {
  const factory CreateSeriesButtonPressed() = _$CreateSeriesButtonPressed;
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

class _$TitleChanged implements TitleChanged {
  const _$TitleChanged(this.title) : assert(title != null);

  @override
  final String title;

  @override
  String toString() {
    return 'NewSeriesDatabaseEvent.titleChanged(title: $title)';
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
    @required Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    @required Result createSeriesButtonPressed(),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result createSeriesButtonPressed(),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
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
    @required Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
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

class _$SubtitleChanged implements SubtitleChanged {
  const _$SubtitleChanged(this.subtitle) : assert(subtitle != null);

  @override
  final String subtitle;

  @override
  String toString() {
    return 'NewSeriesDatabaseEvent.subtitleChanged(subtitle: $subtitle)';
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
    @required Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    @required Result createSeriesButtonPressed(),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    return subtitleChanged(subtitle);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result createSeriesButtonPressed(),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
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
    @required Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    return subtitleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
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

class _$SummaryChanged implements SummaryChanged {
  const _$SummaryChanged(this.summary) : assert(summary != null);

  @override
  final String summary;

  @override
  String toString() {
    return 'NewSeriesDatabaseEvent.summaryChanged(summary: $summary)';
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
    @required Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    @required Result createSeriesButtonPressed(),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    return summaryChanged(summary);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result createSeriesButtonPressed(),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
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
    @required Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    return summaryChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
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

class _$GenreSelected implements GenreSelected {
  const _$GenreSelected(this.genre) : assert(genre != null);

  @override
  final String genre;

  @override
  String toString() {
    return 'NewSeriesDatabaseEvent.genreSelected(genre: $genre)';
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
    @required Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    @required Result createSeriesButtonPressed(),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    return genreSelected(genre);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result createSeriesButtonPressed(),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
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
    @required Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    return genreSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
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

class _$GenreOptionalSelected implements GenreOptionalSelected {
  const _$GenreOptionalSelected(this.genreOptional)
      : assert(genreOptional != null);

  @override
  final String genreOptional;

  @override
  String toString() {
    return 'NewSeriesDatabaseEvent.genreOptionalSelected(genreOptional: $genreOptional)';
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
    @required Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    @required Result createSeriesButtonPressed(),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    return genreOptionalSelected(genreOptional);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result createSeriesButtonPressed(),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
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
    @required Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    return genreOptionalSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
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

class _$LanguageSelected implements LanguageSelected {
  const _$LanguageSelected(this.language) : assert(language != null);

  @override
  final String language;

  @override
  String toString() {
    return 'NewSeriesDatabaseEvent.languageSelected(language: $language)';
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
    @required Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    @required Result createSeriesButtonPressed(),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    return languageSelected(language);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result createSeriesButtonPressed(),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
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
    @required Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    return languageSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
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

abstract class $CopyrightsSelectedCopyWith<$Res> {
  factory $CopyrightsSelectedCopyWith(
          CopyrightsSelected value, $Res Function(CopyrightsSelected) then) =
      _$CopyrightsSelectedCopyWithImpl<$Res>;
  $Res call({String copyrights});
}

class _$CopyrightsSelectedCopyWithImpl<$Res>
    extends _$NewSeriesDatabaseEventCopyWithImpl<$Res>
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

class _$CopyrightsSelected implements CopyrightsSelected {
  const _$CopyrightsSelected(this.copyrights) : assert(copyrights != null);

  @override
  final String copyrights;

  @override
  String toString() {
    return 'NewSeriesDatabaseEvent.copyrightsSelected(copyrights: $copyrights)';
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
    @required Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    @required Result createSeriesButtonPressed(),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    return copyrightsSelected(copyrights);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result createSeriesButtonPressed(),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
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
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    return copyrightsSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (copyrightsSelected != null) {
      return copyrightsSelected(this);
    }
    return orElse();
  }
}

abstract class CopyrightsSelected implements NewSeriesDatabaseEvent {
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

class _$IsNSFWChanged implements IsNSFWChanged {
  const _$IsNSFWChanged({@required this.isNSFW}) : assert(isNSFW != null);

  @override
  final bool isNSFW;

  @override
  String toString() {
    return 'NewSeriesDatabaseEvent.isNSFWChanged(isNSFW: $isNSFW)';
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
    @required Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    @required Result createSeriesButtonPressed(),
    @required Result titleChanged(String title),
    @required Result subtitleChanged(String subtitle),
    @required Result summaryChanged(String summary),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
    @required Result isNSFWChanged(bool isNSFW),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    return isNSFWChanged(isNSFW);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result createSeriesButtonPressed(),
    Result titleChanged(String title),
    Result subtitleChanged(String subtitle),
    Result summaryChanged(String summary),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    Result isNSFWChanged(bool isNSFW),
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
    @required Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result subtitleChanged(SubtitleChanged value),
    @required Result summaryChanged(SummaryChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
    @required Result isNSFWChanged(IsNSFWChanged value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(subtitleChanged != null);
    assert(summaryChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    assert(isNSFWChanged != null);
    return isNSFWChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result subtitleChanged(SubtitleChanged value),
    Result summaryChanged(SummaryChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    Result isNSFWChanged(IsNSFWChanged value),
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

class _$NewSeriesDatabaseStateTearOff {
  const _$NewSeriesDatabaseStateTearOff();

  _NewSeriesDatabaseState call(
      {@required
          SeriesDraft seriesDraft,
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
          Copyrights copyrights,
      @required
          String copyrightsStr,
      @required
          bool isNSFW,
      @required
          bool isCreating,
      @required
          bool showErrorMessages,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) {
    return _NewSeriesDatabaseState(
      seriesDraft: seriesDraft,
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
      copyrights: copyrights,
      copyrightsStr: copyrightsStr,
      isNSFW: isNSFW,
      isCreating: isCreating,
      showErrorMessages: showErrorMessages,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $NewSeriesDatabaseState = _$NewSeriesDatabaseStateTearOff();

mixin _$NewSeriesDatabaseState {
  SeriesDraft get seriesDraft;
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
  Copyrights get copyrights;
  String get copyrightsStr;
  bool get isNSFW;
  bool get isCreating;
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
      Copyrights copyrights,
      String copyrightsStr,
      bool isNSFW,
      bool isCreating,
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
    Object copyrights = freezed,
    Object copyrightsStr = freezed,
    Object isNSFW = freezed,
    Object isCreating = freezed,
    Object showErrorMessages = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      seriesDraft: seriesDraft == freezed
          ? _value.seriesDraft
          : seriesDraft as SeriesDraft,
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
      copyrights:
          copyrights == freezed ? _value.copyrights : copyrights as Copyrights,
      copyrightsStr: copyrightsStr == freezed
          ? _value.copyrightsStr
          : copyrightsStr as String,
      isNSFW: isNSFW == freezed ? _value.isNSFW : isNSFW as bool,
      isCreating:
          isCreating == freezed ? _value.isCreating : isCreating as bool,
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
      Copyrights copyrights,
      String copyrightsStr,
      bool isNSFW,
      bool isCreating,
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
    Object copyrights = freezed,
    Object copyrightsStr = freezed,
    Object isNSFW = freezed,
    Object isCreating = freezed,
    Object showErrorMessages = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_NewSeriesDatabaseState(
      seriesDraft: seriesDraft == freezed
          ? _value.seriesDraft
          : seriesDraft as SeriesDraft,
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
      copyrights:
          copyrights == freezed ? _value.copyrights : copyrights as Copyrights,
      copyrightsStr: copyrightsStr == freezed
          ? _value.copyrightsStr
          : copyrightsStr as String,
      isNSFW: isNSFW == freezed ? _value.isNSFW : isNSFW as bool,
      isCreating:
          isCreating == freezed ? _value.isCreating : isCreating as bool,
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

class _$_NewSeriesDatabaseState implements _NewSeriesDatabaseState {
  const _$_NewSeriesDatabaseState(
      {@required this.seriesDraft,
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
      @required this.copyrights,
      @required this.copyrightsStr,
      @required this.isNSFW,
      @required this.isCreating,
      @required this.showErrorMessages,
      @required this.databaseFailureOrSuccessOption})
      : assert(seriesDraft != null),
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
        assert(copyrights != null),
        assert(copyrightsStr != null),
        assert(isNSFW != null),
        assert(isCreating != null),
        assert(showErrorMessages != null),
        assert(databaseFailureOrSuccessOption != null);

  @override
  final SeriesDraft seriesDraft;
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
  final Copyrights copyrights;
  @override
  final String copyrightsStr;
  @override
  final bool isNSFW;
  @override
  final bool isCreating;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption;

  @override
  String toString() {
    return 'NewSeriesDatabaseState(seriesDraft: $seriesDraft, title: $title, titleWordCount: $titleWordCount, subtitle: $subtitle, subtitleWordCount: $subtitleWordCount, summary: $summary, summaryWordCount: $summaryWordCount, genre: $genre, genreStr: $genreStr, genreOptional: $genreOptional, genreOptionalStr: $genreOptionalStr, language: $language, languageStr: $languageStr, copyrights: $copyrights, copyrightsStr: $copyrightsStr, isNSFW: $isNSFW, isCreating: $isCreating, showErrorMessages: $showErrorMessages, databaseFailureOrSuccessOption: $databaseFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewSeriesDatabaseState &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)) &&
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
            (identical(other.copyrights, copyrights) ||
                const DeepCollectionEquality()
                    .equals(other.copyrights, copyrights)) &&
            (identical(other.copyrightsStr, copyrightsStr) ||
                const DeepCollectionEquality()
                    .equals(other.copyrightsStr, copyrightsStr)) &&
            (identical(other.isNSFW, isNSFW) ||
                const DeepCollectionEquality().equals(other.isNSFW, isNSFW)) &&
            (identical(other.isCreating, isCreating) ||
                const DeepCollectionEquality()
                    .equals(other.isCreating, isCreating)) &&
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
      const DeepCollectionEquality().hash(copyrights) ^
      const DeepCollectionEquality().hash(copyrightsStr) ^
      const DeepCollectionEquality().hash(isNSFW) ^
      const DeepCollectionEquality().hash(isCreating) ^
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
          Copyrights copyrights,
      @required
          String copyrightsStr,
      @required
          bool isNSFW,
      @required
          bool isCreating,
      @required
          bool showErrorMessages,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) = _$_NewSeriesDatabaseState;

  @override
  SeriesDraft get seriesDraft;
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
  Copyrights get copyrights;
  @override
  String get copyrightsStr;
  @override
  bool get isNSFW;
  @override
  bool get isCreating;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;
  @override
  _$NewSeriesDatabaseStateCopyWith<_NewSeriesDatabaseState> get copyWith;
}
