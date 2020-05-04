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

  BackButtonPressed backButtonPressed() {
    return const BackButtonPressed();
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

  CharacterChanged characterChanged(String name) {
    return CharacterChanged(
      name,
    );
  }

  AddCharacterButtonPressed addCharacterButtonPressed() {
    return const AddCharacterButtonPressed();
  }

  RemoveCharacterButtonPressed removeCharacterButtonPressed(int index) {
    return RemoveCharacterButtonPressed(
      index,
    );
  }

  GenreSelected genreSelected(String genre) {
    return GenreSelected(
      genre,
    );
  }

  LanguageSelected languageSelected(String language) {
    return LanguageSelected(
      language,
    );
  }

  CopyrightSelected copyrightSelected(String copyright) {
    return CopyrightSelected(
      copyright,
    );
  }
}

// ignore: unused_element
const $NewSeriesDatabaseEvent = _$NewSeriesDatabaseEventTearOff();

mixin _$NewSeriesDatabaseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    @required Result backButtonPressed(),
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result characterChanged(String name),
    @required Result addCharacterButtonPressed(),
    @required Result removeCharacterButtonPressed(int index),
    @required Result genreSelected(String genre),
    @required Result languageSelected(String language),
    @required Result copyrightSelected(String copyright),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result backButtonPressed(),
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result characterChanged(String name),
    Result addCharacterButtonPressed(),
    Result removeCharacterButtonPressed(int index),
    Result genreSelected(String genre),
    Result languageSelected(String language),
    Result copyrightSelected(String copyright),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result backButtonPressed(BackButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result characterChanged(CharacterChanged value),
    @required Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    @required
        Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    @required Result genreSelected(GenreSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightSelected(CopyrightSelected value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result backButtonPressed(BackButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result characterChanged(CharacterChanged value),
    Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    Result genreSelected(GenreSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightSelected(CopyrightSelected value),
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
    @required Result backButtonPressed(),
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result characterChanged(String name),
    @required Result addCharacterButtonPressed(),
    @required Result removeCharacterButtonPressed(int index),
    @required Result genreSelected(String genre),
    @required Result languageSelected(String language),
    @required Result copyrightSelected(String copyright),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(backButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(characterChanged != null);
    assert(addCharacterButtonPressed != null);
    assert(removeCharacterButtonPressed != null);
    assert(genreSelected != null);
    assert(languageSelected != null);
    assert(copyrightSelected != null);
    return newSeriesPageLaunched(seriesDraft);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result backButtonPressed(),
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result characterChanged(String name),
    Result addCharacterButtonPressed(),
    Result removeCharacterButtonPressed(int index),
    Result genreSelected(String genre),
    Result languageSelected(String language),
    Result copyrightSelected(String copyright),
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
    @required Result backButtonPressed(BackButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result characterChanged(CharacterChanged value),
    @required Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    @required
        Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    @required Result genreSelected(GenreSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightSelected(CopyrightSelected value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(backButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(characterChanged != null);
    assert(addCharacterButtonPressed != null);
    assert(removeCharacterButtonPressed != null);
    assert(genreSelected != null);
    assert(languageSelected != null);
    assert(copyrightSelected != null);
    return newSeriesPageLaunched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result backButtonPressed(BackButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result characterChanged(CharacterChanged value),
    Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    Result genreSelected(GenreSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightSelected(CopyrightSelected value),
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

abstract class $BackButtonPressedCopyWith<$Res> {
  factory $BackButtonPressedCopyWith(
          BackButtonPressed value, $Res Function(BackButtonPressed) then) =
      _$BackButtonPressedCopyWithImpl<$Res>;
}

class _$BackButtonPressedCopyWithImpl<$Res>
    extends _$NewSeriesDatabaseEventCopyWithImpl<$Res>
    implements $BackButtonPressedCopyWith<$Res> {
  _$BackButtonPressedCopyWithImpl(
      BackButtonPressed _value, $Res Function(BackButtonPressed) _then)
      : super(_value, (v) => _then(v as BackButtonPressed));

  @override
  BackButtonPressed get _value => super._value as BackButtonPressed;
}

class _$BackButtonPressed implements BackButtonPressed {
  const _$BackButtonPressed();

  @override
  String toString() {
    return 'NewSeriesDatabaseEvent.backButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BackButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    @required Result backButtonPressed(),
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result characterChanged(String name),
    @required Result addCharacterButtonPressed(),
    @required Result removeCharacterButtonPressed(int index),
    @required Result genreSelected(String genre),
    @required Result languageSelected(String language),
    @required Result copyrightSelected(String copyright),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(backButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(characterChanged != null);
    assert(addCharacterButtonPressed != null);
    assert(removeCharacterButtonPressed != null);
    assert(genreSelected != null);
    assert(languageSelected != null);
    assert(copyrightSelected != null);
    return backButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result backButtonPressed(),
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result characterChanged(String name),
    Result addCharacterButtonPressed(),
    Result removeCharacterButtonPressed(int index),
    Result genreSelected(String genre),
    Result languageSelected(String language),
    Result copyrightSelected(String copyright),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (backButtonPressed != null) {
      return backButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result backButtonPressed(BackButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result characterChanged(CharacterChanged value),
    @required Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    @required
        Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    @required Result genreSelected(GenreSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightSelected(CopyrightSelected value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(backButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(characterChanged != null);
    assert(addCharacterButtonPressed != null);
    assert(removeCharacterButtonPressed != null);
    assert(genreSelected != null);
    assert(languageSelected != null);
    assert(copyrightSelected != null);
    return backButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result backButtonPressed(BackButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result characterChanged(CharacterChanged value),
    Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    Result genreSelected(GenreSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightSelected(CopyrightSelected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (backButtonPressed != null) {
      return backButtonPressed(this);
    }
    return orElse();
  }
}

abstract class BackButtonPressed implements NewSeriesDatabaseEvent {
  const factory BackButtonPressed() = _$BackButtonPressed;
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
    @required Result backButtonPressed(),
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result characterChanged(String name),
    @required Result addCharacterButtonPressed(),
    @required Result removeCharacterButtonPressed(int index),
    @required Result genreSelected(String genre),
    @required Result languageSelected(String language),
    @required Result copyrightSelected(String copyright),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(backButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(characterChanged != null);
    assert(addCharacterButtonPressed != null);
    assert(removeCharacterButtonPressed != null);
    assert(genreSelected != null);
    assert(languageSelected != null);
    assert(copyrightSelected != null);
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result backButtonPressed(),
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result characterChanged(String name),
    Result addCharacterButtonPressed(),
    Result removeCharacterButtonPressed(int index),
    Result genreSelected(String genre),
    Result languageSelected(String language),
    Result copyrightSelected(String copyright),
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
    @required Result backButtonPressed(BackButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result characterChanged(CharacterChanged value),
    @required Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    @required
        Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    @required Result genreSelected(GenreSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightSelected(CopyrightSelected value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(backButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(characterChanged != null);
    assert(addCharacterButtonPressed != null);
    assert(removeCharacterButtonPressed != null);
    assert(genreSelected != null);
    assert(languageSelected != null);
    assert(copyrightSelected != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result backButtonPressed(BackButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result characterChanged(CharacterChanged value),
    Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    Result genreSelected(GenreSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightSelected(CopyrightSelected value),
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
    @required Result backButtonPressed(),
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result characterChanged(String name),
    @required Result addCharacterButtonPressed(),
    @required Result removeCharacterButtonPressed(int index),
    @required Result genreSelected(String genre),
    @required Result languageSelected(String language),
    @required Result copyrightSelected(String copyright),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(backButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(characterChanged != null);
    assert(addCharacterButtonPressed != null);
    assert(removeCharacterButtonPressed != null);
    assert(genreSelected != null);
    assert(languageSelected != null);
    assert(copyrightSelected != null);
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result backButtonPressed(),
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result characterChanged(String name),
    Result addCharacterButtonPressed(),
    Result removeCharacterButtonPressed(int index),
    Result genreSelected(String genre),
    Result languageSelected(String language),
    Result copyrightSelected(String copyright),
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
    @required Result backButtonPressed(BackButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result characterChanged(CharacterChanged value),
    @required Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    @required
        Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    @required Result genreSelected(GenreSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightSelected(CopyrightSelected value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(backButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(characterChanged != null);
    assert(addCharacterButtonPressed != null);
    assert(removeCharacterButtonPressed != null);
    assert(genreSelected != null);
    assert(languageSelected != null);
    assert(copyrightSelected != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result backButtonPressed(BackButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result characterChanged(CharacterChanged value),
    Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    Result genreSelected(GenreSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightSelected(CopyrightSelected value),
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

abstract class $CharacterChangedCopyWith<$Res> {
  factory $CharacterChangedCopyWith(
          CharacterChanged value, $Res Function(CharacterChanged) then) =
      _$CharacterChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$CharacterChangedCopyWithImpl<$Res>
    extends _$NewSeriesDatabaseEventCopyWithImpl<$Res>
    implements $CharacterChangedCopyWith<$Res> {
  _$CharacterChangedCopyWithImpl(
      CharacterChanged _value, $Res Function(CharacterChanged) _then)
      : super(_value, (v) => _then(v as CharacterChanged));

  @override
  CharacterChanged get _value => super._value as CharacterChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(CharacterChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$CharacterChanged implements CharacterChanged {
  const _$CharacterChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'NewSeriesDatabaseEvent.characterChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CharacterChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $CharacterChangedCopyWith<CharacterChanged> get copyWith =>
      _$CharacterChangedCopyWithImpl<CharacterChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    @required Result backButtonPressed(),
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result characterChanged(String name),
    @required Result addCharacterButtonPressed(),
    @required Result removeCharacterButtonPressed(int index),
    @required Result genreSelected(String genre),
    @required Result languageSelected(String language),
    @required Result copyrightSelected(String copyright),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(backButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(characterChanged != null);
    assert(addCharacterButtonPressed != null);
    assert(removeCharacterButtonPressed != null);
    assert(genreSelected != null);
    assert(languageSelected != null);
    assert(copyrightSelected != null);
    return characterChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result backButtonPressed(),
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result characterChanged(String name),
    Result addCharacterButtonPressed(),
    Result removeCharacterButtonPressed(int index),
    Result genreSelected(String genre),
    Result languageSelected(String language),
    Result copyrightSelected(String copyright),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (characterChanged != null) {
      return characterChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result backButtonPressed(BackButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result characterChanged(CharacterChanged value),
    @required Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    @required
        Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    @required Result genreSelected(GenreSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightSelected(CopyrightSelected value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(backButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(characterChanged != null);
    assert(addCharacterButtonPressed != null);
    assert(removeCharacterButtonPressed != null);
    assert(genreSelected != null);
    assert(languageSelected != null);
    assert(copyrightSelected != null);
    return characterChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result backButtonPressed(BackButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result characterChanged(CharacterChanged value),
    Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    Result genreSelected(GenreSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightSelected(CopyrightSelected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (characterChanged != null) {
      return characterChanged(this);
    }
    return orElse();
  }
}

abstract class CharacterChanged implements NewSeriesDatabaseEvent {
  const factory CharacterChanged(String name) = _$CharacterChanged;

  String get name;
  $CharacterChangedCopyWith<CharacterChanged> get copyWith;
}

abstract class $AddCharacterButtonPressedCopyWith<$Res> {
  factory $AddCharacterButtonPressedCopyWith(AddCharacterButtonPressed value,
          $Res Function(AddCharacterButtonPressed) then) =
      _$AddCharacterButtonPressedCopyWithImpl<$Res>;
}

class _$AddCharacterButtonPressedCopyWithImpl<$Res>
    extends _$NewSeriesDatabaseEventCopyWithImpl<$Res>
    implements $AddCharacterButtonPressedCopyWith<$Res> {
  _$AddCharacterButtonPressedCopyWithImpl(AddCharacterButtonPressed _value,
      $Res Function(AddCharacterButtonPressed) _then)
      : super(_value, (v) => _then(v as AddCharacterButtonPressed));

  @override
  AddCharacterButtonPressed get _value =>
      super._value as AddCharacterButtonPressed;
}

class _$AddCharacterButtonPressed implements AddCharacterButtonPressed {
  const _$AddCharacterButtonPressed();

  @override
  String toString() {
    return 'NewSeriesDatabaseEvent.addCharacterButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddCharacterButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    @required Result backButtonPressed(),
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result characterChanged(String name),
    @required Result addCharacterButtonPressed(),
    @required Result removeCharacterButtonPressed(int index),
    @required Result genreSelected(String genre),
    @required Result languageSelected(String language),
    @required Result copyrightSelected(String copyright),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(backButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(characterChanged != null);
    assert(addCharacterButtonPressed != null);
    assert(removeCharacterButtonPressed != null);
    assert(genreSelected != null);
    assert(languageSelected != null);
    assert(copyrightSelected != null);
    return addCharacterButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result backButtonPressed(),
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result characterChanged(String name),
    Result addCharacterButtonPressed(),
    Result removeCharacterButtonPressed(int index),
    Result genreSelected(String genre),
    Result languageSelected(String language),
    Result copyrightSelected(String copyright),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addCharacterButtonPressed != null) {
      return addCharacterButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result backButtonPressed(BackButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result characterChanged(CharacterChanged value),
    @required Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    @required
        Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    @required Result genreSelected(GenreSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightSelected(CopyrightSelected value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(backButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(characterChanged != null);
    assert(addCharacterButtonPressed != null);
    assert(removeCharacterButtonPressed != null);
    assert(genreSelected != null);
    assert(languageSelected != null);
    assert(copyrightSelected != null);
    return addCharacterButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result backButtonPressed(BackButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result characterChanged(CharacterChanged value),
    Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    Result genreSelected(GenreSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightSelected(CopyrightSelected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addCharacterButtonPressed != null) {
      return addCharacterButtonPressed(this);
    }
    return orElse();
  }
}

abstract class AddCharacterButtonPressed implements NewSeriesDatabaseEvent {
  const factory AddCharacterButtonPressed() = _$AddCharacterButtonPressed;
}

abstract class $RemoveCharacterButtonPressedCopyWith<$Res> {
  factory $RemoveCharacterButtonPressedCopyWith(
          RemoveCharacterButtonPressed value,
          $Res Function(RemoveCharacterButtonPressed) then) =
      _$RemoveCharacterButtonPressedCopyWithImpl<$Res>;
  $Res call({int index});
}

class _$RemoveCharacterButtonPressedCopyWithImpl<$Res>
    extends _$NewSeriesDatabaseEventCopyWithImpl<$Res>
    implements $RemoveCharacterButtonPressedCopyWith<$Res> {
  _$RemoveCharacterButtonPressedCopyWithImpl(
      RemoveCharacterButtonPressed _value,
      $Res Function(RemoveCharacterButtonPressed) _then)
      : super(_value, (v) => _then(v as RemoveCharacterButtonPressed));

  @override
  RemoveCharacterButtonPressed get _value =>
      super._value as RemoveCharacterButtonPressed;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(RemoveCharacterButtonPressed(
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$RemoveCharacterButtonPressed implements RemoveCharacterButtonPressed {
  const _$RemoveCharacterButtonPressed(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'NewSeriesDatabaseEvent.removeCharacterButtonPressed(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveCharacterButtonPressed &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  $RemoveCharacterButtonPressedCopyWith<RemoveCharacterButtonPressed>
      get copyWith => _$RemoveCharacterButtonPressedCopyWithImpl<
          RemoveCharacterButtonPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    @required Result backButtonPressed(),
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result characterChanged(String name),
    @required Result addCharacterButtonPressed(),
    @required Result removeCharacterButtonPressed(int index),
    @required Result genreSelected(String genre),
    @required Result languageSelected(String language),
    @required Result copyrightSelected(String copyright),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(backButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(characterChanged != null);
    assert(addCharacterButtonPressed != null);
    assert(removeCharacterButtonPressed != null);
    assert(genreSelected != null);
    assert(languageSelected != null);
    assert(copyrightSelected != null);
    return removeCharacterButtonPressed(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result backButtonPressed(),
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result characterChanged(String name),
    Result addCharacterButtonPressed(),
    Result removeCharacterButtonPressed(int index),
    Result genreSelected(String genre),
    Result languageSelected(String language),
    Result copyrightSelected(String copyright),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeCharacterButtonPressed != null) {
      return removeCharacterButtonPressed(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result backButtonPressed(BackButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result characterChanged(CharacterChanged value),
    @required Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    @required
        Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    @required Result genreSelected(GenreSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightSelected(CopyrightSelected value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(backButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(characterChanged != null);
    assert(addCharacterButtonPressed != null);
    assert(removeCharacterButtonPressed != null);
    assert(genreSelected != null);
    assert(languageSelected != null);
    assert(copyrightSelected != null);
    return removeCharacterButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result backButtonPressed(BackButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result characterChanged(CharacterChanged value),
    Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    Result genreSelected(GenreSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightSelected(CopyrightSelected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeCharacterButtonPressed != null) {
      return removeCharacterButtonPressed(this);
    }
    return orElse();
  }
}

abstract class RemoveCharacterButtonPressed implements NewSeriesDatabaseEvent {
  const factory RemoveCharacterButtonPressed(int index) =
      _$RemoveCharacterButtonPressed;

  int get index;
  $RemoveCharacterButtonPressedCopyWith<RemoveCharacterButtonPressed>
      get copyWith;
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
    @required Result backButtonPressed(),
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result characterChanged(String name),
    @required Result addCharacterButtonPressed(),
    @required Result removeCharacterButtonPressed(int index),
    @required Result genreSelected(String genre),
    @required Result languageSelected(String language),
    @required Result copyrightSelected(String copyright),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(backButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(characterChanged != null);
    assert(addCharacterButtonPressed != null);
    assert(removeCharacterButtonPressed != null);
    assert(genreSelected != null);
    assert(languageSelected != null);
    assert(copyrightSelected != null);
    return genreSelected(genre);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result backButtonPressed(),
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result characterChanged(String name),
    Result addCharacterButtonPressed(),
    Result removeCharacterButtonPressed(int index),
    Result genreSelected(String genre),
    Result languageSelected(String language),
    Result copyrightSelected(String copyright),
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
    @required Result backButtonPressed(BackButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result characterChanged(CharacterChanged value),
    @required Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    @required
        Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    @required Result genreSelected(GenreSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightSelected(CopyrightSelected value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(backButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(characterChanged != null);
    assert(addCharacterButtonPressed != null);
    assert(removeCharacterButtonPressed != null);
    assert(genreSelected != null);
    assert(languageSelected != null);
    assert(copyrightSelected != null);
    return genreSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result backButtonPressed(BackButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result characterChanged(CharacterChanged value),
    Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    Result genreSelected(GenreSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightSelected(CopyrightSelected value),
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
    @required Result backButtonPressed(),
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result characterChanged(String name),
    @required Result addCharacterButtonPressed(),
    @required Result removeCharacterButtonPressed(int index),
    @required Result genreSelected(String genre),
    @required Result languageSelected(String language),
    @required Result copyrightSelected(String copyright),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(backButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(characterChanged != null);
    assert(addCharacterButtonPressed != null);
    assert(removeCharacterButtonPressed != null);
    assert(genreSelected != null);
    assert(languageSelected != null);
    assert(copyrightSelected != null);
    return languageSelected(language);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result backButtonPressed(),
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result characterChanged(String name),
    Result addCharacterButtonPressed(),
    Result removeCharacterButtonPressed(int index),
    Result genreSelected(String genre),
    Result languageSelected(String language),
    Result copyrightSelected(String copyright),
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
    @required Result backButtonPressed(BackButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result characterChanged(CharacterChanged value),
    @required Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    @required
        Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    @required Result genreSelected(GenreSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightSelected(CopyrightSelected value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(backButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(characterChanged != null);
    assert(addCharacterButtonPressed != null);
    assert(removeCharacterButtonPressed != null);
    assert(genreSelected != null);
    assert(languageSelected != null);
    assert(copyrightSelected != null);
    return languageSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result backButtonPressed(BackButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result characterChanged(CharacterChanged value),
    Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    Result genreSelected(GenreSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightSelected(CopyrightSelected value),
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

abstract class $CopyrightSelectedCopyWith<$Res> {
  factory $CopyrightSelectedCopyWith(
          CopyrightSelected value, $Res Function(CopyrightSelected) then) =
      _$CopyrightSelectedCopyWithImpl<$Res>;
  $Res call({String copyright});
}

class _$CopyrightSelectedCopyWithImpl<$Res>
    extends _$NewSeriesDatabaseEventCopyWithImpl<$Res>
    implements $CopyrightSelectedCopyWith<$Res> {
  _$CopyrightSelectedCopyWithImpl(
      CopyrightSelected _value, $Res Function(CopyrightSelected) _then)
      : super(_value, (v) => _then(v as CopyrightSelected));

  @override
  CopyrightSelected get _value => super._value as CopyrightSelected;

  @override
  $Res call({
    Object copyright = freezed,
  }) {
    return _then(CopyrightSelected(
      copyright == freezed ? _value.copyright : copyright as String,
    ));
  }
}

class _$CopyrightSelected implements CopyrightSelected {
  const _$CopyrightSelected(this.copyright) : assert(copyright != null);

  @override
  final String copyright;

  @override
  String toString() {
    return 'NewSeriesDatabaseEvent.copyrightSelected(copyright: $copyright)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CopyrightSelected &&
            (identical(other.copyright, copyright) ||
                const DeepCollectionEquality()
                    .equals(other.copyright, copyright)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(copyright);

  @override
  $CopyrightSelectedCopyWith<CopyrightSelected> get copyWith =>
      _$CopyrightSelectedCopyWithImpl<CopyrightSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    @required Result backButtonPressed(),
    @required Result titleChanged(String title),
    @required Result descriptionChanged(String description),
    @required Result characterChanged(String name),
    @required Result addCharacterButtonPressed(),
    @required Result removeCharacterButtonPressed(int index),
    @required Result genreSelected(String genre),
    @required Result languageSelected(String language),
    @required Result copyrightSelected(String copyright),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(backButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(characterChanged != null);
    assert(addCharacterButtonPressed != null);
    assert(removeCharacterButtonPressed != null);
    assert(genreSelected != null);
    assert(languageSelected != null);
    assert(copyrightSelected != null);
    return copyrightSelected(copyright);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesPageLaunched(SeriesDraft seriesDraft),
    Result backButtonPressed(),
    Result titleChanged(String title),
    Result descriptionChanged(String description),
    Result characterChanged(String name),
    Result addCharacterButtonPressed(),
    Result removeCharacterButtonPressed(int index),
    Result genreSelected(String genre),
    Result languageSelected(String language),
    Result copyrightSelected(String copyright),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (copyrightSelected != null) {
      return copyrightSelected(copyright);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    @required Result backButtonPressed(BackButtonPressed value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result characterChanged(CharacterChanged value),
    @required Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    @required
        Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    @required Result genreSelected(GenreSelected value),
    @required Result languageSelected(LanguageSelected value),
    @required Result copyrightSelected(CopyrightSelected value),
  }) {
    assert(newSeriesPageLaunched != null);
    assert(backButtonPressed != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(characterChanged != null);
    assert(addCharacterButtonPressed != null);
    assert(removeCharacterButtonPressed != null);
    assert(genreSelected != null);
    assert(languageSelected != null);
    assert(copyrightSelected != null);
    return copyrightSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesPageLaunched(NewSeriesPageLaunched value),
    Result backButtonPressed(BackButtonPressed value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result characterChanged(CharacterChanged value),
    Result addCharacterButtonPressed(AddCharacterButtonPressed value),
    Result removeCharacterButtonPressed(RemoveCharacterButtonPressed value),
    Result genreSelected(GenreSelected value),
    Result languageSelected(LanguageSelected value),
    Result copyrightSelected(CopyrightSelected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (copyrightSelected != null) {
      return copyrightSelected(this);
    }
    return orElse();
  }
}

abstract class CopyrightSelected implements NewSeriesDatabaseEvent {
  const factory CopyrightSelected(String copyright) = _$CopyrightSelected;

  String get copyright;
  $CopyrightSelectedCopyWith<CopyrightSelected> get copyWith;
}

class _$NewSeriesDatabaseStateTearOff {
  const _$NewSeriesDatabaseStateTearOff();

  _NewSeriesDatabaseState call(
      {@required SeriesDraft seriesDraft,
      @required String uid,
      @required String authorUid,
      @required Genre genre,
      @required String selectedGenre,
      @required Title title,
      @required Description description,
      @required Character character,
      @required List<String> characters}) {
    return _NewSeriesDatabaseState(
      seriesDraft: seriesDraft,
      uid: uid,
      authorUid: authorUid,
      genre: genre,
      selectedGenre: selectedGenre,
      title: title,
      description: description,
      character: character,
      characters: characters,
    );
  }
}

// ignore: unused_element
const $NewSeriesDatabaseState = _$NewSeriesDatabaseStateTearOff();

mixin _$NewSeriesDatabaseState {
  SeriesDraft get seriesDraft;
  String get uid;
  String get authorUid;
  Genre get genre;
  String get selectedGenre;
  Title get title;
  Description get description;
  Character get character;
  List<String> get characters;

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
      Genre genre,
      String selectedGenre,
      Title title,
      Description description,
      Character character,
      List<String> characters});
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
    Object genre = freezed,
    Object selectedGenre = freezed,
    Object title = freezed,
    Object description = freezed,
    Object character = freezed,
    Object characters = freezed,
  }) {
    return _then(_value.copyWith(
      seriesDraft: seriesDraft == freezed
          ? _value.seriesDraft
          : seriesDraft as SeriesDraft,
      uid: uid == freezed ? _value.uid : uid as String,
      authorUid: authorUid == freezed ? _value.authorUid : authorUid as String,
      genre: genre == freezed ? _value.genre : genre as Genre,
      selectedGenre: selectedGenre == freezed
          ? _value.selectedGenre
          : selectedGenre as String,
      title: title == freezed ? _value.title : title as Title,
      description: description == freezed
          ? _value.description
          : description as Description,
      character:
          character == freezed ? _value.character : character as Character,
      characters: characters == freezed
          ? _value.characters
          : characters as List<String>,
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
      Genre genre,
      String selectedGenre,
      Title title,
      Description description,
      Character character,
      List<String> characters});
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
    Object genre = freezed,
    Object selectedGenre = freezed,
    Object title = freezed,
    Object description = freezed,
    Object character = freezed,
    Object characters = freezed,
  }) {
    return _then(_NewSeriesDatabaseState(
      seriesDraft: seriesDraft == freezed
          ? _value.seriesDraft
          : seriesDraft as SeriesDraft,
      uid: uid == freezed ? _value.uid : uid as String,
      authorUid: authorUid == freezed ? _value.authorUid : authorUid as String,
      genre: genre == freezed ? _value.genre : genre as Genre,
      selectedGenre: selectedGenre == freezed
          ? _value.selectedGenre
          : selectedGenre as String,
      title: title == freezed ? _value.title : title as Title,
      description: description == freezed
          ? _value.description
          : description as Description,
      character:
          character == freezed ? _value.character : character as Character,
      characters: characters == freezed
          ? _value.characters
          : characters as List<String>,
    ));
  }
}

class _$_NewSeriesDatabaseState implements _NewSeriesDatabaseState {
  const _$_NewSeriesDatabaseState(
      {@required this.seriesDraft,
      @required this.uid,
      @required this.authorUid,
      @required this.genre,
      @required this.selectedGenre,
      @required this.title,
      @required this.description,
      @required this.character,
      @required this.characters})
      : assert(seriesDraft != null),
        assert(uid != null),
        assert(authorUid != null),
        assert(genre != null),
        assert(selectedGenre != null),
        assert(title != null),
        assert(description != null),
        assert(character != null),
        assert(characters != null);

  @override
  final SeriesDraft seriesDraft;
  @override
  final String uid;
  @override
  final String authorUid;
  @override
  final Genre genre;
  @override
  final String selectedGenre;
  @override
  final Title title;
  @override
  final Description description;
  @override
  final Character character;
  @override
  final List<String> characters;

  @override
  String toString() {
    return 'NewSeriesDatabaseState(seriesDraft: $seriesDraft, uid: $uid, authorUid: $authorUid, genre: $genre, selectedGenre: $selectedGenre, title: $title, description: $description, character: $character, characters: $characters)';
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
            (identical(other.genre, genre) ||
                const DeepCollectionEquality().equals(other.genre, genre)) &&
            (identical(other.selectedGenre, selectedGenre) ||
                const DeepCollectionEquality()
                    .equals(other.selectedGenre, selectedGenre)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.character, character) ||
                const DeepCollectionEquality()
                    .equals(other.character, character)) &&
            (identical(other.characters, characters) ||
                const DeepCollectionEquality()
                    .equals(other.characters, characters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(seriesDraft) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(authorUid) ^
      const DeepCollectionEquality().hash(genre) ^
      const DeepCollectionEquality().hash(selectedGenre) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(character) ^
      const DeepCollectionEquality().hash(characters);

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
      @required Genre genre,
      @required String selectedGenre,
      @required Title title,
      @required Description description,
      @required Character character,
      @required List<String> characters}) = _$_NewSeriesDatabaseState;

  @override
  SeriesDraft get seriesDraft;
  @override
  String get uid;
  @override
  String get authorUid;
  @override
  Genre get genre;
  @override
  String get selectedGenre;
  @override
  Title get title;
  @override
  Description get description;
  @override
  Character get character;
  @override
  List<String> get characters;
  @override
  _$NewSeriesDatabaseStateCopyWith<_NewSeriesDatabaseState> get copyWith;
}
