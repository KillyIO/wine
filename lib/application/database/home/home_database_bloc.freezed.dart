// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeDatabaseEventTearOff {
  const _$HomeDatabaseEventTearOff();

  ApplyFilterChangesEVT applyFilterChangesEVT() {
    return const ApplyFilterChangesEVT();
  }

  FiltersAppliedEVT filtersAppliedEVT(Map<String, dynamic> filters) {
    return FiltersAppliedEVT(
      filters,
    );
  }

  GenreFilterKeyChangedEVT genreFilterKeyChangedEVT(String key) {
    return GenreFilterKeyChangedEVT(
      key,
    );
  }

  HomePageLaunchedEVT homePageLaunchedEVT({BuildContext context}) {
    return HomePageLaunchedEVT(
      context: context,
    );
  }

  LanguageFilterKeyChangedEVT languageFilterKeyChangedEVT(String key) {
    return LanguageFilterKeyChangedEVT(
      key,
    );
  }

  LoadMoreNewSeriesEVT loadMoreNewSeriesEVT() {
    return const LoadMoreNewSeriesEVT();
  }

  LoadMoreTopSeriesEVT loadMoreTopSeriesEVT() {
    return const LoadMoreTopSeriesEVT();
  }

  TimeFilterKeyChangedEVT timeFilterKeyChangedEVT(String key) {
    return TimeFilterKeyChangedEVT(
      key,
    );
  }

  TopSeriesLoadedEVT topSeriesLoadedEVT() {
    return const TopSeriesLoadedEVT();
  }
}

// ignore: unused_element
const $HomeDatabaseEvent = _$HomeDatabaseEventTearOff();

