// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'account_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AccountDatabaseEventTearOff {
  const _$AccountDatabaseEventTearOff();

// ignore: unused_element
  AccountPageLaunchedEVT accountPageLaunchedEVT(
      {@required BuildContext context}) {
    return AccountPageLaunchedEVT(
      context: context,
    );
  }

// ignore: unused_element
  ChapterTileHeldEVT chapterTileHeldEVT(String seriesUid) {
    return ChapterTileHeldEVT(
      seriesUid,
    );
  }

// ignore: unused_element
  LoadMoreChaptersMinifiedEVT loadMoreChaptersMinifiedEVT() {
    return const LoadMoreChaptersMinifiedEVT();
  }

// ignore: unused_element
  LoadMoreSeriesMinifiedEVT loadMoreSeriesMinifiedEVT() {
    return const LoadMoreSeriesMinifiedEVT();
  }

// ignore: unused_element
  SeriesMinifiedLoadedEVT seriesMinifiedLoadedEVT() {
    return const SeriesMinifiedLoadedEVT();
  }

// ignore: unused_element
  SessionFetchedEVT sessionFetchedEVT(Session session) {
    return SessionFetchedEVT(
      session,
    );
  }
}

// ignore: unused_element
const $AccountDatabaseEvent = _$AccountDatabaseEventTearOff();

mixin _$AccountDatabaseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunchedEVT(BuildContext context),
    @required Result chapterTileHeldEVT(String seriesUid),
    @required Result loadMoreChaptersMinifiedEVT(),
    @required Result loadMoreSeriesMinifiedEVT(),
    @required Result seriesMinifiedLoadedEVT(),
    @required Result sessionFetchedEVT(Session session),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunchedEVT(BuildContext context),
    Result chapterTileHeldEVT(String seriesUid),
    Result loadMoreChaptersMinifiedEVT(),
    Result loadMoreSeriesMinifiedEVT(),
    Result seriesMinifiedLoadedEVT(),
    Result sessionFetchedEVT(Session session),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    @required Result chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        Result loadMoreChaptersMinifiedEVT(LoadMoreChaptersMinifiedEVT value),
    @required Result loadMoreSeriesMinifiedEVT(LoadMoreSeriesMinifiedEVT value),
    @required Result seriesMinifiedLoadedEVT(SeriesMinifiedLoadedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    Result chapterTileHeldEVT(ChapterTileHeldEVT value),
    Result loadMoreChaptersMinifiedEVT(LoadMoreChaptersMinifiedEVT value),
    Result loadMoreSeriesMinifiedEVT(LoadMoreSeriesMinifiedEVT value),
    Result seriesMinifiedLoadedEVT(SeriesMinifiedLoadedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result orElse(),
  });
}

abstract class $AccountDatabaseEventCopyWith<$Res> {
  factory $AccountDatabaseEventCopyWith(AccountDatabaseEvent value,
          $Res Function(AccountDatabaseEvent) then) =
      _$AccountDatabaseEventCopyWithImpl<$Res>;
}

class _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $AccountDatabaseEventCopyWith<$Res> {
  _$AccountDatabaseEventCopyWithImpl(this._value, this._then);

  final AccountDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(AccountDatabaseEvent) _then;
}

abstract class $AccountPageLaunchedEVTCopyWith<$Res> {
  factory $AccountPageLaunchedEVTCopyWith(AccountPageLaunchedEVT value,
          $Res Function(AccountPageLaunchedEVT) then) =
      _$AccountPageLaunchedEVTCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

class _$AccountPageLaunchedEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $AccountPageLaunchedEVTCopyWith<$Res> {
  _$AccountPageLaunchedEVTCopyWithImpl(AccountPageLaunchedEVT _value,
      $Res Function(AccountPageLaunchedEVT) _then)
      : super(_value, (v) => _then(v as AccountPageLaunchedEVT));

  @override
  AccountPageLaunchedEVT get _value => super._value as AccountPageLaunchedEVT;

