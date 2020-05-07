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

  DescriptionChanged descriptionChanged(String description) {
    return DescriptionChanged(
      description,
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
}

// ignore: unused_element
const $NewSeriesDatabaseEvent = _$NewSeriesDatabaseEventTearOff();

mixin _$NewSeriesDatabaseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    @required Result createSeriesButtonPressed(),
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result createSeriesButtonPressed(),
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
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
    @required Result descriptionChanged(String description),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    return newSeriesPageLaunched(seriesDraft);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result createSeriesButtonPressed(),
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
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
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    return newSeriesPageLaunched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
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
    @required Result descriptionChanged(String description),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    return createSeriesButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result createSeriesButtonPressed(),
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
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
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    return createSeriesButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
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
    @required Result descriptionChanged(String description),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result createSeriesButtonPressed(),
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
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
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
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

abstract class $DescriptionChangedCopyWith<$Res> {
  factory $DescriptionChangedCopyWith(
          DescriptionChanged value, $Res Function(DescriptionChanged) then) =
      _$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String description});
}

class _$DescriptionChangedCopyWithImpl<$Res>
    extends _$NewSeriesDatabaseEventCopyWithImpl<$Res>
    implements $DescriptionChangedCopyWith<$Res> {
  _$DescriptionChangedCopyWithImpl(
      DescriptionChanged _value, $Res Function(DescriptionChanged) _then)
      : super(_value, (v) => _then(v as DescriptionChanged));

  @override
  DescriptionChanged get _value => super._value as DescriptionChanged;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(DescriptionChanged(
      description == freezed ? _value.description : description as String,
    ));
  }
}

class _$DescriptionChanged implements DescriptionChanged {
  const _$DescriptionChanged(this.description) : assert(description != null);

  @override
  final String description;

