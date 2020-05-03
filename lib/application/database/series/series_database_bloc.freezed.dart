// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'series_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SeriesDatabaseEventTearOff {
  const _$SeriesDatabaseEventTearOff();

  NewSeriesBackButtonPressed newSeriesBackButtonPressed() {
    return const NewSeriesBackButtonPressed();
  }

  NewSeriesGenreSelected newSeriesGenreSelected(String genre) {
    return NewSeriesGenreSelected(
      genre,
    );
  }

  NewSeriesTitleChanged newSeriesTitleChanged(Title title) {
    return NewSeriesTitleChanged(
      title,
    );
  }
}

// ignore: unused_element
const $SeriesDatabaseEvent = _$SeriesDatabaseEventTearOff();

mixin _$SeriesDatabaseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result newSeriesBackButtonPressed(),
    @required Result newSeriesGenreSelected(String genre),
    @required Result newSeriesTitleChanged(Title title),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesBackButtonPressed(),
    Result newSeriesGenreSelected(String genre),
    Result newSeriesTitleChanged(Title title),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result newSeriesBackButtonPressed(NewSeriesBackButtonPressed value),
    @required Result newSeriesGenreSelected(NewSeriesGenreSelected value),
    @required Result newSeriesTitleChanged(NewSeriesTitleChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesBackButtonPressed(NewSeriesBackButtonPressed value),
    Result newSeriesGenreSelected(NewSeriesGenreSelected value),
    Result newSeriesTitleChanged(NewSeriesTitleChanged value),
    @required Result orElse(),
  });
}

abstract class $SeriesDatabaseEventCopyWith<$Res> {
  factory $SeriesDatabaseEventCopyWith(
          SeriesDatabaseEvent value, $Res Function(SeriesDatabaseEvent) then) =
      _$SeriesDatabaseEventCopyWithImpl<$Res>;
}

class _$SeriesDatabaseEventCopyWithImpl<$Res>
    implements $SeriesDatabaseEventCopyWith<$Res> {
  _$SeriesDatabaseEventCopyWithImpl(this._value, this._then);

  final SeriesDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(SeriesDatabaseEvent) _then;
}

abstract class $NewSeriesBackButtonPressedCopyWith<$Res> {
  factory $NewSeriesBackButtonPressedCopyWith(NewSeriesBackButtonPressed value,
          $Res Function(NewSeriesBackButtonPressed) then) =
      _$NewSeriesBackButtonPressedCopyWithImpl<$Res>;
}

class _$NewSeriesBackButtonPressedCopyWithImpl<$Res>
    extends _$SeriesDatabaseEventCopyWithImpl<$Res>
    implements $NewSeriesBackButtonPressedCopyWith<$Res> {
  _$NewSeriesBackButtonPressedCopyWithImpl(NewSeriesBackButtonPressed _value,
      $Res Function(NewSeriesBackButtonPressed) _then)
      : super(_value, (v) => _then(v as NewSeriesBackButtonPressed));

  @override
  NewSeriesBackButtonPressed get _value =>
      super._value as NewSeriesBackButtonPressed;
}

class _$NewSeriesBackButtonPressed implements NewSeriesBackButtonPressed {
  const _$NewSeriesBackButtonPressed();

  @override
  String toString() {
    return 'SeriesDatabaseEvent.newSeriesBackButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NewSeriesBackButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result newSeriesBackButtonPressed(),
    @required Result newSeriesGenreSelected(String genre),
    @required Result newSeriesTitleChanged(Title title),
  }) {
    assert(newSeriesBackButtonPressed != null);
    assert(newSeriesGenreSelected != null);
    assert(newSeriesTitleChanged != null);
    return newSeriesBackButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesBackButtonPressed(),
    Result newSeriesGenreSelected(String genre),
    Result newSeriesTitleChanged(Title title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newSeriesBackButtonPressed != null) {
      return newSeriesBackButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result newSeriesBackButtonPressed(NewSeriesBackButtonPressed value),
    @required Result newSeriesGenreSelected(NewSeriesGenreSelected value),
    @required Result newSeriesTitleChanged(NewSeriesTitleChanged value),
  }) {
    assert(newSeriesBackButtonPressed != null);
    assert(newSeriesGenreSelected != null);
    assert(newSeriesTitleChanged != null);
    return newSeriesBackButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesBackButtonPressed(NewSeriesBackButtonPressed value),
    Result newSeriesGenreSelected(NewSeriesGenreSelected value),
    Result newSeriesTitleChanged(NewSeriesTitleChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newSeriesBackButtonPressed != null) {
      return newSeriesBackButtonPressed(this);
    }
    return orElse();
  }
}

abstract class NewSeriesBackButtonPressed implements SeriesDatabaseEvent {
  const factory NewSeriesBackButtonPressed() = _$NewSeriesBackButtonPressed;
}

abstract class $NewSeriesGenreSelectedCopyWith<$Res> {
  factory $NewSeriesGenreSelectedCopyWith(NewSeriesGenreSelected value,
          $Res Function(NewSeriesGenreSelected) then) =
      _$NewSeriesGenreSelectedCopyWithImpl<$Res>;
  $Res call({String genre});
}