  @override
  $Res call({
    Object context = freezed,
  }) {
    return _then(AccountPageLaunchedEVT(
      context: context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

class _$AccountPageLaunchedEVT
    with DiagnosticableTreeMixin
    implements AccountPageLaunchedEVT {
  const _$AccountPageLaunchedEVT({@required this.context})
      : assert(context != null);

  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.accountPageLaunchedEVT(context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.accountPageLaunchedEVT'))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountPageLaunchedEVT &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(context);

  @override
  $AccountPageLaunchedEVTCopyWith<AccountPageLaunchedEVT> get copyWith =>
      _$AccountPageLaunchedEVTCopyWithImpl<AccountPageLaunchedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunchedEVT(BuildContext context),
    @required Result chapterTileHeldEVT(String seriesUid),
    @required Result loadMoreChaptersMinifiedEVT(),
    @required Result loadMoreSeriesMinifiedEVT(),
    @required Result seriesMinifiedLoadedEVT(),
    @required Result sessionFetchedEVT(Session session),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(loadMoreChaptersMinifiedEVT != null);
    assert(loadMoreSeriesMinifiedEVT != null);
    assert(seriesMinifiedLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return accountPageLaunchedEVT(context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunchedEVT(BuildContext context),
    Result chapterTileHeldEVT(String seriesUid),
    Result loadMoreChaptersMinifiedEVT(),
    Result loadMoreSeriesMinifiedEVT(),
    Result seriesMinifiedLoadedEVT(),
    Result sessionFetchedEVT(Session session),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountPageLaunchedEVT != null) {
      return accountPageLaunchedEVT(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    @required Result chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        Result loadMoreChaptersMinifiedEVT(LoadMoreChaptersMinifiedEVT value),
    @required Result loadMoreSeriesMinifiedEVT(LoadMoreSeriesMinifiedEVT value),
    @required Result seriesMinifiedLoadedEVT(SeriesMinifiedLoadedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(loadMoreChaptersMinifiedEVT != null);
    assert(loadMoreSeriesMinifiedEVT != null);
    assert(seriesMinifiedLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return accountPageLaunchedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    Result chapterTileHeldEVT(ChapterTileHeldEVT value),
    Result loadMoreChaptersMinifiedEVT(LoadMoreChaptersMinifiedEVT value),
    Result loadMoreSeriesMinifiedEVT(LoadMoreSeriesMinifiedEVT value),
    Result seriesMinifiedLoadedEVT(SeriesMinifiedLoadedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountPageLaunchedEVT != null) {
      return accountPageLaunchedEVT(this);
    }
    return orElse();
  }
}

abstract class AccountPageLaunchedEVT implements AccountDatabaseEvent {
  const factory AccountPageLaunchedEVT({@required BuildContext context}) =
      _$AccountPageLaunchedEVT;

  BuildContext get context;
  $AccountPageLaunchedEVTCopyWith<AccountPageLaunchedEVT> get copyWith;
}

abstract class $ChapterTileHeldEVTCopyWith<$Res> {
  factory $ChapterTileHeldEVTCopyWith(
          ChapterTileHeldEVT value, $Res Function(ChapterTileHeldEVT) then) =
      _$ChapterTileHeldEVTCopyWithImpl<$Res>;
  $Res call({String seriesUid});
}

class _$ChapterTileHeldEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $ChapterTileHeldEVTCopyWith<$Res> {
  _$ChapterTileHeldEVTCopyWithImpl(
      ChapterTileHeldEVT _value, $Res Function(ChapterTileHeldEVT) _then)
      : super(_value, (v) => _then(v as ChapterTileHeldEVT));

  @override
  ChapterTileHeldEVT get _value => super._value as ChapterTileHeldEVT;

  @override
  $Res call({
    Object seriesUid = freezed,
  }) {
    return _then(ChapterTileHeldEVT(
      seriesUid == freezed ? _value.seriesUid : seriesUid as String,
    ));
  }
}

class _$ChapterTileHeldEVT
    with DiagnosticableTreeMixin
    implements ChapterTileHeldEVT {
  const _$ChapterTileHeldEVT(this.seriesUid) : assert(seriesUid != null);

  @override
  final String seriesUid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.chapterTileHeldEVT(seriesUid: $seriesUid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.chapterTileHeldEVT'))
      ..add(DiagnosticsProperty('seriesUid', seriesUid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterTileHeldEVT &&
            (identical(other.seriesUid, seriesUid) ||
                const DeepCollectionEquality()
                    .equals(other.seriesUid, seriesUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seriesUid);

  @override
  $ChapterTileHeldEVTCopyWith<ChapterTileHeldEVT> get copyWith =>
      _$ChapterTileHeldEVTCopyWithImpl<ChapterTileHeldEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunchedEVT(BuildContext context),
    @required Result chapterTileHeldEVT(String seriesUid),
    @required Result loadMoreChaptersMinifiedEVT(),
    @required Result loadMoreSeriesMinifiedEVT(),
    @required Result seriesMinifiedLoadedEVT(),
    @required Result sessionFetchedEVT(Session session),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(loadMoreChaptersMinifiedEVT != null);
    assert(loadMoreSeriesMinifiedEVT != null);
    assert(seriesMinifiedLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return chapterTileHeldEVT(seriesUid);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunchedEVT(BuildContext context),
    Result chapterTileHeldEVT(String seriesUid),
    Result loadMoreChaptersMinifiedEVT(),
    Result loadMoreSeriesMinifiedEVT(),
    Result seriesMinifiedLoadedEVT(),
    Result sessionFetchedEVT(Session session),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (chapterTileHeldEVT != null) {
      return chapterTileHeldEVT(seriesUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    @required Result chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        Result loadMoreChaptersMinifiedEVT(LoadMoreChaptersMinifiedEVT value),
    @required Result loadMoreSeriesMinifiedEVT(LoadMoreSeriesMinifiedEVT value),
    @required Result seriesMinifiedLoadedEVT(SeriesMinifiedLoadedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(loadMoreChaptersMinifiedEVT != null);
    assert(loadMoreSeriesMinifiedEVT != null);
    assert(seriesMinifiedLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return chapterTileHeldEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    Result chapterTileHeldEVT(ChapterTileHeldEVT value),
    Result loadMoreChaptersMinifiedEVT(LoadMoreChaptersMinifiedEVT value),
    Result loadMoreSeriesMinifiedEVT(LoadMoreSeriesMinifiedEVT value),
    Result seriesMinifiedLoadedEVT(SeriesMinifiedLoadedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (chapterTileHeldEVT != null) {
      return chapterTileHeldEVT(this);
    }
    return orElse();
  }
}

abstract class ChapterTileHeldEVT implements AccountDatabaseEvent {
  const factory ChapterTileHeldEVT(String seriesUid) = _$ChapterTileHeldEVT;

  String get seriesUid;
  $ChapterTileHeldEVTCopyWith<ChapterTileHeldEVT> get copyWith;
}

abstract class $LoadMoreChaptersMinifiedEVTCopyWith<$Res> {
  factory $LoadMoreChaptersMinifiedEVTCopyWith(
          LoadMoreChaptersMinifiedEVT value,
          $Res Function(LoadMoreChaptersMinifiedEVT) then) =
      _$LoadMoreChaptersMinifiedEVTCopyWithImpl<$Res>;
}

class _$LoadMoreChaptersMinifiedEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $LoadMoreChaptersMinifiedEVTCopyWith<$Res> {
  _$LoadMoreChaptersMinifiedEVTCopyWithImpl(LoadMoreChaptersMinifiedEVT _value,
      $Res Function(LoadMoreChaptersMinifiedEVT) _then)
      : super(_value, (v) => _then(v as LoadMoreChaptersMinifiedEVT));

  @override
  LoadMoreChaptersMinifiedEVT get _value =>
      super._value as LoadMoreChaptersMinifiedEVT;
}

class _$LoadMoreChaptersMinifiedEVT
    with DiagnosticableTreeMixin
    implements LoadMoreChaptersMinifiedEVT {
  const _$LoadMoreChaptersMinifiedEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.loadMoreChaptersMinifiedEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.loadMoreChaptersMinifiedEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadMoreChaptersMinifiedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunchedEVT(BuildContext context),
    @required Result chapterTileHeldEVT(String seriesUid),
    @required Result loadMoreChaptersMinifiedEVT(),
    @required Result loadMoreSeriesMinifiedEVT(),
    @required Result seriesMinifiedLoadedEVT(),
    @required Result sessionFetchedEVT(Session session),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(loadMoreChaptersMinifiedEVT != null);
    assert(loadMoreSeriesMinifiedEVT != null);
    assert(seriesMinifiedLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return loadMoreChaptersMinifiedEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunchedEVT(BuildContext context),
    Result chapterTileHeldEVT(String seriesUid),
    Result loadMoreChaptersMinifiedEVT(),
    Result loadMoreSeriesMinifiedEVT(),
    Result seriesMinifiedLoadedEVT(),
    Result sessionFetchedEVT(Session session),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadMoreChaptersMinifiedEVT != null) {
      return loadMoreChaptersMinifiedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    @required Result chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        Result loadMoreChaptersMinifiedEVT(LoadMoreChaptersMinifiedEVT value),
    @required Result loadMoreSeriesMinifiedEVT(LoadMoreSeriesMinifiedEVT value),
    @required Result seriesMinifiedLoadedEVT(SeriesMinifiedLoadedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(loadMoreChaptersMinifiedEVT != null);
    assert(loadMoreSeriesMinifiedEVT != null);
    assert(seriesMinifiedLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return loadMoreChaptersMinifiedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    Result chapterTileHeldEVT(ChapterTileHeldEVT value),
    Result loadMoreChaptersMinifiedEVT(LoadMoreChaptersMinifiedEVT value),
    Result loadMoreSeriesMinifiedEVT(LoadMoreSeriesMinifiedEVT value),
    Result seriesMinifiedLoadedEVT(SeriesMinifiedLoadedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadMoreChaptersMinifiedEVT != null) {
      return loadMoreChaptersMinifiedEVT(this);
    }
    return orElse();
  }
}

abstract class LoadMoreChaptersMinifiedEVT implements AccountDatabaseEvent {
  const factory LoadMoreChaptersMinifiedEVT() = _$LoadMoreChaptersMinifiedEVT;
}

abstract class $LoadMoreSeriesMinifiedEVTCopyWith<$Res> {
  factory $LoadMoreSeriesMinifiedEVTCopyWith(LoadMoreSeriesMinifiedEVT value,
          $Res Function(LoadMoreSeriesMinifiedEVT) then) =
      _$LoadMoreSeriesMinifiedEVTCopyWithImpl<$Res>;
}

class _$LoadMoreSeriesMinifiedEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $LoadMoreSeriesMinifiedEVTCopyWith<$Res> {
  _$LoadMoreSeriesMinifiedEVTCopyWithImpl(LoadMoreSeriesMinifiedEVT _value,
      $Res Function(LoadMoreSeriesMinifiedEVT) _then)
      : super(_value, (v) => _then(v as LoadMoreSeriesMinifiedEVT));

  @override
  LoadMoreSeriesMinifiedEVT get _value =>
      super._value as LoadMoreSeriesMinifiedEVT;
}

class _$LoadMoreSeriesMinifiedEVT
    with DiagnosticableTreeMixin
    implements LoadMoreSeriesMinifiedEVT {
  const _$LoadMoreSeriesMinifiedEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.loadMoreSeriesMinifiedEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.loadMoreSeriesMinifiedEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadMoreSeriesMinifiedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunchedEVT(BuildContext context),
    @required Result chapterTileHeldEVT(String seriesUid),
    @required Result loadMoreChaptersMinifiedEVT(),
    @required Result loadMoreSeriesMinifiedEVT(),
    @required Result seriesMinifiedLoadedEVT(),
    @required Result sessionFetchedEVT(Session session),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(loadMoreChaptersMinifiedEVT != null);
    assert(loadMoreSeriesMinifiedEVT != null);
    assert(seriesMinifiedLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return loadMoreSeriesMinifiedEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunchedEVT(BuildContext context),
    Result chapterTileHeldEVT(String seriesUid),
    Result loadMoreChaptersMinifiedEVT(),
    Result loadMoreSeriesMinifiedEVT(),
    Result seriesMinifiedLoadedEVT(),
    Result sessionFetchedEVT(Session session),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadMoreSeriesMinifiedEVT != null) {
      return loadMoreSeriesMinifiedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    @required Result chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        Result loadMoreChaptersMinifiedEVT(LoadMoreChaptersMinifiedEVT value),
    @required Result loadMoreSeriesMinifiedEVT(LoadMoreSeriesMinifiedEVT value),
    @required Result seriesMinifiedLoadedEVT(SeriesMinifiedLoadedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(loadMoreChaptersMinifiedEVT != null);
    assert(loadMoreSeriesMinifiedEVT != null);
    assert(seriesMinifiedLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return loadMoreSeriesMinifiedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    Result chapterTileHeldEVT(ChapterTileHeldEVT value),
    Result loadMoreChaptersMinifiedEVT(LoadMoreChaptersMinifiedEVT value),
    Result loadMoreSeriesMinifiedEVT(LoadMoreSeriesMinifiedEVT value),
    Result seriesMinifiedLoadedEVT(SeriesMinifiedLoadedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadMoreSeriesMinifiedEVT != null) {
      return loadMoreSeriesMinifiedEVT(this);
    }
    return orElse();
  }
}

abstract class LoadMoreSeriesMinifiedEVT implements AccountDatabaseEvent {
  const factory LoadMoreSeriesMinifiedEVT() = _$LoadMoreSeriesMinifiedEVT;
}

abstract class $SeriesMinifiedLoadedEVTCopyWith<$Res> {
  factory $SeriesMinifiedLoadedEVTCopyWith(SeriesMinifiedLoadedEVT value,
          $Res Function(SeriesMinifiedLoadedEVT) then) =
      _$SeriesMinifiedLoadedEVTCopyWithImpl<$Res>;
}

class _$SeriesMinifiedLoadedEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $SeriesMinifiedLoadedEVTCopyWith<$Res> {
  _$SeriesMinifiedLoadedEVTCopyWithImpl(SeriesMinifiedLoadedEVT _value,
      $Res Function(SeriesMinifiedLoadedEVT) _then)
      : super(_value, (v) => _then(v as SeriesMinifiedLoadedEVT));

  @override
  SeriesMinifiedLoadedEVT get _value => super._value as SeriesMinifiedLoadedEVT;
}

class _$SeriesMinifiedLoadedEVT
    with DiagnosticableTreeMixin
    implements SeriesMinifiedLoadedEVT {
  const _$SeriesMinifiedLoadedEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.seriesMinifiedLoadedEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.seriesMinifiedLoadedEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SeriesMinifiedLoadedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunchedEVT(BuildContext context),
    @required Result chapterTileHeldEVT(String seriesUid),
    @required Result loadMoreChaptersMinifiedEVT(),
    @required Result loadMoreSeriesMinifiedEVT(),
    @required Result seriesMinifiedLoadedEVT(),
    @required Result sessionFetchedEVT(Session session),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(loadMoreChaptersMinifiedEVT != null);
    assert(loadMoreSeriesMinifiedEVT != null);
    assert(seriesMinifiedLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return seriesMinifiedLoadedEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunchedEVT(BuildContext context),
    Result chapterTileHeldEVT(String seriesUid),
    Result loadMoreChaptersMinifiedEVT(),
    Result loadMoreSeriesMinifiedEVT(),
    Result seriesMinifiedLoadedEVT(),
    Result sessionFetchedEVT(Session session),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesMinifiedLoadedEVT != null) {
      return seriesMinifiedLoadedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    @required Result chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        Result loadMoreChaptersMinifiedEVT(LoadMoreChaptersMinifiedEVT value),
    @required Result loadMoreSeriesMinifiedEVT(LoadMoreSeriesMinifiedEVT value),
    @required Result seriesMinifiedLoadedEVT(SeriesMinifiedLoadedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(loadMoreChaptersMinifiedEVT != null);
    assert(loadMoreSeriesMinifiedEVT != null);
    assert(seriesMinifiedLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return seriesMinifiedLoadedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    Result chapterTileHeldEVT(ChapterTileHeldEVT value),
    Result loadMoreChaptersMinifiedEVT(LoadMoreChaptersMinifiedEVT value),
    Result loadMoreSeriesMinifiedEVT(LoadMoreSeriesMinifiedEVT value),
    Result seriesMinifiedLoadedEVT(SeriesMinifiedLoadedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesMinifiedLoadedEVT != null) {
      return seriesMinifiedLoadedEVT(this);
    }
    return orElse();
  }
}

abstract class SeriesMinifiedLoadedEVT implements AccountDatabaseEvent {
  const factory SeriesMinifiedLoadedEVT() = _$SeriesMinifiedLoadedEVT;
}

abstract class $SessionFetchedEVTCopyWith<$Res> {
  factory $SessionFetchedEVTCopyWith(
          SessionFetchedEVT value, $Res Function(SessionFetchedEVT) then) =
      _$SessionFetchedEVTCopyWithImpl<$Res>;
  $Res call({Session session});
}

class _$SessionFetchedEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $SessionFetchedEVTCopyWith<$Res> {
  _$SessionFetchedEVTCopyWithImpl(
      SessionFetchedEVT _value, $Res Function(SessionFetchedEVT) _then)
      : super(_value, (v) => _then(v as SessionFetchedEVT));

  @override
  SessionFetchedEVT get _value => super._value as SessionFetchedEVT;

  @override
  $Res call({
    Object session = freezed,
  }) {
    return _then(SessionFetchedEVT(
      session == freezed ? _value.session : session as Session,
    ));
  }
}

class _$SessionFetchedEVT
    with DiagnosticableTreeMixin
    implements SessionFetchedEVT {
  const _$SessionFetchedEVT(this.session) : assert(session != null);

  @override
  final Session session;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.sessionFetchedEVT(session: $session)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AccountDatabaseEvent.sessionFetchedEVT'))
      ..add(DiagnosticsProperty('session', session));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SessionFetchedEVT &&
            (identical(other.session, session) ||
                const DeepCollectionEquality().equals(other.session, session)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(session);

  @override
  $SessionFetchedEVTCopyWith<SessionFetchedEVT> get copyWith =>
      _$SessionFetchedEVTCopyWithImpl<SessionFetchedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunchedEVT(BuildContext context),
    @required Result chapterTileHeldEVT(String seriesUid),
    @required Result loadMoreChaptersMinifiedEVT(),
    @required Result loadMoreSeriesMinifiedEVT(),
    @required Result seriesMinifiedLoadedEVT(),
    @required Result sessionFetchedEVT(Session session),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(loadMoreChaptersMinifiedEVT != null);
    assert(loadMoreSeriesMinifiedEVT != null);
    assert(seriesMinifiedLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return sessionFetchedEVT(session);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunchedEVT(BuildContext context),
    Result chapterTileHeldEVT(String seriesUid),
    Result loadMoreChaptersMinifiedEVT(),
    Result loadMoreSeriesMinifiedEVT(),
    Result seriesMinifiedLoadedEVT(),
    Result sessionFetchedEVT(Session session),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sessionFetchedEVT != null) {
      return sessionFetchedEVT(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    @required Result chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        Result loadMoreChaptersMinifiedEVT(LoadMoreChaptersMinifiedEVT value),
    @required Result loadMoreSeriesMinifiedEVT(LoadMoreSeriesMinifiedEVT value),
    @required Result seriesMinifiedLoadedEVT(SeriesMinifiedLoadedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(loadMoreChaptersMinifiedEVT != null);
    assert(loadMoreSeriesMinifiedEVT != null);
    assert(seriesMinifiedLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return sessionFetchedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    Result chapterTileHeldEVT(ChapterTileHeldEVT value),
    Result loadMoreChaptersMinifiedEVT(LoadMoreChaptersMinifiedEVT value),
    Result loadMoreSeriesMinifiedEVT(LoadMoreSeriesMinifiedEVT value),
    Result seriesMinifiedLoadedEVT(SeriesMinifiedLoadedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sessionFetchedEVT != null) {
      return sessionFetchedEVT(this);
    }
    return orElse();
  }
}

abstract class SessionFetchedEVT implements AccountDatabaseEvent {
  const factory SessionFetchedEVT(Session session) = _$SessionFetchedEVT;

  Session get session;
  $SessionFetchedEVTCopyWith<SessionFetchedEVT> get copyWith;
}

class _$AccountDatabaseStateTearOff {
  const _$AccountDatabaseStateTearOff();

// ignore: unused_element
  _AccountDatabaseState call(
      {@required
          bool isFetching,
      @required
          List<ChapterMinified> chaptersMinified,
      @required
          List<SeriesMinified> seriesMinified,
      @required
          Map<String, String> copyrights,
      @required
          Map<String, String> genres,
      @required
          Map<String, String> languages,
      @required
          Option<Either<DatabaseFailure, DatabaseSuccess>>
              databaseFailureOrSuccessOption,
      @required
          Session session}) {
    return _AccountDatabaseState(
      isFetching: isFetching,
      chaptersMinified: chaptersMinified,
      seriesMinified: seriesMinified,
      copyrights: copyrights,
      genres: genres,
      languages: languages,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption,
      session: session,
    );
  }
}

// ignore: unused_element
const $AccountDatabaseState = _$AccountDatabaseStateTearOff();

mixin _$AccountDatabaseState {
  bool get isFetching;
  List<ChapterMinified> get chaptersMinified;
  List<SeriesMinified> get seriesMinified;
  Map<String, String> get copyrights;
  Map<String, String> get genres;
  Map<String, String> get languages;
  Option<Either<DatabaseFailure, DatabaseSuccess>>
      get databaseFailureOrSuccessOption;
  Session get session;

  $AccountDatabaseStateCopyWith<AccountDatabaseState> get copyWith;
}

abstract class $AccountDatabaseStateCopyWith<$Res> {
  factory $AccountDatabaseStateCopyWith(AccountDatabaseState value,
          $Res Function(AccountDatabaseState) then) =
      _$AccountDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {bool isFetching,
      List<ChapterMinified> chaptersMinified,
      List<SeriesMinified> seriesMinified,
      Map<String, String> copyrights,
      Map<String, String> genres,
      Map<String, String> languages,
      Option<Either<DatabaseFailure, DatabaseSuccess>>
          databaseFailureOrSuccessOption,
      Session session});
}

class _$AccountDatabaseStateCopyWithImpl<$Res>
    implements $AccountDatabaseStateCopyWith<$Res> {
  _$AccountDatabaseStateCopyWithImpl(this._value, this._then);

  final AccountDatabaseState _value;
  // ignore: unused_field
  final $Res Function(AccountDatabaseState) _then;

  @override
  $Res call({
    Object isFetching = freezed,
    Object chaptersMinified = freezed,
    Object seriesMinified = freezed,
    Object copyrights = freezed,
    Object genres = freezed,
    Object languages = freezed,
    Object databaseFailureOrSuccessOption = freezed,
    Object session = freezed,
  }) {
    return _then(_value.copyWith(
      isFetching:
          isFetching == freezed ? _value.isFetching : isFetching as bool,
      chaptersMinified: chaptersMinified == freezed
          ? _value.chaptersMinified
          : chaptersMinified as List<ChapterMinified>,
      seriesMinified: seriesMinified == freezed
          ? _value.seriesMinified
          : seriesMinified as List<SeriesMinified>,
      copyrights: copyrights == freezed
          ? _value.copyrights
          : copyrights as Map<String, String>,
      genres: genres == freezed ? _value.genres : genres as Map<String, String>,
      languages: languages == freezed
          ? _value.languages
          : languages as Map<String, String>,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, DatabaseSuccess>>,
      session: session == freezed ? _value.session : session as Session,
    ));
  }
}

abstract class _$AccountDatabaseStateCopyWith<$Res>
    implements $AccountDatabaseStateCopyWith<$Res> {
  factory _$AccountDatabaseStateCopyWith(_AccountDatabaseState value,
          $Res Function(_AccountDatabaseState) then) =
      __$AccountDatabaseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isFetching,
      List<ChapterMinified> chaptersMinified,
      List<SeriesMinified> seriesMinified,
      Map<String, String> copyrights,
      Map<String, String> genres,
      Map<String, String> languages,
      Option<Either<DatabaseFailure, DatabaseSuccess>>
          databaseFailureOrSuccessOption,
      Session session});
}

class __$AccountDatabaseStateCopyWithImpl<$Res>
    extends _$AccountDatabaseStateCopyWithImpl<$Res>
    implements _$AccountDatabaseStateCopyWith<$Res> {
  __$AccountDatabaseStateCopyWithImpl(
      _AccountDatabaseState _value, $Res Function(_AccountDatabaseState) _then)
      : super(_value, (v) => _then(v as _AccountDatabaseState));

  @override
  _AccountDatabaseState get _value => super._value as _AccountDatabaseState;

  @override
  $Res call({
    Object isFetching = freezed,
    Object chaptersMinified = freezed,
    Object seriesMinified = freezed,
    Object copyrights = freezed,
    Object genres = freezed,
    Object languages = freezed,
    Object databaseFailureOrSuccessOption = freezed,
    Object session = freezed,
  }) {
    return _then(_AccountDatabaseState(
      isFetching:
          isFetching == freezed ? _value.isFetching : isFetching as bool,
      chaptersMinified: chaptersMinified == freezed
          ? _value.chaptersMinified
          : chaptersMinified as List<ChapterMinified>,
      seriesMinified: seriesMinified == freezed
          ? _value.seriesMinified
          : seriesMinified as List<SeriesMinified>,
      copyrights: copyrights == freezed
          ? _value.copyrights
          : copyrights as Map<String, String>,
      genres: genres == freezed ? _value.genres : genres as Map<String, String>,
      languages: languages == freezed
          ? _value.languages
          : languages as Map<String, String>,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, DatabaseSuccess>>,
      session: session == freezed ? _value.session : session as Session,
    ));
  }
}

class _$_AccountDatabaseState
    with DiagnosticableTreeMixin
    implements _AccountDatabaseState {
  const _$_AccountDatabaseState(
      {@required this.isFetching,
      @required this.chaptersMinified,
      @required this.seriesMinified,
      @required this.copyrights,
      @required this.genres,
      @required this.languages,
      @required this.databaseFailureOrSuccessOption,
      @required this.session})
      : assert(isFetching != null),
        assert(chaptersMinified != null),
        assert(seriesMinified != null),
        assert(copyrights != null),
        assert(genres != null),
        assert(languages != null),
        assert(databaseFailureOrSuccessOption != null),
        assert(session != null);

  @override
  final bool isFetching;
  @override
  final List<ChapterMinified> chaptersMinified;
  @override
  final List<SeriesMinified> seriesMinified;
  @override
  final Map<String, String> copyrights;
  @override
  final Map<String, String> genres;
  @override
  final Map<String, String> languages;
  @override
  final Option<Either<DatabaseFailure, DatabaseSuccess>>
      databaseFailureOrSuccessOption;
  @override
  final Session session;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseState(isFetching: $isFetching, chaptersMinified: $chaptersMinified, seriesMinified: $seriesMinified, copyrights: $copyrights, genres: $genres, languages: $languages, databaseFailureOrSuccessOption: $databaseFailureOrSuccessOption, session: $session)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountDatabaseState'))
      ..add(DiagnosticsProperty('isFetching', isFetching))
      ..add(DiagnosticsProperty('chaptersMinified', chaptersMinified))
      ..add(DiagnosticsProperty('seriesMinified', seriesMinified))
      ..add(DiagnosticsProperty('copyrights', copyrights))
      ..add(DiagnosticsProperty('genres', genres))
      ..add(DiagnosticsProperty('languages', languages))
      ..add(DiagnosticsProperty(
          'databaseFailureOrSuccessOption', databaseFailureOrSuccessOption))
      ..add(DiagnosticsProperty('session', session));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountDatabaseState &&
            (identical(other.isFetching, isFetching) ||
                const DeepCollectionEquality()
                    .equals(other.isFetching, isFetching)) &&
            (identical(other.chaptersMinified, chaptersMinified) ||
                const DeepCollectionEquality()
                    .equals(other.chaptersMinified, chaptersMinified)) &&
            (identical(other.seriesMinified, seriesMinified) ||
                const DeepCollectionEquality()
                    .equals(other.seriesMinified, seriesMinified)) &&
            (identical(other.copyrights, copyrights) ||
                const DeepCollectionEquality()
                    .equals(other.copyrights, copyrights)) &&
            (identical(other.genres, genres) ||
                const DeepCollectionEquality().equals(other.genres, genres)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.databaseFailureOrSuccessOption,
                    databaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.databaseFailureOrSuccessOption,
                    databaseFailureOrSuccessOption)) &&
            (identical(other.session, session) ||
                const DeepCollectionEquality().equals(other.session, session)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isFetching) ^
      const DeepCollectionEquality().hash(chaptersMinified) ^
      const DeepCollectionEquality().hash(seriesMinified) ^
      const DeepCollectionEquality().hash(copyrights) ^
      const DeepCollectionEquality().hash(genres) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(databaseFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(session);

  @override
  _$AccountDatabaseStateCopyWith<_AccountDatabaseState> get copyWith =>
      __$AccountDatabaseStateCopyWithImpl<_AccountDatabaseState>(
          this, _$identity);
}

abstract class _AccountDatabaseState implements AccountDatabaseState {
  const factory _AccountDatabaseState(
      {@required
          bool isFetching,
      @required
          List<ChapterMinified> chaptersMinified,
      @required
          List<SeriesMinified> seriesMinified,
      @required
          Map<String, String> copyrights,
      @required
          Map<String, String> genres,
      @required
          Map<String, String> languages,
      @required
          Option<Either<DatabaseFailure, DatabaseSuccess>>
              databaseFailureOrSuccessOption,
      @required
          Session session}) = _$_AccountDatabaseState;

  @override
  bool get isFetching;
  @override
  List<ChapterMinified> get chaptersMinified;
  @override
  List<SeriesMinified> get seriesMinified;
  @override
  Map<String, String> get copyrights;
  @override
  Map<String, String> get genres;
  @override
  Map<String, String> get languages;
  @override
  Option<Either<DatabaseFailure, DatabaseSuccess>>
      get databaseFailureOrSuccessOption;
  @override
  Session get session;
  @override
  _$AccountDatabaseStateCopyWith<_AccountDatabaseState> get copyWith;
}