  @override
  String toString() {
    return 'NewSeriesDatabaseEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DescriptionChanged &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @override
  $DescriptionChangedCopyWith<DescriptionChanged> get copyWith =>
      _$DescriptionChangedCopyWithImpl<DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    @required Result createSeriesButtonPressed(),
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result createSeriesButtonPressed(),
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class DescriptionChanged implements NewSeriesDatabaseEvent {
  const factory DescriptionChanged(String description) = _$DescriptionChanged;

  String get description;
  $DescriptionChangedCopyWith<DescriptionChanged> get copyWith;
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
    @required Result descriptionChanged(String description),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    return genreSelected(genre);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result createSeriesButtonPressed(),
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
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
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    return genreSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
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
    @required Result descriptionChanged(String description),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    return genreOptionalSelected(genreOptional);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result createSeriesButtonPressed(),
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
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
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    return genreOptionalSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
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
    @required Result descriptionChanged(String description),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    return languageSelected(language);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result createSeriesButtonPressed(),
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
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
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    return languageSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
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
    @required Result descriptionChanged(String description),
    @required Result genreSelected(String genre),
    @required Result genreOptionalSelected(String genreOptional),
    @required Result languageSelected(String language),
    @required Result copyrightsSelected(String copyrights),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    return copyrightsSelected(copyrights);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result createSeriesButtonPressed(),
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result genreSelected(String genre),
    Result genreOptionalSelected(String genreOptional),
    Result languageSelected(String language),
    Result copyrightsSelected(String copyrights),
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
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result genreSelected(GenreSelected value),
    @required Result genreOptionalSelected(GenreOptionalSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightsSelected(CopyrightsSelected value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(createSeriesButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(genreSelected != null);
    assert(genreOptionalSelected != null);
    assert(languageSelected != null);
    assert(copyrightsSelected != null);
    return copyrightsSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result createSeriesButtonPressed(CreateSeriesButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result genreSelected(GenreSelected value),
    Result genreOptionalSelected(GenreOptionalSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightsSelected(CopyrightsSelected value),
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

class _$NewSeriesDatabaseStateTearOff {
  const _$NewSeriesDatabaseStateTearOff();

  _NewSeriesDatabaseState call(
      {@required SeriesDraft seriesDraft,
      @required String uid,
      @required String authorUid,
      @required String title,
      @required String description,
      @required String genre,
      @required String genreOptional,
      @required String language,
      @required String copyrights}) {
    return _NewSeriesDatabaseState(
      seriesDraft: seriesDraft,
      uid: uid,
      authorUid: authorUid,
      title: title,
      description: description,
      genre: genre,
      genreOptional: genreOptional,
      language: language,
      copyrights: copyrights,
    );
  }
}

// ignore: unused_element
const $NewSeriesDatabaseState = _$NewSeriesDatabaseStateTearOff();

mixin _$NewSeriesDatabaseState {
  SeriesDraft get seriesDraft;
  String get uid;
  String get authorUid;
  String get title;
  String get description;
  String get genre;
  String get genreOptional;
  String get language;
  String get copyrights;

  $NewSeriesDatabaseStateCopyWith<NewSeriesDatabaseState> get copyWith;
}

abstract class $NewSeriesDatabaseStateCopyWith<$Res> {
  factory $NewSeriesDatabaseStateCopyWith(NewSeriesDatabaseState value,
          $Res Function(NewSeriesDatabaseState) then) =
      _$NewSeriesDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {SeriesDraft seriesDraft,
      String uid,
      String authorUid,
      String title,
      String description,
      String genre,
      String genreOptional,
      String language,
      String copyrights});
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
    Object uid = freezed,
    Object authorUid = freezed,
    Object title = freezed,
    Object description = freezed,
    Object genre = freezed,
    Object genreOptional = freezed,
    Object language = freezed,
    Object copyrights = freezed,
  }) {
    return _then(_value.copyWith(
      seriesDraft: seriesDraft == freezed
          ? _value.seriesDraft
          : seriesDraft as SeriesDraft,
      uid: uid == freezed ? _value.uid : uid as String,
      authorUid: authorUid == freezed ? _value.authorUid : authorUid as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      genre: genre == freezed ? _value.genre : genre as String,
      genreOptional: genreOptional == freezed
          ? _value.genreOptional
          : genreOptional as String,
      language: language == freezed ? _value.language : language as String,
      copyrights:
          copyrights == freezed ? _value.copyrights : copyrights as String,
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
      String uid,
      String authorUid,
      String title,
      String description,
      String genre,
      String genreOptional,
      String language,
      String copyrights});
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
    Object uid = freezed,
    Object authorUid = freezed,
    Object title = freezed,
    Object description = freezed,
    Object genre = freezed,
    Object genreOptional = freezed,
    Object language = freezed,
    Object copyrights = freezed,
  }) {
    return _then(_NewSeriesDatabaseState(
      seriesDraft: seriesDraft == freezed
          ? _value.seriesDraft
          : seriesDraft as SeriesDraft,
      uid: uid == freezed ? _value.uid : uid as String,
      authorUid: authorUid == freezed ? _value.authorUid : authorUid as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      genre: genre == freezed ? _value.genre : genre as String,
      genreOptional: genreOptional == freezed
          ? _value.genreOptional
          : genreOptional as String,
      language: language == freezed ? _value.language : language as String,
      copyrights:
          copyrights == freezed ? _value.copyrights : copyrights as String,
    ));
  }
}

class _$_NewSeriesDatabaseState implements _NewSeriesDatabaseState {
  const _$_NewSeriesDatabaseState(
      {@required this.seriesDraft,
      @required this.uid,
      @required this.authorUid,
      @required this.title,
      @required this.description,
      @required this.genre,
      @required this.genreOptional,
      @required this.language,
      @required this.copyrights})
      : assert(seriesDraft != null),
        assert(uid != null),
        assert(authorUid != null),
        assert(title != null),
        assert(description != null),
        assert(genre != null),
        assert(genreOptional != null),
        assert(language != null),
        assert(copyrights != null);

  @override
  final SeriesDraft seriesDraft;
  @override
  final String uid;
  @override
  final String authorUid;
  @override
  final String title;
  @override
  final String description;
  @override
  final String genre;
  @override
  final String genreOptional;
  @override
  final String language;
  @override
  final String copyrights;

  @override
  String toString() {
    return 'NewSeriesDatabaseState(seriesDraft: $seriesDraft, uid: $uid, authorUid: $authorUid, title: $title, description: $description, genre: $genre, genreOptional: $genreOptional, language: $language, copyrights: $copyrights)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewSeriesDatabaseState &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.authorUid, authorUid) ||
                const DeepCollectionEquality()
                    .equals(other.authorUid, authorUid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.genre, genre) ||
                const DeepCollectionEquality().equals(other.genre, genre)) &&
            (identical(other.genreOptional, genreOptional) ||
                const DeepCollectionEquality()
                    .equals(other.genreOptional, genreOptional)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.copyrights, copyrights) ||
                const DeepCollectionEquality()
                    .equals(other.copyrights, copyrights)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(seriesDraft) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(authorUid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(genre) ^
      const DeepCollectionEquality().hash(genreOptional) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(copyrights);

  @override
  _$NewSeriesDatabaseStateCopyWith<_NewSeriesDatabaseState> get copyWith =>
      __$NewSeriesDatabaseStateCopyWithImpl<_NewSeriesDatabaseState>(
          this, _$identity);
}

abstract class _NewSeriesDatabaseState implements NewSeriesDatabaseState {
  const factory _NewSeriesDatabaseState(
      {@required SeriesDraft seriesDraft,
      @required String uid,
      @required String authorUid,
      @required String title,
      @required String description,
      @required String genre,
      @required String genreOptional,
      @required String language,
      @required String copyrights}) = _$_NewSeriesDatabaseState;

  @override
  SeriesDraft get seriesDraft;
  @override
  String get uid;
  @override
  String get authorUid;
  @override
  String get title;
  @override
  String get description;
  @override
  String get genre;
  @override
  String get genreOptional;
  @override
  String get language;
  @override
  String get copyrights;
  @override
  _$NewSeriesDatabaseStateCopyWith<_NewSeriesDatabaseState> get copyWith;
}