class _$NewSeriesGenreSelectedCopyWithImpl<$Res>
    extends _$SeriesDatabaseEventCopyWithImpl<$Res>
    implements $NewSeriesGenreSelectedCopyWith<$Res> {
  _$NewSeriesGenreSelectedCopyWithImpl(NewSeriesGenreSelected _value,
      $Res Function(NewSeriesGenreSelected) _then)
      : super(_value, (v) => _then(v as NewSeriesGenreSelected));

  @override
  NewSeriesGenreSelected get _value => super._value as NewSeriesGenreSelected;

  @override
  $Res call({
    Object genre = freezed,
  }) {
    return _then(NewSeriesGenreSelected(
      genre == freezed ? _value.genre : genre as String,
    ));
  }
}

class _$NewSeriesGenreSelected implements NewSeriesGenreSelected {
  const _$NewSeriesGenreSelected(this.genre) : assert(genre != null);

  @override
  final String genre;

  @override
  String toString() {
    return 'SeriesDatabaseEvent.newSeriesGenreSelected(genre: $genre)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewSeriesGenreSelected &&
            (identical(other.genre, genre) ||
                const DeepCollectionEquality().equals(other.genre, genre)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(genre);

  @override
  $NewSeriesGenreSelectedCopyWith<NewSeriesGenreSelected> get copyWith =>
      _$NewSeriesGenreSelectedCopyWithImpl<NewSeriesGenreSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result newSeriesBackButtonPressed(),
    @required Result newSeriesGenreSelected(String genre),
    @required Result newSeriesTitleChanged(Title title),
  }) {
    assert(newSeriesBackButtonPressed != null);
    assert(newSeriesGenreSelected != null);
    assert(newSeriesTitleChanged != null);
    return newSeriesGenreSelected(genre);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesBackButtonPressed(),
    Result newSeriesGenreSelected(String genre),
    Result newSeriesTitleChanged(Title title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newSeriesGenreSelected != null) {
      return newSeriesGenreSelected(genre);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result newSeriesBackButtonPressed(NewSeriesBackButtonPressed value),
    @required Result newSeriesGenreSelected(NewSeriesGenreSelected value),
    @required Result newSeriesTitleChanged(NewSeriesTitleChanged value),
  }) {
    assert(newSeriesBackButtonPressed != null);
    assert(newSeriesGenreSelected != null);
    assert(newSeriesTitleChanged != null);
    return newSeriesGenreSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesBackButtonPressed(NewSeriesBackButtonPressed value),
    Result newSeriesGenreSelected(NewSeriesGenreSelected value),
    Result newSeriesTitleChanged(NewSeriesTitleChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newSeriesGenreSelected != null) {
      return newSeriesGenreSelected(this);
    }
    return orElse();
  }
}

abstract class NewSeriesGenreSelected implements SeriesDatabaseEvent {
  const factory NewSeriesGenreSelected(String genre) = _$NewSeriesGenreSelected;

  String get genre;
  $NewSeriesGenreSelectedCopyWith<NewSeriesGenreSelected> get copyWith;
}

abstract class $NewSeriesTitleChangedCopyWith<$Res> {
  factory $NewSeriesTitleChangedCopyWith(NewSeriesTitleChanged value,
          $Res Function(NewSeriesTitleChanged) then) =
      _$NewSeriesTitleChangedCopyWithImpl<$Res>;
  $Res call({Title title});
}

class _$NewSeriesTitleChangedCopyWithImpl<$Res>
    extends _$SeriesDatabaseEventCopyWithImpl<$Res>
    implements $NewSeriesTitleChangedCopyWith<$Res> {
  _$NewSeriesTitleChangedCopyWithImpl(
      NewSeriesTitleChanged _value, $Res Function(NewSeriesTitleChanged) _then)
      : super(_value, (v) => _then(v as NewSeriesTitleChanged));

  @override
  NewSeriesTitleChanged get _value => super._value as NewSeriesTitleChanged;

  @override
  $Res call({
    Object title = freezed,
  }) {
    return _then(NewSeriesTitleChanged(
      title == freezed ? _value.title : title as Title,
    ));
  }
}

class _$NewSeriesTitleChanged implements NewSeriesTitleChanged {
  const _$NewSeriesTitleChanged(this.title) : assert(title != null);

  @override
  final Title title;