mixin _$HomeDatabaseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result applyFilterChangesEVT(),
    @required Result filtersAppliedEVT(Map<String, dynamic> filters),
    @required Result genreFilterKeyChangedEVT(String key),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result languageFilterKeyChangedEVT(String key),
    @required Result loadMoreNewSeriesEVT(),
    @required Result loadMoreTopSeriesEVT(),
    @required Result timeFilterKeyChangedEVT(String key),
    @required Result topSeriesLoadedEVT(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result applyFilterChangesEVT(),
    Result filtersAppliedEVT(Map<String, dynamic> filters),
    Result genreFilterKeyChangedEVT(String key),
    Result homePageLaunchedEVT(BuildContext context),
    Result languageFilterKeyChangedEVT(String key),
    Result loadMoreNewSeriesEVT(),
    Result loadMoreTopSeriesEVT(),
    Result timeFilterKeyChangedEVT(String key),
    Result topSeriesLoadedEVT(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result applyFilterChangesEVT(ApplyFilterChangesEVT value),
    @required Result filtersAppliedEVT(FiltersAppliedEVT value),
    @required Result genreFilterKeyChangedEVT(GenreFilterKeyChangedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required
        Result languageFilterKeyChangedEVT(LanguageFilterKeyChangedEVT value),
    @required Result loadMoreNewSeriesEVT(LoadMoreNewSeriesEVT value),
    @required Result loadMoreTopSeriesEVT(LoadMoreTopSeriesEVT value),
    @required Result timeFilterKeyChangedEVT(TimeFilterKeyChangedEVT value),
    @required Result topSeriesLoadedEVT(TopSeriesLoadedEVT value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result applyFilterChangesEVT(ApplyFilterChangesEVT value),
    Result filtersAppliedEVT(FiltersAppliedEVT value),
    Result genreFilterKeyChangedEVT(GenreFilterKeyChangedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result languageFilterKeyChangedEVT(LanguageFilterKeyChangedEVT value),
    Result loadMoreNewSeriesEVT(LoadMoreNewSeriesEVT value),
    Result loadMoreTopSeriesEVT(LoadMoreTopSeriesEVT value),
    Result timeFilterKeyChangedEVT(TimeFilterKeyChangedEVT value),
    Result topSeriesLoadedEVT(TopSeriesLoadedEVT value),
    @required Result orElse(),
  });
}

abstract class $HomeDatabaseEventCopyWith<$Res> {
  factory $HomeDatabaseEventCopyWith(
          HomeDatabaseEvent value, $Res Function(HomeDatabaseEvent) then) =
      _$HomeDatabaseEventCopyWithImpl<$Res>;
}

class _$HomeDatabaseEventCopyWithImpl<$Res>
    implements $HomeDatabaseEventCopyWith<$Res> {
  _$HomeDatabaseEventCopyWithImpl(this._value, this._then);

  final HomeDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(HomeDatabaseEvent) _then;
}

abstract class $ApplyFilterChangesEVTCopyWith<$Res> {
  factory $ApplyFilterChangesEVTCopyWith(ApplyFilterChangesEVT value,
          $Res Function(ApplyFilterChangesEVT) then) =
      _$ApplyFilterChangesEVTCopyWithImpl<$Res>;
}

class _$ApplyFilterChangesEVTCopyWithImpl<$Res>
    extends _$HomeDatabaseEventCopyWithImpl<$Res>
    implements $ApplyFilterChangesEVTCopyWith<$Res> {
  _$ApplyFilterChangesEVTCopyWithImpl(
      ApplyFilterChangesEVT _value, $Res Function(ApplyFilterChangesEVT) _then)
      : super(_value, (v) => _then(v as ApplyFilterChangesEVT));

  @override
  ApplyFilterChangesEVT get _value => super._value as ApplyFilterChangesEVT;
}

class _$ApplyFilterChangesEVT
    with DiagnosticableTreeMixin
    implements ApplyFilterChangesEVT {
  const _$ApplyFilterChangesEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeDatabaseEvent.applyFilterChangesEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeDatabaseEvent.applyFilterChangesEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ApplyFilterChangesEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result applyFilterChangesEVT(),
    @required Result filtersAppliedEVT(Map<String, dynamic> filters),
    @required Result genreFilterKeyChangedEVT(String key),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result languageFilterKeyChangedEVT(String key),
    @required Result loadMoreNewSeriesEVT(),
    @required Result loadMoreTopSeriesEVT(),
    @required Result timeFilterKeyChangedEVT(String key),
    @required Result topSeriesLoadedEVT(),
  }) {
    assert(applyFilterChangesEVT != null);
    assert(filtersAppliedEVT != null);
    assert(genreFilterKeyChangedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(languageFilterKeyChangedEVT != null);
    assert(loadMoreNewSeriesEVT != null);
    assert(loadMoreTopSeriesEVT != null);
    assert(timeFilterKeyChangedEVT != null);
    assert(topSeriesLoadedEVT != null);
    return applyFilterChangesEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result applyFilterChangesEVT(),
    Result filtersAppliedEVT(Map<String, dynamic> filters),
    Result genreFilterKeyChangedEVT(String key),
    Result homePageLaunchedEVT(BuildContext context),
    Result languageFilterKeyChangedEVT(String key),
    Result loadMoreNewSeriesEVT(),
    Result loadMoreTopSeriesEVT(),
    Result timeFilterKeyChangedEVT(String key),
    Result topSeriesLoadedEVT(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (applyFilterChangesEVT != null) {
      return applyFilterChangesEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result applyFilterChangesEVT(ApplyFilterChangesEVT value),
    @required Result filtersAppliedEVT(FiltersAppliedEVT value),
    @required Result genreFilterKeyChangedEVT(GenreFilterKeyChangedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required
        Result languageFilterKeyChangedEVT(LanguageFilterKeyChangedEVT value),
    @required Result loadMoreNewSeriesEVT(LoadMoreNewSeriesEVT value),
    @required Result loadMoreTopSeriesEVT(LoadMoreTopSeriesEVT value),
    @required Result timeFilterKeyChangedEVT(TimeFilterKeyChangedEVT value),
    @required Result topSeriesLoadedEVT(TopSeriesLoadedEVT value),
  }) {
    assert(applyFilterChangesEVT != null);
    assert(filtersAppliedEVT != null);
    assert(genreFilterKeyChangedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(languageFilterKeyChangedEVT != null);
    assert(loadMoreNewSeriesEVT != null);
    assert(loadMoreTopSeriesEVT != null);
    assert(timeFilterKeyChangedEVT != null);
    assert(topSeriesLoadedEVT != null);
    return applyFilterChangesEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result applyFilterChangesEVT(ApplyFilterChangesEVT value),
    Result filtersAppliedEVT(FiltersAppliedEVT value),
    Result genreFilterKeyChangedEVT(GenreFilterKeyChangedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result languageFilterKeyChangedEVT(LanguageFilterKeyChangedEVT value),
    Result loadMoreNewSeriesEVT(LoadMoreNewSeriesEVT value),
    Result loadMoreTopSeriesEVT(LoadMoreTopSeriesEVT value),
    Result timeFilterKeyChangedEVT(TimeFilterKeyChangedEVT value),
    Result topSeriesLoadedEVT(TopSeriesLoadedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (applyFilterChangesEVT != null) {
      return applyFilterChangesEVT(this);
    }
    return orElse();
  }
}

abstract class ApplyFilterChangesEVT implements HomeDatabaseEvent {
  const factory ApplyFilterChangesEVT() = _$ApplyFilterChangesEVT;
}

abstract class $FiltersAppliedEVTCopyWith<$Res> {
  factory $FiltersAppliedEVTCopyWith(
          FiltersAppliedEVT value, $Res Function(FiltersAppliedEVT) then) =
      _$FiltersAppliedEVTCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> filters});
}

class _$FiltersAppliedEVTCopyWithImpl<$Res>
    extends _$HomeDatabaseEventCopyWithImpl<$Res>
    implements $FiltersAppliedEVTCopyWith<$Res> {
  _$FiltersAppliedEVTCopyWithImpl(
      FiltersAppliedEVT _value, $Res Function(FiltersAppliedEVT) _then)
      : super(_value, (v) => _then(v as FiltersAppliedEVT));

  @override
  FiltersAppliedEVT get _value => super._value as FiltersAppliedEVT;

  @override
  $Res call({
    Object filters = freezed,
  }) {
    return _then(FiltersAppliedEVT(
      filters == freezed ? _value.filters : filters as Map<String, dynamic>,
    ));
  }
}

class _$FiltersAppliedEVT
    with DiagnosticableTreeMixin
    implements FiltersAppliedEVT {
  const _$FiltersAppliedEVT(this.filters) : assert(filters != null);

  @override
  final Map<String, dynamic> filters;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeDatabaseEvent.filtersAppliedEVT(filters: $filters)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeDatabaseEvent.filtersAppliedEVT'))
      ..add(DiagnosticsProperty('filters', filters));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FiltersAppliedEVT &&
            (identical(other.filters, filters) ||
                const DeepCollectionEquality().equals(other.filters, filters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filters);

  @override
  $FiltersAppliedEVTCopyWith<FiltersAppliedEVT> get copyWith =>
      _$FiltersAppliedEVTCopyWithImpl<FiltersAppliedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result applyFilterChangesEVT(),
    @required Result filtersAppliedEVT(Map<String, dynamic> filters),
    @required Result genreFilterKeyChangedEVT(String key),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result languageFilterKeyChangedEVT(String key),
    @required Result loadMoreNewSeriesEVT(),
    @required Result loadMoreTopSeriesEVT(),
    @required Result timeFilterKeyChangedEVT(String key),
    @required Result topSeriesLoadedEVT(),
  }) {
    assert(applyFilterChangesEVT != null);
    assert(filtersAppliedEVT != null);
    assert(genreFilterKeyChangedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(languageFilterKeyChangedEVT != null);
    assert(loadMoreNewSeriesEVT != null);
    assert(loadMoreTopSeriesEVT != null);
    assert(timeFilterKeyChangedEVT != null);
    assert(topSeriesLoadedEVT != null);
    return filtersAppliedEVT(filters);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result applyFilterChangesEVT(),
    Result filtersAppliedEVT(Map<String, dynamic> filters),
    Result genreFilterKeyChangedEVT(String key),
    Result homePageLaunchedEVT(BuildContext context),
    Result languageFilterKeyChangedEVT(String key),
    Result loadMoreNewSeriesEVT(),
    Result loadMoreTopSeriesEVT(),
    Result timeFilterKeyChangedEVT(String key),
    Result topSeriesLoadedEVT(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (filtersAppliedEVT != null) {
      return filtersAppliedEVT(filters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result applyFilterChangesEVT(ApplyFilterChangesEVT value),
    @required Result filtersAppliedEVT(FiltersAppliedEVT value),
    @required Result genreFilterKeyChangedEVT(GenreFilterKeyChangedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required
        Result languageFilterKeyChangedEVT(LanguageFilterKeyChangedEVT value),
    @required Result loadMoreNewSeriesEVT(LoadMoreNewSeriesEVT value),
    @required Result loadMoreTopSeriesEVT(LoadMoreTopSeriesEVT value),
    @required Result timeFilterKeyChangedEVT(TimeFilterKeyChangedEVT value),
    @required Result topSeriesLoadedEVT(TopSeriesLoadedEVT value),
  }) {
    assert(applyFilterChangesEVT != null);
    assert(filtersAppliedEVT != null);
    assert(genreFilterKeyChangedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(languageFilterKeyChangedEVT != null);
    assert(loadMoreNewSeriesEVT != null);
    assert(loadMoreTopSeriesEVT != null);
    assert(timeFilterKeyChangedEVT != null);
    assert(topSeriesLoadedEVT != null);
    return filtersAppliedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result applyFilterChangesEVT(ApplyFilterChangesEVT value),
    Result filtersAppliedEVT(FiltersAppliedEVT value),
    Result genreFilterKeyChangedEVT(GenreFilterKeyChangedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result languageFilterKeyChangedEVT(LanguageFilterKeyChangedEVT value),
    Result loadMoreNewSeriesEVT(LoadMoreNewSeriesEVT value),
    Result loadMoreTopSeriesEVT(LoadMoreTopSeriesEVT value),
    Result timeFilterKeyChangedEVT(TimeFilterKeyChangedEVT value),
    Result topSeriesLoadedEVT(TopSeriesLoadedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (filtersAppliedEVT != null) {
      return filtersAppliedEVT(this);
    }
    return orElse();
  }
}

abstract class FiltersAppliedEVT implements HomeDatabaseEvent {
  const factory FiltersAppliedEVT(Map<String, dynamic> filters) =
      _$FiltersAppliedEVT;

  Map<String, dynamic> get filters;
  $FiltersAppliedEVTCopyWith<FiltersAppliedEVT> get copyWith;
}

abstract class $GenreFilterKeyChangedEVTCopyWith<$Res> {
  factory $GenreFilterKeyChangedEVTCopyWith(GenreFilterKeyChangedEVT value,
          $Res Function(GenreFilterKeyChangedEVT) then) =
      _$GenreFilterKeyChangedEVTCopyWithImpl<$Res>;
  $Res call({String key});
}

class _$GenreFilterKeyChangedEVTCopyWithImpl<$Res>
    extends _$HomeDatabaseEventCopyWithImpl<$Res>
    implements $GenreFilterKeyChangedEVTCopyWith<$Res> {
  _$GenreFilterKeyChangedEVTCopyWithImpl(GenreFilterKeyChangedEVT _value,
      $Res Function(GenreFilterKeyChangedEVT) _then)
      : super(_value, (v) => _then(v as GenreFilterKeyChangedEVT));

  @override
  GenreFilterKeyChangedEVT get _value =>
      super._value as GenreFilterKeyChangedEVT;

  @override
  $Res call({
    Object key = freezed,
  }) {
    return _then(GenreFilterKeyChangedEVT(
      key == freezed ? _value.key : key as String,
    ));
  }
}

class _$GenreFilterKeyChangedEVT
    with DiagnosticableTreeMixin
    implements GenreFilterKeyChangedEVT {
  const _$GenreFilterKeyChangedEVT(this.key) : assert(key != null);

  @override
  final String key;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeDatabaseEvent.genreFilterKeyChangedEVT(key: $key)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeDatabaseEvent.genreFilterKeyChangedEVT'))
      ..add(DiagnosticsProperty('key', key));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GenreFilterKeyChangedEVT &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(key);

  @override
  $GenreFilterKeyChangedEVTCopyWith<GenreFilterKeyChangedEVT> get copyWith =>
      _$GenreFilterKeyChangedEVTCopyWithImpl<GenreFilterKeyChangedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result applyFilterChangesEVT(),
    @required Result filtersAppliedEVT(Map<String, dynamic> filters),
    @required Result genreFilterKeyChangedEVT(String key),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result languageFilterKeyChangedEVT(String key),
    @required Result loadMoreNewSeriesEVT(),
    @required Result loadMoreTopSeriesEVT(),
    @required Result timeFilterKeyChangedEVT(String key),
    @required Result topSeriesLoadedEVT(),
  }) {
    assert(applyFilterChangesEVT != null);
    assert(filtersAppliedEVT != null);
    assert(genreFilterKeyChangedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(languageFilterKeyChangedEVT != null);
    assert(loadMoreNewSeriesEVT != null);
    assert(loadMoreTopSeriesEVT != null);
    assert(timeFilterKeyChangedEVT != null);
    assert(topSeriesLoadedEVT != null);
    return genreFilterKeyChangedEVT(key);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result applyFilterChangesEVT(),
    Result filtersAppliedEVT(Map<String, dynamic> filters),
    Result genreFilterKeyChangedEVT(String key),
    Result homePageLaunchedEVT(BuildContext context),
    Result languageFilterKeyChangedEVT(String key),
    Result loadMoreNewSeriesEVT(),
    Result loadMoreTopSeriesEVT(),
    Result timeFilterKeyChangedEVT(String key),
    Result topSeriesLoadedEVT(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genreFilterKeyChangedEVT != null) {
      return genreFilterKeyChangedEVT(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result applyFilterChangesEVT(ApplyFilterChangesEVT value),
    @required Result filtersAppliedEVT(FiltersAppliedEVT value),
    @required Result genreFilterKeyChangedEVT(GenreFilterKeyChangedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required
        Result languageFilterKeyChangedEVT(LanguageFilterKeyChangedEVT value),
    @required Result loadMoreNewSeriesEVT(LoadMoreNewSeriesEVT value),
    @required Result loadMoreTopSeriesEVT(LoadMoreTopSeriesEVT value),
    @required Result timeFilterKeyChangedEVT(TimeFilterKeyChangedEVT value),
    @required Result topSeriesLoadedEVT(TopSeriesLoadedEVT value),
  }) {
    assert(applyFilterChangesEVT != null);
    assert(filtersAppliedEVT != null);
    assert(genreFilterKeyChangedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(languageFilterKeyChangedEVT != null);
    assert(loadMoreNewSeriesEVT != null);
    assert(loadMoreTopSeriesEVT != null);
    assert(timeFilterKeyChangedEVT != null);
    assert(topSeriesLoadedEVT != null);
    return genreFilterKeyChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result applyFilterChangesEVT(ApplyFilterChangesEVT value),
    Result filtersAppliedEVT(FiltersAppliedEVT value),
    Result genreFilterKeyChangedEVT(GenreFilterKeyChangedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result languageFilterKeyChangedEVT(LanguageFilterKeyChangedEVT value),
    Result loadMoreNewSeriesEVT(LoadMoreNewSeriesEVT value),
    Result loadMoreTopSeriesEVT(LoadMoreTopSeriesEVT value),
    Result timeFilterKeyChangedEVT(TimeFilterKeyChangedEVT value),
    Result topSeriesLoadedEVT(TopSeriesLoadedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genreFilterKeyChangedEVT != null) {
      return genreFilterKeyChangedEVT(this);
    }
    return orElse();
  }
}

abstract class GenreFilterKeyChangedEVT implements HomeDatabaseEvent {
  const factory GenreFilterKeyChangedEVT(String key) =
      _$GenreFilterKeyChangedEVT;

  String get key;
  $GenreFilterKeyChangedEVTCopyWith<GenreFilterKeyChangedEVT> get copyWith;
}

abstract class $HomePageLaunchedEVTCopyWith<$Res> {
  factory $HomePageLaunchedEVTCopyWith(
          HomePageLaunchedEVT value, $Res Function(HomePageLaunchedEVT) then) =
      _$HomePageLaunchedEVTCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

class _$HomePageLaunchedEVTCopyWithImpl<$Res>
    extends _$HomeDatabaseEventCopyWithImpl<$Res>
    implements $HomePageLaunchedEVTCopyWith<$Res> {
  _$HomePageLaunchedEVTCopyWithImpl(
      HomePageLaunchedEVT _value, $Res Function(HomePageLaunchedEVT) _then)
      : super(_value, (v) => _then(v as HomePageLaunchedEVT));

  @override
  HomePageLaunchedEVT get _value => super._value as HomePageLaunchedEVT;

  @override
  $Res call({
    Object context = freezed,
  }) {
    return _then(HomePageLaunchedEVT(
      context: context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

class _$HomePageLaunchedEVT
    with DiagnosticableTreeMixin
    implements HomePageLaunchedEVT {
  const _$HomePageLaunchedEVT({this.context});

  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeDatabaseEvent.homePageLaunchedEVT(context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'HomeDatabaseEvent.homePageLaunchedEVT'))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HomePageLaunchedEVT &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(context);

  @override
  $HomePageLaunchedEVTCopyWith<HomePageLaunchedEVT> get copyWith =>
      _$HomePageLaunchedEVTCopyWithImpl<HomePageLaunchedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result applyFilterChangesEVT(),
    @required Result filtersAppliedEVT(Map<String, dynamic> filters),
    @required Result genreFilterKeyChangedEVT(String key),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result languageFilterKeyChangedEVT(String key),
    @required Result loadMoreNewSeriesEVT(),
    @required Result loadMoreTopSeriesEVT(),
    @required Result timeFilterKeyChangedEVT(String key),
    @required Result topSeriesLoadedEVT(),
  }) {
    assert(applyFilterChangesEVT != null);
    assert(filtersAppliedEVT != null);
    assert(genreFilterKeyChangedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(languageFilterKeyChangedEVT != null);
    assert(loadMoreNewSeriesEVT != null);
    assert(loadMoreTopSeriesEVT != null);
    assert(timeFilterKeyChangedEVT != null);
    assert(topSeriesLoadedEVT != null);
    return homePageLaunchedEVT(context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result applyFilterChangesEVT(),
    Result filtersAppliedEVT(Map<String, dynamic> filters),
    Result genreFilterKeyChangedEVT(String key),
    Result homePageLaunchedEVT(BuildContext context),
    Result languageFilterKeyChangedEVT(String key),
    Result loadMoreNewSeriesEVT(),
    Result loadMoreTopSeriesEVT(),
    Result timeFilterKeyChangedEVT(String key),
    Result topSeriesLoadedEVT(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (homePageLaunchedEVT != null) {
      return homePageLaunchedEVT(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result applyFilterChangesEVT(ApplyFilterChangesEVT value),
    @required Result filtersAppliedEVT(FiltersAppliedEVT value),
    @required Result genreFilterKeyChangedEVT(GenreFilterKeyChangedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required
        Result languageFilterKeyChangedEVT(LanguageFilterKeyChangedEVT value),
    @required Result loadMoreNewSeriesEVT(LoadMoreNewSeriesEVT value),
    @required Result loadMoreTopSeriesEVT(LoadMoreTopSeriesEVT value),
    @required Result timeFilterKeyChangedEVT(TimeFilterKeyChangedEVT value),
    @required Result topSeriesLoadedEVT(TopSeriesLoadedEVT value),
  }) {
    assert(applyFilterChangesEVT != null);
    assert(filtersAppliedEVT != null);
    assert(genreFilterKeyChangedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(languageFilterKeyChangedEVT != null);
    assert(loadMoreNewSeriesEVT != null);
    assert(loadMoreTopSeriesEVT != null);
    assert(timeFilterKeyChangedEVT != null);
    assert(topSeriesLoadedEVT != null);
    return homePageLaunchedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result applyFilterChangesEVT(ApplyFilterChangesEVT value),
    Result filtersAppliedEVT(FiltersAppliedEVT value),
    Result genreFilterKeyChangedEVT(GenreFilterKeyChangedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result languageFilterKeyChangedEVT(LanguageFilterKeyChangedEVT value),
    Result loadMoreNewSeriesEVT(LoadMoreNewSeriesEVT value),
    Result loadMoreTopSeriesEVT(LoadMoreTopSeriesEVT value),
    Result timeFilterKeyChangedEVT(TimeFilterKeyChangedEVT value),
    Result topSeriesLoadedEVT(TopSeriesLoadedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (homePageLaunchedEVT != null) {
      return homePageLaunchedEVT(this);
    }
    return orElse();
  }
}

abstract class HomePageLaunchedEVT implements HomeDatabaseEvent {
  const factory HomePageLaunchedEVT({BuildContext context}) =
      _$HomePageLaunchedEVT;

  BuildContext get context;
  $HomePageLaunchedEVTCopyWith<HomePageLaunchedEVT> get copyWith;
}

abstract class $LanguageFilterKeyChangedEVTCopyWith<$Res> {
  factory $LanguageFilterKeyChangedEVTCopyWith(
          LanguageFilterKeyChangedEVT value,
          $Res Function(LanguageFilterKeyChangedEVT) then) =
      _$LanguageFilterKeyChangedEVTCopyWithImpl<$Res>;
  $Res call({String key});
}

class _$LanguageFilterKeyChangedEVTCopyWithImpl<$Res>
    extends _$HomeDatabaseEventCopyWithImpl<$Res>
    implements $LanguageFilterKeyChangedEVTCopyWith<$Res> {
  _$LanguageFilterKeyChangedEVTCopyWithImpl(LanguageFilterKeyChangedEVT _value,
      $Res Function(LanguageFilterKeyChangedEVT) _then)
      : super(_value, (v) => _then(v as LanguageFilterKeyChangedEVT));

  @override
  LanguageFilterKeyChangedEVT get _value =>
      super._value as LanguageFilterKeyChangedEVT;

  @override
  $Res call({
    Object key = freezed,
  }) {
    return _then(LanguageFilterKeyChangedEVT(
      key == freezed ? _value.key : key as String,
    ));
  }
}

class _$LanguageFilterKeyChangedEVT
    with DiagnosticableTreeMixin
    implements LanguageFilterKeyChangedEVT {
  const _$LanguageFilterKeyChangedEVT(this.key) : assert(key != null);

  @override
  final String key;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeDatabaseEvent.languageFilterKeyChangedEVT(key: $key)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeDatabaseEvent.languageFilterKeyChangedEVT'))
      ..add(DiagnosticsProperty('key', key));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LanguageFilterKeyChangedEVT &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(key);

  @override
  $LanguageFilterKeyChangedEVTCopyWith<LanguageFilterKeyChangedEVT>
      get copyWith => _$LanguageFilterKeyChangedEVTCopyWithImpl<
          LanguageFilterKeyChangedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result applyFilterChangesEVT(),
    @required Result filtersAppliedEVT(Map<String, dynamic> filters),
    @required Result genreFilterKeyChangedEVT(String key),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result languageFilterKeyChangedEVT(String key),
    @required Result loadMoreNewSeriesEVT(),
    @required Result loadMoreTopSeriesEVT(),
    @required Result timeFilterKeyChangedEVT(String key),
    @required Result topSeriesLoadedEVT(),
  }) {
    assert(applyFilterChangesEVT != null);
    assert(filtersAppliedEVT != null);
    assert(genreFilterKeyChangedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(languageFilterKeyChangedEVT != null);
    assert(loadMoreNewSeriesEVT != null);
    assert(loadMoreTopSeriesEVT != null);
    assert(timeFilterKeyChangedEVT != null);
    assert(topSeriesLoadedEVT != null);
    return languageFilterKeyChangedEVT(key);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result applyFilterChangesEVT(),
    Result filtersAppliedEVT(Map<String, dynamic> filters),
    Result genreFilterKeyChangedEVT(String key),
    Result homePageLaunchedEVT(BuildContext context),
    Result languageFilterKeyChangedEVT(String key),
    Result loadMoreNewSeriesEVT(),
    Result loadMoreTopSeriesEVT(),
    Result timeFilterKeyChangedEVT(String key),
    Result topSeriesLoadedEVT(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (languageFilterKeyChangedEVT != null) {
      return languageFilterKeyChangedEVT(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result applyFilterChangesEVT(ApplyFilterChangesEVT value),
    @required Result filtersAppliedEVT(FiltersAppliedEVT value),
    @required Result genreFilterKeyChangedEVT(GenreFilterKeyChangedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required
        Result languageFilterKeyChangedEVT(LanguageFilterKeyChangedEVT value),
    @required Result loadMoreNewSeriesEVT(LoadMoreNewSeriesEVT value),
    @required Result loadMoreTopSeriesEVT(LoadMoreTopSeriesEVT value),
    @required Result timeFilterKeyChangedEVT(TimeFilterKeyChangedEVT value),
    @required Result topSeriesLoadedEVT(TopSeriesLoadedEVT value),
  }) {
    assert(applyFilterChangesEVT != null);
    assert(filtersAppliedEVT != null);
    assert(genreFilterKeyChangedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(languageFilterKeyChangedEVT != null);
    assert(loadMoreNewSeriesEVT != null);
    assert(loadMoreTopSeriesEVT != null);
    assert(timeFilterKeyChangedEVT != null);
    assert(topSeriesLoadedEVT != null);
    return languageFilterKeyChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result applyFilterChangesEVT(ApplyFilterChangesEVT value),
    Result filtersAppliedEVT(FiltersAppliedEVT value),
    Result genreFilterKeyChangedEVT(GenreFilterKeyChangedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result languageFilterKeyChangedEVT(LanguageFilterKeyChangedEVT value),
    Result loadMoreNewSeriesEVT(LoadMoreNewSeriesEVT value),
    Result loadMoreTopSeriesEVT(LoadMoreTopSeriesEVT value),
    Result timeFilterKeyChangedEVT(TimeFilterKeyChangedEVT value),
    Result topSeriesLoadedEVT(TopSeriesLoadedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (languageFilterKeyChangedEVT != null) {
      return languageFilterKeyChangedEVT(this);
    }
    return orElse();
  }
}

abstract class LanguageFilterKeyChangedEVT implements HomeDatabaseEvent {
  const factory LanguageFilterKeyChangedEVT(String key) =
      _$LanguageFilterKeyChangedEVT;

  String get key;
  $LanguageFilterKeyChangedEVTCopyWith<LanguageFilterKeyChangedEVT>
      get copyWith;
}

abstract class $LoadMoreNewSeriesEVTCopyWith<$Res> {
  factory $LoadMoreNewSeriesEVTCopyWith(LoadMoreNewSeriesEVT value,
          $Res Function(LoadMoreNewSeriesEVT) then) =
      _$LoadMoreNewSeriesEVTCopyWithImpl<$Res>;
}

class _$LoadMoreNewSeriesEVTCopyWithImpl<$Res>
    extends _$HomeDatabaseEventCopyWithImpl<$Res>
    implements $LoadMoreNewSeriesEVTCopyWith<$Res> {
  _$LoadMoreNewSeriesEVTCopyWithImpl(
      LoadMoreNewSeriesEVT _value, $Res Function(LoadMoreNewSeriesEVT) _then)
      : super(_value, (v) => _then(v as LoadMoreNewSeriesEVT));

  @override
  LoadMoreNewSeriesEVT get _value => super._value as LoadMoreNewSeriesEVT;
}

class _$LoadMoreNewSeriesEVT
    with DiagnosticableTreeMixin
    implements LoadMoreNewSeriesEVT {
  const _$LoadMoreNewSeriesEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeDatabaseEvent.loadMoreNewSeriesEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeDatabaseEvent.loadMoreNewSeriesEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadMoreNewSeriesEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result applyFilterChangesEVT(),
    @required Result filtersAppliedEVT(Map<String, dynamic> filters),
    @required Result genreFilterKeyChangedEVT(String key),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result languageFilterKeyChangedEVT(String key),
    @required Result loadMoreNewSeriesEVT(),
    @required Result loadMoreTopSeriesEVT(),
    @required Result timeFilterKeyChangedEVT(String key),
    @required Result topSeriesLoadedEVT(),
  }) {
    assert(applyFilterChangesEVT != null);
    assert(filtersAppliedEVT != null);
    assert(genreFilterKeyChangedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(languageFilterKeyChangedEVT != null);
    assert(loadMoreNewSeriesEVT != null);
    assert(loadMoreTopSeriesEVT != null);
    assert(timeFilterKeyChangedEVT != null);
    assert(topSeriesLoadedEVT != null);
    return loadMoreNewSeriesEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result applyFilterChangesEVT(),
    Result filtersAppliedEVT(Map<String, dynamic> filters),
    Result genreFilterKeyChangedEVT(String key),
    Result homePageLaunchedEVT(BuildContext context),
    Result languageFilterKeyChangedEVT(String key),
    Result loadMoreNewSeriesEVT(),
    Result loadMoreTopSeriesEVT(),
    Result timeFilterKeyChangedEVT(String key),
    Result topSeriesLoadedEVT(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadMoreNewSeriesEVT != null) {
      return loadMoreNewSeriesEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result applyFilterChangesEVT(ApplyFilterChangesEVT value),
    @required Result filtersAppliedEVT(FiltersAppliedEVT value),
    @required Result genreFilterKeyChangedEVT(GenreFilterKeyChangedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required
        Result languageFilterKeyChangedEVT(LanguageFilterKeyChangedEVT value),
    @required Result loadMoreNewSeriesEVT(LoadMoreNewSeriesEVT value),
    @required Result loadMoreTopSeriesEVT(LoadMoreTopSeriesEVT value),
    @required Result timeFilterKeyChangedEVT(TimeFilterKeyChangedEVT value),
    @required Result topSeriesLoadedEVT(TopSeriesLoadedEVT value),
  }) {
    assert(applyFilterChangesEVT != null);
    assert(filtersAppliedEVT != null);
    assert(genreFilterKeyChangedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(languageFilterKeyChangedEVT != null);
    assert(loadMoreNewSeriesEVT != null);
    assert(loadMoreTopSeriesEVT != null);
    assert(timeFilterKeyChangedEVT != null);
    assert(topSeriesLoadedEVT != null);
    return loadMoreNewSeriesEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result applyFilterChangesEVT(ApplyFilterChangesEVT value),
    Result filtersAppliedEVT(FiltersAppliedEVT value),
    Result genreFilterKeyChangedEVT(GenreFilterKeyChangedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result languageFilterKeyChangedEVT(LanguageFilterKeyChangedEVT value),
    Result loadMoreNewSeriesEVT(LoadMoreNewSeriesEVT value),
    Result loadMoreTopSeriesEVT(LoadMoreTopSeriesEVT value),
    Result timeFilterKeyChangedEVT(TimeFilterKeyChangedEVT value),
    Result topSeriesLoadedEVT(TopSeriesLoadedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadMoreNewSeriesEVT != null) {
      return loadMoreNewSeriesEVT(this);
    }
    return orElse();
  }
}

abstract class LoadMoreNewSeriesEVT implements HomeDatabaseEvent {
  const factory LoadMoreNewSeriesEVT() = _$LoadMoreNewSeriesEVT;
}

abstract class $LoadMoreTopSeriesEVTCopyWith<$Res> {
  factory $LoadMoreTopSeriesEVTCopyWith(LoadMoreTopSeriesEVT value,
          $Res Function(LoadMoreTopSeriesEVT) then) =
      _$LoadMoreTopSeriesEVTCopyWithImpl<$Res>;
}

class _$LoadMoreTopSeriesEVTCopyWithImpl<$Res>
    extends _$HomeDatabaseEventCopyWithImpl<$Res>
    implements $LoadMoreTopSeriesEVTCopyWith<$Res> {
  _$LoadMoreTopSeriesEVTCopyWithImpl(
      LoadMoreTopSeriesEVT _value, $Res Function(LoadMoreTopSeriesEVT) _then)
      : super(_value, (v) => _then(v as LoadMoreTopSeriesEVT));

  @override
  LoadMoreTopSeriesEVT get _value => super._value as LoadMoreTopSeriesEVT;
}

class _$LoadMoreTopSeriesEVT
    with DiagnosticableTreeMixin
    implements LoadMoreTopSeriesEVT {
  const _$LoadMoreTopSeriesEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeDatabaseEvent.loadMoreTopSeriesEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeDatabaseEvent.loadMoreTopSeriesEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadMoreTopSeriesEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result applyFilterChangesEVT(),
    @required Result filtersAppliedEVT(Map<String, dynamic> filters),
    @required Result genreFilterKeyChangedEVT(String key),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result languageFilterKeyChangedEVT(String key),
    @required Result loadMoreNewSeriesEVT(),
    @required Result loadMoreTopSeriesEVT(),
    @required Result timeFilterKeyChangedEVT(String key),
    @required Result topSeriesLoadedEVT(),
  }) {
    assert(applyFilterChangesEVT != null);
    assert(filtersAppliedEVT != null);
    assert(genreFilterKeyChangedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(languageFilterKeyChangedEVT != null);
    assert(loadMoreNewSeriesEVT != null);
    assert(loadMoreTopSeriesEVT != null);
    assert(timeFilterKeyChangedEVT != null);
    assert(topSeriesLoadedEVT != null);
    return loadMoreTopSeriesEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result applyFilterChangesEVT(),
    Result filtersAppliedEVT(Map<String, dynamic> filters),
    Result genreFilterKeyChangedEVT(String key),
    Result homePageLaunchedEVT(BuildContext context),
    Result languageFilterKeyChangedEVT(String key),
    Result loadMoreNewSeriesEVT(),
    Result loadMoreTopSeriesEVT(),
    Result timeFilterKeyChangedEVT(String key),
    Result topSeriesLoadedEVT(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadMoreTopSeriesEVT != null) {
      return loadMoreTopSeriesEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result applyFilterChangesEVT(ApplyFilterChangesEVT value),
    @required Result filtersAppliedEVT(FiltersAppliedEVT value),
    @required Result genreFilterKeyChangedEVT(GenreFilterKeyChangedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required
        Result languageFilterKeyChangedEVT(LanguageFilterKeyChangedEVT value),
    @required Result loadMoreNewSeriesEVT(LoadMoreNewSeriesEVT value),
    @required Result loadMoreTopSeriesEVT(LoadMoreTopSeriesEVT value),
    @required Result timeFilterKeyChangedEVT(TimeFilterKeyChangedEVT value),
    @required Result topSeriesLoadedEVT(TopSeriesLoadedEVT value),
  }) {
    assert(applyFilterChangesEVT != null);
    assert(filtersAppliedEVT != null);
    assert(genreFilterKeyChangedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(languageFilterKeyChangedEVT != null);
    assert(loadMoreNewSeriesEVT != null);
    assert(loadMoreTopSeriesEVT != null);
    assert(timeFilterKeyChangedEVT != null);
    assert(topSeriesLoadedEVT != null);
    return loadMoreTopSeriesEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result applyFilterChangesEVT(ApplyFilterChangesEVT value),
    Result filtersAppliedEVT(FiltersAppliedEVT value),
    Result genreFilterKeyChangedEVT(GenreFilterKeyChangedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result languageFilterKeyChangedEVT(LanguageFilterKeyChangedEVT value),
    Result loadMoreNewSeriesEVT(LoadMoreNewSeriesEVT value),
    Result loadMoreTopSeriesEVT(LoadMoreTopSeriesEVT value),
    Result timeFilterKeyChangedEVT(TimeFilterKeyChangedEVT value),
    Result topSeriesLoadedEVT(TopSeriesLoadedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadMoreTopSeriesEVT != null) {
      return loadMoreTopSeriesEVT(this);
    }
    return orElse();
  }
}

abstract class LoadMoreTopSeriesEVT implements HomeDatabaseEvent {
  const factory LoadMoreTopSeriesEVT() = _$LoadMoreTopSeriesEVT;
}

abstract class $TimeFilterKeyChangedEVTCopyWith<$Res> {
  factory $TimeFilterKeyChangedEVTCopyWith(TimeFilterKeyChangedEVT value,
          $Res Function(TimeFilterKeyChangedEVT) then) =
      _$TimeFilterKeyChangedEVTCopyWithImpl<$Res>;
  $Res call({String key});
}

class _$TimeFilterKeyChangedEVTCopyWithImpl<$Res>
    extends _$HomeDatabaseEventCopyWithImpl<$Res>
    implements $TimeFilterKeyChangedEVTCopyWith<$Res> {
  _$TimeFilterKeyChangedEVTCopyWithImpl(TimeFilterKeyChangedEVT _value,
      $Res Function(TimeFilterKeyChangedEVT) _then)
      : super(_value, (v) => _then(v as TimeFilterKeyChangedEVT));

  @override
  TimeFilterKeyChangedEVT get _value => super._value as TimeFilterKeyChangedEVT;

  @override
  $Res call({
    Object key = freezed,
  }) {
    return _then(TimeFilterKeyChangedEVT(
      key == freezed ? _value.key : key as String,
    ));
  }
}

class _$TimeFilterKeyChangedEVT
    with DiagnosticableTreeMixin
    implements TimeFilterKeyChangedEVT {
  const _$TimeFilterKeyChangedEVT(this.key) : assert(key != null);

  @override
  final String key;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeDatabaseEvent.timeFilterKeyChangedEVT(key: $key)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeDatabaseEvent.timeFilterKeyChangedEVT'))
      ..add(DiagnosticsProperty('key', key));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimeFilterKeyChangedEVT &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(key);

  @override
  $TimeFilterKeyChangedEVTCopyWith<TimeFilterKeyChangedEVT> get copyWith =>
      _$TimeFilterKeyChangedEVTCopyWithImpl<TimeFilterKeyChangedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result applyFilterChangesEVT(),
    @required Result filtersAppliedEVT(Map<String, dynamic> filters),
    @required Result genreFilterKeyChangedEVT(String key),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result languageFilterKeyChangedEVT(String key),
    @required Result loadMoreNewSeriesEVT(),
    @required Result loadMoreTopSeriesEVT(),
    @required Result timeFilterKeyChangedEVT(String key),
    @required Result topSeriesLoadedEVT(),
  }) {
    assert(applyFilterChangesEVT != null);
    assert(filtersAppliedEVT != null);
    assert(genreFilterKeyChangedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(languageFilterKeyChangedEVT != null);
    assert(loadMoreNewSeriesEVT != null);
    assert(loadMoreTopSeriesEVT != null);
    assert(timeFilterKeyChangedEVT != null);
    assert(topSeriesLoadedEVT != null);
    return timeFilterKeyChangedEVT(key);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result applyFilterChangesEVT(),
    Result filtersAppliedEVT(Map<String, dynamic> filters),
    Result genreFilterKeyChangedEVT(String key),
    Result homePageLaunchedEVT(BuildContext context),
    Result languageFilterKeyChangedEVT(String key),
    Result loadMoreNewSeriesEVT(),
    Result loadMoreTopSeriesEVT(),
    Result timeFilterKeyChangedEVT(String key),
    Result topSeriesLoadedEVT(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timeFilterKeyChangedEVT != null) {
      return timeFilterKeyChangedEVT(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result applyFilterChangesEVT(ApplyFilterChangesEVT value),
    @required Result filtersAppliedEVT(FiltersAppliedEVT value),
    @required Result genreFilterKeyChangedEVT(GenreFilterKeyChangedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required
        Result languageFilterKeyChangedEVT(LanguageFilterKeyChangedEVT value),
    @required Result loadMoreNewSeriesEVT(LoadMoreNewSeriesEVT value),
    @required Result loadMoreTopSeriesEVT(LoadMoreTopSeriesEVT value),
    @required Result timeFilterKeyChangedEVT(TimeFilterKeyChangedEVT value),
    @required Result topSeriesLoadedEVT(TopSeriesLoadedEVT value),
  }) {
    assert(applyFilterChangesEVT != null);
    assert(filtersAppliedEVT != null);
    assert(genreFilterKeyChangedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(languageFilterKeyChangedEVT != null);
    assert(loadMoreNewSeriesEVT != null);
    assert(loadMoreTopSeriesEVT != null);
    assert(timeFilterKeyChangedEVT != null);
    assert(topSeriesLoadedEVT != null);
    return timeFilterKeyChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result applyFilterChangesEVT(ApplyFilterChangesEVT value),
    Result filtersAppliedEVT(FiltersAppliedEVT value),
    Result genreFilterKeyChangedEVT(GenreFilterKeyChangedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result languageFilterKeyChangedEVT(LanguageFilterKeyChangedEVT value),
    Result loadMoreNewSeriesEVT(LoadMoreNewSeriesEVT value),
    Result loadMoreTopSeriesEVT(LoadMoreTopSeriesEVT value),
    Result timeFilterKeyChangedEVT(TimeFilterKeyChangedEVT value),
    Result topSeriesLoadedEVT(TopSeriesLoadedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timeFilterKeyChangedEVT != null) {
      return timeFilterKeyChangedEVT(this);
    }
    return orElse();
  }
}

abstract class TimeFilterKeyChangedEVT implements HomeDatabaseEvent {
  const factory TimeFilterKeyChangedEVT(String key) = _$TimeFilterKeyChangedEVT;

  String get key;
  $TimeFilterKeyChangedEVTCopyWith<TimeFilterKeyChangedEVT> get copyWith;
}

abstract class $TopSeriesLoadedEVTCopyWith<$Res> {
  factory $TopSeriesLoadedEVTCopyWith(
          TopSeriesLoadedEVT value, $Res Function(TopSeriesLoadedEVT) then) =
      _$TopSeriesLoadedEVTCopyWithImpl<$Res>;
}

class _$TopSeriesLoadedEVTCopyWithImpl<$Res>
    extends _$HomeDatabaseEventCopyWithImpl<$Res>
    implements $TopSeriesLoadedEVTCopyWith<$Res> {
  _$TopSeriesLoadedEVTCopyWithImpl(
      TopSeriesLoadedEVT _value, $Res Function(TopSeriesLoadedEVT) _then)
      : super(_value, (v) => _then(v as TopSeriesLoadedEVT));

  @override
  TopSeriesLoadedEVT get _value => super._value as TopSeriesLoadedEVT;
}

class _$TopSeriesLoadedEVT
    with DiagnosticableTreeMixin
    implements TopSeriesLoadedEVT {
  const _$TopSeriesLoadedEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeDatabaseEvent.topSeriesLoadedEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'HomeDatabaseEvent.topSeriesLoadedEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TopSeriesLoadedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result applyFilterChangesEVT(),
    @required Result filtersAppliedEVT(Map<String, dynamic> filters),
    @required Result genreFilterKeyChangedEVT(String key),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result languageFilterKeyChangedEVT(String key),
    @required Result loadMoreNewSeriesEVT(),
    @required Result loadMoreTopSeriesEVT(),
    @required Result timeFilterKeyChangedEVT(String key),
    @required Result topSeriesLoadedEVT(),
  }) {
    assert(applyFilterChangesEVT != null);
    assert(filtersAppliedEVT != null);
    assert(genreFilterKeyChangedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(languageFilterKeyChangedEVT != null);
    assert(loadMoreNewSeriesEVT != null);
    assert(loadMoreTopSeriesEVT != null);
    assert(timeFilterKeyChangedEVT != null);
    assert(topSeriesLoadedEVT != null);
    return topSeriesLoadedEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result applyFilterChangesEVT(),
    Result filtersAppliedEVT(Map<String, dynamic> filters),
    Result genreFilterKeyChangedEVT(String key),
    Result homePageLaunchedEVT(BuildContext context),
    Result languageFilterKeyChangedEVT(String key),
    Result loadMoreNewSeriesEVT(),
    Result loadMoreTopSeriesEVT(),
    Result timeFilterKeyChangedEVT(String key),
    Result topSeriesLoadedEVT(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (topSeriesLoadedEVT != null) {
      return topSeriesLoadedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result applyFilterChangesEVT(ApplyFilterChangesEVT value),
    @required Result filtersAppliedEVT(FiltersAppliedEVT value),
    @required Result genreFilterKeyChangedEVT(GenreFilterKeyChangedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required
        Result languageFilterKeyChangedEVT(LanguageFilterKeyChangedEVT value),
    @required Result loadMoreNewSeriesEVT(LoadMoreNewSeriesEVT value),
    @required Result loadMoreTopSeriesEVT(LoadMoreTopSeriesEVT value),
    @required Result timeFilterKeyChangedEVT(TimeFilterKeyChangedEVT value),
    @required Result topSeriesLoadedEVT(TopSeriesLoadedEVT value),
  }) {
    assert(applyFilterChangesEVT != null);
    assert(filtersAppliedEVT != null);
    assert(genreFilterKeyChangedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(languageFilterKeyChangedEVT != null);
    assert(loadMoreNewSeriesEVT != null);
    assert(loadMoreTopSeriesEVT != null);
    assert(timeFilterKeyChangedEVT != null);
    assert(topSeriesLoadedEVT != null);
    return topSeriesLoadedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result applyFilterChangesEVT(ApplyFilterChangesEVT value),
    Result filtersAppliedEVT(FiltersAppliedEVT value),
    Result genreFilterKeyChangedEVT(GenreFilterKeyChangedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result languageFilterKeyChangedEVT(LanguageFilterKeyChangedEVT value),
    Result loadMoreNewSeriesEVT(LoadMoreNewSeriesEVT value),
    Result loadMoreTopSeriesEVT(LoadMoreTopSeriesEVT value),
    Result timeFilterKeyChangedEVT(TimeFilterKeyChangedEVT value),
    Result topSeriesLoadedEVT(TopSeriesLoadedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (topSeriesLoadedEVT != null) {
      return topSeriesLoadedEVT(this);
    }
    return orElse();
  }
}

abstract class TopSeriesLoadedEVT implements HomeDatabaseEvent {
  const factory TopSeriesLoadedEVT() = _$TopSeriesLoadedEVT;
}

class _$HomeDatabaseStateTearOff {
  const _$HomeDatabaseStateTearOff();

  _HomeDatabaseState call(
      {@required
          List<Series> topFiveSeries,
      @required
          List<Series> topSeries,
      @required
          List<Series> newSeries,
      @required
          Map<String, dynamic> filters,
      @required
          String timeFilterKey,
      @required
          String genreFilterKey,
      @required
          String languageFilterKey,
      @required
          bool areFiltersApplied,
      @required
          Map<String, String> timesMap,
      @required
          Map<String, String> genresMap,
      @required
          Map<String, String> languagesMap,
      @required
          bool isLoading,
      @required
          Option<Either<DatabaseFailure, DatabaseSuccess>>
              databaseFailureOrSuccessOption}) {
    return _HomeDatabaseState(
      topFiveSeries: topFiveSeries,
      topSeries: topSeries,
      newSeries: newSeries,
      filters: filters,
      timeFilterKey: timeFilterKey,
      genreFilterKey: genreFilterKey,
      languageFilterKey: languageFilterKey,
      areFiltersApplied: areFiltersApplied,
      timesMap: timesMap,
      genresMap: genresMap,
      languagesMap: languagesMap,
      isLoading: isLoading,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $HomeDatabaseState = _$HomeDatabaseStateTearOff();

mixin _$HomeDatabaseState {
  List<Series> get topFiveSeries;
  List<Series> get topSeries;
  List<Series> get newSeries;
  Map<String, dynamic> get filters;
  String get timeFilterKey;
  String get genreFilterKey;
  String get languageFilterKey;
  bool get areFiltersApplied;
  Map<String, String> get timesMap;
  Map<String, String> get genresMap;
  Map<String, String> get languagesMap;
  bool get isLoading;
  Option<Either<DatabaseFailure, DatabaseSuccess>>
      get databaseFailureOrSuccessOption;

  $HomeDatabaseStateCopyWith<HomeDatabaseState> get copyWith;
}

abstract class $HomeDatabaseStateCopyWith<$Res> {
  factory $HomeDatabaseStateCopyWith(
          HomeDatabaseState value, $Res Function(HomeDatabaseState) then) =
      _$HomeDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {List<Series> topFiveSeries,
      List<Series> topSeries,
      List<Series> newSeries,
      Map<String, dynamic> filters,
      String timeFilterKey,
      String genreFilterKey,
      String languageFilterKey,
      bool areFiltersApplied,
      Map<String, String> timesMap,
      Map<String, String> genresMap,
      Map<String, String> languagesMap,
      bool isLoading,
      Option<Either<DatabaseFailure, DatabaseSuccess>>
          databaseFailureOrSuccessOption});
}

class _$HomeDatabaseStateCopyWithImpl<$Res>
    implements $HomeDatabaseStateCopyWith<$Res> {
  _$HomeDatabaseStateCopyWithImpl(this._value, this._then);

  final HomeDatabaseState _value;
  // ignore: unused_field
  final $Res Function(HomeDatabaseState) _then;

  @override
  $Res call({
    Object topFiveSeries = freezed,
    Object topSeries = freezed,
    Object newSeries = freezed,
    Object filters = freezed,
    Object timeFilterKey = freezed,
    Object genreFilterKey = freezed,
    Object languageFilterKey = freezed,
    Object areFiltersApplied = freezed,
    Object timesMap = freezed,
    Object genresMap = freezed,
    Object languagesMap = freezed,
    Object isLoading = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      topFiveSeries: topFiveSeries == freezed
          ? _value.topFiveSeries
          : topFiveSeries as List<Series>,
      topSeries:
          topSeries == freezed ? _value.topSeries : topSeries as List<Series>,
      newSeries:
          newSeries == freezed ? _value.newSeries : newSeries as List<Series>,
      filters:
          filters == freezed ? _value.filters : filters as Map<String, dynamic>,
      timeFilterKey: timeFilterKey == freezed
          ? _value.timeFilterKey
          : timeFilterKey as String,
      genreFilterKey: genreFilterKey == freezed
          ? _value.genreFilterKey
          : genreFilterKey as String,
      languageFilterKey: languageFilterKey == freezed
          ? _value.languageFilterKey
          : languageFilterKey as String,
      areFiltersApplied: areFiltersApplied == freezed
          ? _value.areFiltersApplied
          : areFiltersApplied as bool,
      timesMap: timesMap == freezed
          ? _value.timesMap
          : timesMap as Map<String, String>,
      genresMap: genresMap == freezed
          ? _value.genresMap
          : genresMap as Map<String, String>,
      languagesMap: languagesMap == freezed
          ? _value.languagesMap
          : languagesMap as Map<String, String>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, DatabaseSuccess>>,
    ));
  }
}

abstract class _$HomeDatabaseStateCopyWith<$Res>
    implements $HomeDatabaseStateCopyWith<$Res> {
  factory _$HomeDatabaseStateCopyWith(
          _HomeDatabaseState value, $Res Function(_HomeDatabaseState) then) =
      __$HomeDatabaseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Series> topFiveSeries,
      List<Series> topSeries,
      List<Series> newSeries,
      Map<String, dynamic> filters,
      String timeFilterKey,
      String genreFilterKey,
      String languageFilterKey,
      bool areFiltersApplied,
      Map<String, String> timesMap,
      Map<String, String> genresMap,
      Map<String, String> languagesMap,
      bool isLoading,
      Option<Either<DatabaseFailure, DatabaseSuccess>>
          databaseFailureOrSuccessOption});
}

class __$HomeDatabaseStateCopyWithImpl<$Res>
    extends _$HomeDatabaseStateCopyWithImpl<$Res>
    implements _$HomeDatabaseStateCopyWith<$Res> {
  __$HomeDatabaseStateCopyWithImpl(
      _HomeDatabaseState _value, $Res Function(_HomeDatabaseState) _then)
      : super(_value, (v) => _then(v as _HomeDatabaseState));

  @override
  _HomeDatabaseState get _value => super._value as _HomeDatabaseState;

  @override
  $Res call({
    Object topFiveSeries = freezed,
    Object topSeries = freezed,
    Object newSeries = freezed,
    Object filters = freezed,
    Object timeFilterKey = freezed,
    Object genreFilterKey = freezed,
    Object languageFilterKey = freezed,
    Object areFiltersApplied = freezed,
    Object timesMap = freezed,
    Object genresMap = freezed,
    Object languagesMap = freezed,
    Object isLoading = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_HomeDatabaseState(
      topFiveSeries: topFiveSeries == freezed
          ? _value.topFiveSeries
          : topFiveSeries as List<Series>,
      topSeries:
          topSeries == freezed ? _value.topSeries : topSeries as List<Series>,
      newSeries:
          newSeries == freezed ? _value.newSeries : newSeries as List<Series>,
      filters:
          filters == freezed ? _value.filters : filters as Map<String, dynamic>,
      timeFilterKey: timeFilterKey == freezed
          ? _value.timeFilterKey
          : timeFilterKey as String,
      genreFilterKey: genreFilterKey == freezed
          ? _value.genreFilterKey
          : genreFilterKey as String,
      languageFilterKey: languageFilterKey == freezed
          ? _value.languageFilterKey
          : languageFilterKey as String,
      areFiltersApplied: areFiltersApplied == freezed
          ? _value.areFiltersApplied
          : areFiltersApplied as bool,
      timesMap: timesMap == freezed
          ? _value.timesMap
          : timesMap as Map<String, String>,
      genresMap: genresMap == freezed
          ? _value.genresMap
          : genresMap as Map<String, String>,
      languagesMap: languagesMap == freezed
          ? _value.languagesMap
          : languagesMap as Map<String, String>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, DatabaseSuccess>>,
    ));
  }
}

class _$_HomeDatabaseState
    with DiagnosticableTreeMixin
    implements _HomeDatabaseState {
  const _$_HomeDatabaseState(
      {@required this.topFiveSeries,
      @required this.topSeries,
      @required this.newSeries,
      @required this.filters,
      @required this.timeFilterKey,
      @required this.genreFilterKey,
      @required this.languageFilterKey,
      @required this.areFiltersApplied,
      @required this.timesMap,
      @required this.genresMap,
      @required this.languagesMap,
      @required this.isLoading,
      @required this.databaseFailureOrSuccessOption})
      : assert(topFiveSeries != null),
        assert(topSeries != null),
        assert(newSeries != null),
        assert(filters != null),
        assert(timeFilterKey != null),
        assert(genreFilterKey != null),
        assert(languageFilterKey != null),
        assert(areFiltersApplied != null),
        assert(timesMap != null),
        assert(genresMap != null),
        assert(languagesMap != null),
        assert(isLoading != null),
        assert(databaseFailureOrSuccessOption != null);

  @override
  final List<Series> topFiveSeries;
  @override
  final List<Series> topSeries;
  @override
  final List<Series> newSeries;
  @override
  final Map<String, dynamic> filters;
  @override
  final String timeFilterKey;
  @override
  final String genreFilterKey;
  @override
  final String languageFilterKey;
  @override
  final bool areFiltersApplied;
  @override
  final Map<String, String> timesMap;
  @override
  final Map<String, String> genresMap;
  @override
  final Map<String, String> languagesMap;
  @override
  final bool isLoading;
  @override
  final Option<Either<DatabaseFailure, DatabaseSuccess>>
      databaseFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeDatabaseState(topFiveSeries: $topFiveSeries, topSeries: $topSeries, newSeries: $newSeries, filters: $filters, timeFilterKey: $timeFilterKey, genreFilterKey: $genreFilterKey, languageFilterKey: $languageFilterKey, areFiltersApplied: $areFiltersApplied, timesMap: $timesMap, genresMap: $genresMap, languagesMap: $languagesMap, isLoading: $isLoading, databaseFailureOrSuccessOption: $databaseFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeDatabaseState'))
      ..add(DiagnosticsProperty('topFiveSeries', topFiveSeries))
      ..add(DiagnosticsProperty('topSeries', topSeries))
      ..add(DiagnosticsProperty('newSeries', newSeries))
      ..add(DiagnosticsProperty('filters', filters))
      ..add(DiagnosticsProperty('timeFilterKey', timeFilterKey))
      ..add(DiagnosticsProperty('genreFilterKey', genreFilterKey))
      ..add(DiagnosticsProperty('languageFilterKey', languageFilterKey))
      ..add(DiagnosticsProperty('areFiltersApplied', areFiltersApplied))
      ..add(DiagnosticsProperty('timesMap', timesMap))
      ..add(DiagnosticsProperty('genresMap', genresMap))
      ..add(DiagnosticsProperty('languagesMap', languagesMap))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty(
          'databaseFailureOrSuccessOption', databaseFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeDatabaseState &&
            (identical(other.topFiveSeries, topFiveSeries) ||
                const DeepCollectionEquality()
                    .equals(other.topFiveSeries, topFiveSeries)) &&
            (identical(other.topSeries, topSeries) ||
                const DeepCollectionEquality()
                    .equals(other.topSeries, topSeries)) &&
            (identical(other.newSeries, newSeries) ||
                const DeepCollectionEquality()
                    .equals(other.newSeries, newSeries)) &&
            (identical(other.filters, filters) ||
                const DeepCollectionEquality()
                    .equals(other.filters, filters)) &&
            (identical(other.timeFilterKey, timeFilterKey) ||
                const DeepCollectionEquality()
                    .equals(other.timeFilterKey, timeFilterKey)) &&
            (identical(other.genreFilterKey, genreFilterKey) ||
                const DeepCollectionEquality()
                    .equals(other.genreFilterKey, genreFilterKey)) &&
            (identical(other.languageFilterKey, languageFilterKey) ||
                const DeepCollectionEquality()
                    .equals(other.languageFilterKey, languageFilterKey)) &&
            (identical(other.areFiltersApplied, areFiltersApplied) ||
                const DeepCollectionEquality()
                    .equals(other.areFiltersApplied, areFiltersApplied)) &&
            (identical(other.timesMap, timesMap) ||
                const DeepCollectionEquality()
                    .equals(other.timesMap, timesMap)) &&
            (identical(other.genresMap, genresMap) ||
                const DeepCollectionEquality()
                    .equals(other.genresMap, genresMap)) &&
            (identical(other.languagesMap, languagesMap) ||
                const DeepCollectionEquality()
                    .equals(other.languagesMap, languagesMap)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.databaseFailureOrSuccessOption,
                    databaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.databaseFailureOrSuccessOption,
                    databaseFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(topFiveSeries) ^
      const DeepCollectionEquality().hash(topSeries) ^
      const DeepCollectionEquality().hash(newSeries) ^
      const DeepCollectionEquality().hash(filters) ^
      const DeepCollectionEquality().hash(timeFilterKey) ^
      const DeepCollectionEquality().hash(genreFilterKey) ^
      const DeepCollectionEquality().hash(languageFilterKey) ^
      const DeepCollectionEquality().hash(areFiltersApplied) ^
      const DeepCollectionEquality().hash(timesMap) ^
      const DeepCollectionEquality().hash(genresMap) ^
      const DeepCollectionEquality().hash(languagesMap) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(databaseFailureOrSuccessOption);

  @override
  _$HomeDatabaseStateCopyWith<_HomeDatabaseState> get copyWith =>
      __$HomeDatabaseStateCopyWithImpl<_HomeDatabaseState>(this, _$identity);
}

abstract class _HomeDatabaseState implements HomeDatabaseState {
  const factory _HomeDatabaseState(
      {@required
          List<Series> topFiveSeries,
      @required
          List<Series> topSeries,
      @required
          List<Series> newSeries,
      @required
          Map<String, dynamic> filters,
      @required
          String timeFilterKey,
      @required
          String genreFilterKey,
      @required
          String languageFilterKey,
      @required
          bool areFiltersApplied,
      @required
          Map<String, String> timesMap,
      @required
          Map<String, String> genresMap,
      @required
          Map<String, String> languagesMap,
      @required
          bool isLoading,
      @required
          Option<Either<DatabaseFailure, DatabaseSuccess>>
              databaseFailureOrSuccessOption}) = _$_HomeDatabaseState;

  @override
  List<Series> get topFiveSeries;
  @override
  List<Series> get topSeries;
  @override
  List<Series> get newSeries;
  @override
  Map<String, dynamic> get filters;
  @override
  String get timeFilterKey;
  @override
  String get genreFilterKey;
  @override
  String get languageFilterKey;
  @override
  bool get areFiltersApplied;
  @override
  Map<String, String> get timesMap;
  @override
  Map<String, String> get genresMap;
  @override
  Map<String, String> get languagesMap;
  @override
  bool get isLoading;
  @override
  Option<Either<DatabaseFailure, DatabaseSuccess>>
      get databaseFailureOrSuccessOption;
  @override
  _$HomeDatabaseStateCopyWith<_HomeDatabaseState> get copyWith;
}