  @override
  String toString() {
    return 'SeriesDatabaseEvent.newSeriesTitleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewSeriesTitleChanged &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @override
  $NewSeriesTitleChangedCopyWith<NewSeriesTitleChanged> get copyWith =>
      _$NewSeriesTitleChangedCopyWithImpl<NewSeriesTitleChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result newSeriesBackButtonPressed(),
    @required Result newSeriesGenreSelected(String genre),
    @required Result newSeriesTitleChanged(Title title),
  }) {
    assert(newSeriesBackButtonPressed != null);
    assert(newSeriesGenreSelected != null);
    assert(newSeriesTitleChanged != null);
    return newSeriesTitleChanged(title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result newSeriesBackButtonPressed(),
    Result newSeriesGenreSelected(String genre),
    Result newSeriesTitleChanged(Title title),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newSeriesTitleChanged != null) {
      return newSeriesTitleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result newSeriesBackButtonPressed(NewSeriesBackButtonPressed value),
    @required Result newSeriesGenreSelected(NewSeriesGenreSelected value),
    @required Result newSeriesTitleChanged(NewSeriesTitleChanged value),
  }) {
    assert(newSeriesBackButtonPressed != null);
    assert(newSeriesGenreSelected != null);
    assert(newSeriesTitleChanged != null);
    return newSeriesTitleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result newSeriesBackButtonPressed(NewSeriesBackButtonPressed value),
    Result newSeriesGenreSelected(NewSeriesGenreSelected value),
    Result newSeriesTitleChanged(NewSeriesTitleChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newSeriesTitleChanged != null) {
      return newSeriesTitleChanged(this);
    }
    return orElse();
  }
}

abstract class NewSeriesTitleChanged implements SeriesDatabaseEvent {
  const factory NewSeriesTitleChanged(Title title) = _$NewSeriesTitleChanged;

  Title get title;
  $NewSeriesTitleChangedCopyWith<NewSeriesTitleChanged> get copyWith;
}

class _$SeriesDatabaseStateTearOff {
  const _$SeriesDatabaseStateTearOff();

  _SeriesDatabaseState call({@required SeriesDraft seriesDraft}) {
    return _SeriesDatabaseState(
      seriesDraft: seriesDraft,
    );
  }
}

// ignore: unused_element
const $SeriesDatabaseState = _$SeriesDatabaseStateTearOff();

mixin _$SeriesDatabaseState {
  SeriesDraft get seriesDraft;

  $SeriesDatabaseStateCopyWith<SeriesDatabaseState> get copyWith;
}

abstract class $SeriesDatabaseStateCopyWith<$Res> {
  factory $SeriesDatabaseStateCopyWith(
          SeriesDatabaseState value, $Res Function(SeriesDatabaseState) then) =
      _$SeriesDatabaseStateCopyWithImpl<$Res>;
  $Res call({SeriesDraft seriesDraft});
}

class _$SeriesDatabaseStateCopyWithImpl<$Res>
    implements $SeriesDatabaseStateCopyWith<$Res> {
  _$SeriesDatabaseStateCopyWithImpl(this._value, this._then);

  final SeriesDatabaseState _value;
  // ignore: unused_field
  final $Res Function(SeriesDatabaseState) _then;

  @override
  $Res call({
    Object seriesDraft = freezed,
  }) {
    return _then(_value.copyWith(
      seriesDraft: seriesDraft == freezed
          ? _value.seriesDraft
          : seriesDraft as SeriesDraft,
    ));
  }
}

abstract class _$SeriesDatabaseStateCopyWith<$Res>
    implements $SeriesDatabaseStateCopyWith<$Res> {
  factory _$SeriesDatabaseStateCopyWith(_SeriesDatabaseState value,
          $Res Function(_SeriesDatabaseState) then) =
      __$SeriesDatabaseStateCopyWithImpl<$Res>;
  @override
  $Res call({SeriesDraft seriesDraft});
}

class __$SeriesDatabaseStateCopyWithImpl<$Res>
    extends _$SeriesDatabaseStateCopyWithImpl<$Res>
    implements _$SeriesDatabaseStateCopyWith<$Res> {
  __$SeriesDatabaseStateCopyWithImpl(
      _SeriesDatabaseState _value, $Res Function(_SeriesDatabaseState) _then)
      : super(_value, (v) => _then(v as _SeriesDatabaseState));

  @override
  _SeriesDatabaseState get _value => super._value as _SeriesDatabaseState;

  @override
  $Res call({
    Object seriesDraft = freezed,
  }) {
    return _then(_SeriesDatabaseState(
      seriesDraft: seriesDraft == freezed
          ? _value.seriesDraft
          : seriesDraft as SeriesDraft,
    ));
  }
}

class _$_SeriesDatabaseState implements _SeriesDatabaseState {
  const _$_SeriesDatabaseState({@required this.seriesDraft})
      : assert(seriesDraft != null);

  @override
  final SeriesDraft seriesDraft;

  @override
  String toString() {
    return 'SeriesDatabaseState(seriesDraft: $seriesDraft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesDatabaseState &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seriesDraft);

  @override
  _$SeriesDatabaseStateCopyWith<_SeriesDatabaseState> get copyWith =>
      __$SeriesDatabaseStateCopyWithImpl<_SeriesDatabaseState>(
          this, _$identity);
}

abstract class _SeriesDatabaseState implements SeriesDatabaseState {
  const factory _SeriesDatabaseState({@required SeriesDraft seriesDraft}) =
      _$_SeriesDatabaseState;

  @override
  SeriesDraft get seriesDraft;
  @override
  _$SeriesDatabaseStateCopyWith<_SeriesDatabaseState> get copyWith;
}
