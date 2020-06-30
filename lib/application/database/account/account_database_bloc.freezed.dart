// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'account_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AccountDatabaseEventTearOff {
  const _$AccountDatabaseEventTearOff();

  AccountPageLaunchedEVT accountPageLaunchedEVT(
      {@required BuildContext context}) {
    return AccountPageLaunchedEVT(
      context: context,
    );
  }

  ChaptersLoadedEVT chaptersLoadedEVT() {
    return const ChaptersLoadedEVT();
  }

  LoadMoreChaptersEVT loadMoreChaptersEVT() {
    return const LoadMoreChaptersEVT();
  }

  LoadMoreSeriesEVT loadMoreSeriesEVT() {
    return const LoadMoreSeriesEVT();
  }

  SeriesLoadedEVT seriesLoadedEVT() {
    return const SeriesLoadedEVT();
  }

  SeriesAsMapLoadedEVT seriesAsMapLoadedEVT() {
    return const SeriesAsMapLoadedEVT();
  }

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
    @required Result chaptersLoadedEVT(),
    @required Result loadMoreChaptersEVT(),
    @required Result loadMoreSeriesEVT(),
    @required Result seriesLoadedEVT(),
    @required Result seriesAsMapLoadedEVT(),
    @required Result sessionFetchedEVT(Session session),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunchedEVT(BuildContext context),
    Result chaptersLoadedEVT(),
    Result loadMoreChaptersEVT(),
    Result loadMoreSeriesEVT(),
    Result seriesLoadedEVT(),
    Result seriesAsMapLoadedEVT(),
    Result sessionFetchedEVT(Session session),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    @required Result chaptersLoadedEVT(ChaptersLoadedEVT value),
    @required Result loadMoreChaptersEVT(LoadMoreChaptersEVT value),
    @required Result loadMoreSeriesEVT(LoadMoreSeriesEVT value),
    @required Result seriesLoadedEVT(SeriesLoadedEVT value),
    @required Result seriesAsMapLoadedEVT(SeriesAsMapLoadedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    Result chaptersLoadedEVT(ChaptersLoadedEVT value),
    Result loadMoreChaptersEVT(LoadMoreChaptersEVT value),
    Result loadMoreSeriesEVT(LoadMoreSeriesEVT value),
    Result seriesLoadedEVT(SeriesLoadedEVT value),
    Result seriesAsMapLoadedEVT(SeriesAsMapLoadedEVT value),
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
    @required Result chaptersLoadedEVT(),
    @required Result loadMoreChaptersEVT(),
    @required Result loadMoreSeriesEVT(),
    @required Result seriesLoadedEVT(),
    @required Result seriesAsMapLoadedEVT(),
    @required Result sessionFetchedEVT(Session session),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chaptersLoadedEVT != null);
    assert(loadMoreChaptersEVT != null);
    assert(loadMoreSeriesEVT != null);
    assert(seriesLoadedEVT != null);
    assert(seriesAsMapLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return accountPageLaunchedEVT(context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunchedEVT(BuildContext context),
    Result chaptersLoadedEVT(),
    Result loadMoreChaptersEVT(),
    Result loadMoreSeriesEVT(),
    Result seriesLoadedEVT(),
    Result seriesAsMapLoadedEVT(),
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
    @required Result chaptersLoadedEVT(ChaptersLoadedEVT value),
    @required Result loadMoreChaptersEVT(LoadMoreChaptersEVT value),
    @required Result loadMoreSeriesEVT(LoadMoreSeriesEVT value),
    @required Result seriesLoadedEVT(SeriesLoadedEVT value),
    @required Result seriesAsMapLoadedEVT(SeriesAsMapLoadedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chaptersLoadedEVT != null);
    assert(loadMoreChaptersEVT != null);
    assert(loadMoreSeriesEVT != null);
    assert(seriesLoadedEVT != null);
    assert(seriesAsMapLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return accountPageLaunchedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    Result chaptersLoadedEVT(ChaptersLoadedEVT value),
    Result loadMoreChaptersEVT(LoadMoreChaptersEVT value),
    Result loadMoreSeriesEVT(LoadMoreSeriesEVT value),
    Result seriesLoadedEVT(SeriesLoadedEVT value),
    Result seriesAsMapLoadedEVT(SeriesAsMapLoadedEVT value),
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

abstract class $ChaptersLoadedEVTCopyWith<$Res> {
  factory $ChaptersLoadedEVTCopyWith(
          ChaptersLoadedEVT value, $Res Function(ChaptersLoadedEVT) then) =
      _$ChaptersLoadedEVTCopyWithImpl<$Res>;
}

class _$ChaptersLoadedEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $ChaptersLoadedEVTCopyWith<$Res> {
  _$ChaptersLoadedEVTCopyWithImpl(
      ChaptersLoadedEVT _value, $Res Function(ChaptersLoadedEVT) _then)
      : super(_value, (v) => _then(v as ChaptersLoadedEVT));

  @override
  ChaptersLoadedEVT get _value => super._value as ChaptersLoadedEVT;
}

class _$ChaptersLoadedEVT
    with DiagnosticableTreeMixin
    implements ChaptersLoadedEVT {
  const _$ChaptersLoadedEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.chaptersLoadedEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.chaptersLoadedEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChaptersLoadedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunchedEVT(BuildContext context),
    @required Result chaptersLoadedEVT(),
    @required Result loadMoreChaptersEVT(),
    @required Result loadMoreSeriesEVT(),
    @required Result seriesLoadedEVT(),
    @required Result seriesAsMapLoadedEVT(),
    @required Result sessionFetchedEVT(Session session),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chaptersLoadedEVT != null);
    assert(loadMoreChaptersEVT != null);
    assert(loadMoreSeriesEVT != null);
    assert(seriesLoadedEVT != null);
    assert(seriesAsMapLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return chaptersLoadedEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunchedEVT(BuildContext context),
    Result chaptersLoadedEVT(),
    Result loadMoreChaptersEVT(),
    Result loadMoreSeriesEVT(),
    Result seriesLoadedEVT(),
    Result seriesAsMapLoadedEVT(),
    Result sessionFetchedEVT(Session session),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (chaptersLoadedEVT != null) {
      return chaptersLoadedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    @required Result chaptersLoadedEVT(ChaptersLoadedEVT value),
    @required Result loadMoreChaptersEVT(LoadMoreChaptersEVT value),
    @required Result loadMoreSeriesEVT(LoadMoreSeriesEVT value),
    @required Result seriesLoadedEVT(SeriesLoadedEVT value),
    @required Result seriesAsMapLoadedEVT(SeriesAsMapLoadedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chaptersLoadedEVT != null);
    assert(loadMoreChaptersEVT != null);
    assert(loadMoreSeriesEVT != null);
    assert(seriesLoadedEVT != null);
    assert(seriesAsMapLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return chaptersLoadedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    Result chaptersLoadedEVT(ChaptersLoadedEVT value),
    Result loadMoreChaptersEVT(LoadMoreChaptersEVT value),
    Result loadMoreSeriesEVT(LoadMoreSeriesEVT value),
    Result seriesLoadedEVT(SeriesLoadedEVT value),
    Result seriesAsMapLoadedEVT(SeriesAsMapLoadedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (chaptersLoadedEVT != null) {
      return chaptersLoadedEVT(this);
    }
    return orElse();
  }
}

abstract class ChaptersLoadedEVT implements AccountDatabaseEvent {
  const factory ChaptersLoadedEVT() = _$ChaptersLoadedEVT;
}

abstract class $LoadMoreChaptersEVTCopyWith<$Res> {
  factory $LoadMoreChaptersEVTCopyWith(
          LoadMoreChaptersEVT value, $Res Function(LoadMoreChaptersEVT) then) =
      _$LoadMoreChaptersEVTCopyWithImpl<$Res>;
}

class _$LoadMoreChaptersEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $LoadMoreChaptersEVTCopyWith<$Res> {
  _$LoadMoreChaptersEVTCopyWithImpl(
      LoadMoreChaptersEVT _value, $Res Function(LoadMoreChaptersEVT) _then)
      : super(_value, (v) => _then(v as LoadMoreChaptersEVT));

  @override
  LoadMoreChaptersEVT get _value => super._value as LoadMoreChaptersEVT;
}

class _$LoadMoreChaptersEVT
    with DiagnosticableTreeMixin
    implements LoadMoreChaptersEVT {
  const _$LoadMoreChaptersEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.loadMoreChaptersEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.loadMoreChaptersEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadMoreChaptersEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunchedEVT(BuildContext context),
    @required Result chaptersLoadedEVT(),
    @required Result loadMoreChaptersEVT(),
    @required Result loadMoreSeriesEVT(),
    @required Result seriesLoadedEVT(),
    @required Result seriesAsMapLoadedEVT(),
    @required Result sessionFetchedEVT(Session session),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chaptersLoadedEVT != null);
    assert(loadMoreChaptersEVT != null);
    assert(loadMoreSeriesEVT != null);
    assert(seriesLoadedEVT != null);
    assert(seriesAsMapLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return loadMoreChaptersEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunchedEVT(BuildContext context),
    Result chaptersLoadedEVT(),
    Result loadMoreChaptersEVT(),
    Result loadMoreSeriesEVT(),
    Result seriesLoadedEVT(),
    Result seriesAsMapLoadedEVT(),
    Result sessionFetchedEVT(Session session),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadMoreChaptersEVT != null) {
      return loadMoreChaptersEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    @required Result chaptersLoadedEVT(ChaptersLoadedEVT value),
    @required Result loadMoreChaptersEVT(LoadMoreChaptersEVT value),
    @required Result loadMoreSeriesEVT(LoadMoreSeriesEVT value),
    @required Result seriesLoadedEVT(SeriesLoadedEVT value),
    @required Result seriesAsMapLoadedEVT(SeriesAsMapLoadedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chaptersLoadedEVT != null);
    assert(loadMoreChaptersEVT != null);
    assert(loadMoreSeriesEVT != null);
    assert(seriesLoadedEVT != null);
    assert(seriesAsMapLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return loadMoreChaptersEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    Result chaptersLoadedEVT(ChaptersLoadedEVT value),
    Result loadMoreChaptersEVT(LoadMoreChaptersEVT value),
    Result loadMoreSeriesEVT(LoadMoreSeriesEVT value),
    Result seriesLoadedEVT(SeriesLoadedEVT value),
    Result seriesAsMapLoadedEVT(SeriesAsMapLoadedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadMoreChaptersEVT != null) {
      return loadMoreChaptersEVT(this);
    }
    return orElse();
  }
}

abstract class LoadMoreChaptersEVT implements AccountDatabaseEvent {
  const factory LoadMoreChaptersEVT() = _$LoadMoreChaptersEVT;
}

abstract class $LoadMoreSeriesEVTCopyWith<$Res> {
  factory $LoadMoreSeriesEVTCopyWith(
          LoadMoreSeriesEVT value, $Res Function(LoadMoreSeriesEVT) then) =
      _$LoadMoreSeriesEVTCopyWithImpl<$Res>;
}

class _$LoadMoreSeriesEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $LoadMoreSeriesEVTCopyWith<$Res> {
  _$LoadMoreSeriesEVTCopyWithImpl(
      LoadMoreSeriesEVT _value, $Res Function(LoadMoreSeriesEVT) _then)
      : super(_value, (v) => _then(v as LoadMoreSeriesEVT));

  @override
  LoadMoreSeriesEVT get _value => super._value as LoadMoreSeriesEVT;
}

class _$LoadMoreSeriesEVT
    with DiagnosticableTreeMixin
    implements LoadMoreSeriesEVT {
  const _$LoadMoreSeriesEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.loadMoreSeriesEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.loadMoreSeriesEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadMoreSeriesEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunchedEVT(BuildContext context),
    @required Result chaptersLoadedEVT(),
    @required Result loadMoreChaptersEVT(),
    @required Result loadMoreSeriesEVT(),
    @required Result seriesLoadedEVT(),
    @required Result seriesAsMapLoadedEVT(),
    @required Result sessionFetchedEVT(Session session),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chaptersLoadedEVT != null);
    assert(loadMoreChaptersEVT != null);
    assert(loadMoreSeriesEVT != null);
    assert(seriesLoadedEVT != null);
    assert(seriesAsMapLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return loadMoreSeriesEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunchedEVT(BuildContext context),
    Result chaptersLoadedEVT(),
    Result loadMoreChaptersEVT(),
    Result loadMoreSeriesEVT(),
    Result seriesLoadedEVT(),
    Result seriesAsMapLoadedEVT(),
    Result sessionFetchedEVT(Session session),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadMoreSeriesEVT != null) {
      return loadMoreSeriesEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    @required Result chaptersLoadedEVT(ChaptersLoadedEVT value),
    @required Result loadMoreChaptersEVT(LoadMoreChaptersEVT value),
    @required Result loadMoreSeriesEVT(LoadMoreSeriesEVT value),
    @required Result seriesLoadedEVT(SeriesLoadedEVT value),
    @required Result seriesAsMapLoadedEVT(SeriesAsMapLoadedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chaptersLoadedEVT != null);
    assert(loadMoreChaptersEVT != null);
    assert(loadMoreSeriesEVT != null);
    assert(seriesLoadedEVT != null);
    assert(seriesAsMapLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return loadMoreSeriesEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    Result chaptersLoadedEVT(ChaptersLoadedEVT value),
    Result loadMoreChaptersEVT(LoadMoreChaptersEVT value),
    Result loadMoreSeriesEVT(LoadMoreSeriesEVT value),
    Result seriesLoadedEVT(SeriesLoadedEVT value),
    Result seriesAsMapLoadedEVT(SeriesAsMapLoadedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadMoreSeriesEVT != null) {
      return loadMoreSeriesEVT(this);
    }
    return orElse();
  }
}

abstract class LoadMoreSeriesEVT implements AccountDatabaseEvent {
  const factory LoadMoreSeriesEVT() = _$LoadMoreSeriesEVT;
}

abstract class $SeriesLoadedEVTCopyWith<$Res> {
  factory $SeriesLoadedEVTCopyWith(
          SeriesLoadedEVT value, $Res Function(SeriesLoadedEVT) then) =
      _$SeriesLoadedEVTCopyWithImpl<$Res>;
}

class _$SeriesLoadedEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $SeriesLoadedEVTCopyWith<$Res> {
  _$SeriesLoadedEVTCopyWithImpl(
      SeriesLoadedEVT _value, $Res Function(SeriesLoadedEVT) _then)
      : super(_value, (v) => _then(v as SeriesLoadedEVT));

  @override
  SeriesLoadedEVT get _value => super._value as SeriesLoadedEVT;
}

class _$SeriesLoadedEVT
    with DiagnosticableTreeMixin
    implements SeriesLoadedEVT {
  const _$SeriesLoadedEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.seriesLoadedEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AccountDatabaseEvent.seriesLoadedEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SeriesLoadedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunchedEVT(BuildContext context),
    @required Result chaptersLoadedEVT(),
    @required Result loadMoreChaptersEVT(),
    @required Result loadMoreSeriesEVT(),
    @required Result seriesLoadedEVT(),
    @required Result seriesAsMapLoadedEVT(),
    @required Result sessionFetchedEVT(Session session),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chaptersLoadedEVT != null);
    assert(loadMoreChaptersEVT != null);
    assert(loadMoreSeriesEVT != null);
    assert(seriesLoadedEVT != null);
    assert(seriesAsMapLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return seriesLoadedEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunchedEVT(BuildContext context),
    Result chaptersLoadedEVT(),
    Result loadMoreChaptersEVT(),
    Result loadMoreSeriesEVT(),
    Result seriesLoadedEVT(),
    Result seriesAsMapLoadedEVT(),
    Result sessionFetchedEVT(Session session),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesLoadedEVT != null) {
      return seriesLoadedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    @required Result chaptersLoadedEVT(ChaptersLoadedEVT value),
    @required Result loadMoreChaptersEVT(LoadMoreChaptersEVT value),
    @required Result loadMoreSeriesEVT(LoadMoreSeriesEVT value),
    @required Result seriesLoadedEVT(SeriesLoadedEVT value),
    @required Result seriesAsMapLoadedEVT(SeriesAsMapLoadedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chaptersLoadedEVT != null);
    assert(loadMoreChaptersEVT != null);
    assert(loadMoreSeriesEVT != null);
    assert(seriesLoadedEVT != null);
    assert(seriesAsMapLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return seriesLoadedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    Result chaptersLoadedEVT(ChaptersLoadedEVT value),
    Result loadMoreChaptersEVT(LoadMoreChaptersEVT value),
    Result loadMoreSeriesEVT(LoadMoreSeriesEVT value),
    Result seriesLoadedEVT(SeriesLoadedEVT value),
    Result seriesAsMapLoadedEVT(SeriesAsMapLoadedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesLoadedEVT != null) {
      return seriesLoadedEVT(this);
    }
    return orElse();
  }
}

abstract class SeriesLoadedEVT implements AccountDatabaseEvent {
  const factory SeriesLoadedEVT() = _$SeriesLoadedEVT;
}

abstract class $SeriesAsMapLoadedEVTCopyWith<$Res> {
  factory $SeriesAsMapLoadedEVTCopyWith(SeriesAsMapLoadedEVT value,
          $Res Function(SeriesAsMapLoadedEVT) then) =
      _$SeriesAsMapLoadedEVTCopyWithImpl<$Res>;
}

class _$SeriesAsMapLoadedEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $SeriesAsMapLoadedEVTCopyWith<$Res> {
  _$SeriesAsMapLoadedEVTCopyWithImpl(
      SeriesAsMapLoadedEVT _value, $Res Function(SeriesAsMapLoadedEVT) _then)
      : super(_value, (v) => _then(v as SeriesAsMapLoadedEVT));

  @override
  SeriesAsMapLoadedEVT get _value => super._value as SeriesAsMapLoadedEVT;
}

class _$SeriesAsMapLoadedEVT
    with DiagnosticableTreeMixin
    implements SeriesAsMapLoadedEVT {
  const _$SeriesAsMapLoadedEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.seriesAsMapLoadedEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.seriesAsMapLoadedEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SeriesAsMapLoadedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunchedEVT(BuildContext context),
    @required Result chaptersLoadedEVT(),
    @required Result loadMoreChaptersEVT(),
    @required Result loadMoreSeriesEVT(),
    @required Result seriesLoadedEVT(),
    @required Result seriesAsMapLoadedEVT(),
    @required Result sessionFetchedEVT(Session session),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chaptersLoadedEVT != null);
    assert(loadMoreChaptersEVT != null);
    assert(loadMoreSeriesEVT != null);
    assert(seriesLoadedEVT != null);
    assert(seriesAsMapLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return seriesAsMapLoadedEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunchedEVT(BuildContext context),
    Result chaptersLoadedEVT(),
    Result loadMoreChaptersEVT(),
    Result loadMoreSeriesEVT(),
    Result seriesLoadedEVT(),
    Result seriesAsMapLoadedEVT(),
    Result sessionFetchedEVT(Session session),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesAsMapLoadedEVT != null) {
      return seriesAsMapLoadedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    @required Result chaptersLoadedEVT(ChaptersLoadedEVT value),
    @required Result loadMoreChaptersEVT(LoadMoreChaptersEVT value),
    @required Result loadMoreSeriesEVT(LoadMoreSeriesEVT value),
    @required Result seriesLoadedEVT(SeriesLoadedEVT value),
    @required Result seriesAsMapLoadedEVT(SeriesAsMapLoadedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chaptersLoadedEVT != null);
    assert(loadMoreChaptersEVT != null);
    assert(loadMoreSeriesEVT != null);
    assert(seriesLoadedEVT != null);
    assert(seriesAsMapLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return seriesAsMapLoadedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    Result chaptersLoadedEVT(ChaptersLoadedEVT value),
    Result loadMoreChaptersEVT(LoadMoreChaptersEVT value),
    Result loadMoreSeriesEVT(LoadMoreSeriesEVT value),
    Result seriesLoadedEVT(SeriesLoadedEVT value),
    Result seriesAsMapLoadedEVT(SeriesAsMapLoadedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesAsMapLoadedEVT != null) {
      return seriesAsMapLoadedEVT(this);
    }
    return orElse();
  }
}

abstract class SeriesAsMapLoadedEVT implements AccountDatabaseEvent {
  const factory SeriesAsMapLoadedEVT() = _$SeriesAsMapLoadedEVT;
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
    @required Result chaptersLoadedEVT(),
    @required Result loadMoreChaptersEVT(),
    @required Result loadMoreSeriesEVT(),
    @required Result seriesLoadedEVT(),
    @required Result seriesAsMapLoadedEVT(),
    @required Result sessionFetchedEVT(Session session),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chaptersLoadedEVT != null);
    assert(loadMoreChaptersEVT != null);
    assert(loadMoreSeriesEVT != null);
    assert(seriesLoadedEVT != null);
    assert(seriesAsMapLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return sessionFetchedEVT(session);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunchedEVT(BuildContext context),
    Result chaptersLoadedEVT(),
    Result loadMoreChaptersEVT(),
    Result loadMoreSeriesEVT(),
    Result seriesLoadedEVT(),
    Result seriesAsMapLoadedEVT(),
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
    @required Result chaptersLoadedEVT(ChaptersLoadedEVT value),
    @required Result loadMoreChaptersEVT(LoadMoreChaptersEVT value),
    @required Result loadMoreSeriesEVT(LoadMoreSeriesEVT value),
    @required Result seriesLoadedEVT(SeriesLoadedEVT value),
    @required Result seriesAsMapLoadedEVT(SeriesAsMapLoadedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(chaptersLoadedEVT != null);
    assert(loadMoreChaptersEVT != null);
    assert(loadMoreSeriesEVT != null);
    assert(seriesLoadedEVT != null);
    assert(seriesAsMapLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    return sessionFetchedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    Result chaptersLoadedEVT(ChaptersLoadedEVT value),
    Result loadMoreChaptersEVT(LoadMoreChaptersEVT value),
    Result loadMoreSeriesEVT(LoadMoreSeriesEVT value),
    Result seriesLoadedEVT(SeriesLoadedEVT value),
    Result seriesAsMapLoadedEVT(SeriesAsMapLoadedEVT value),
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

  _AccountSettingsState call(
      {@required
          bool isFetching,
      @required
          List<Chapter> chapters,
      @required
          List<Series> series,
      @required
          Map<String, Series> seriesMap,
      @required
          Map<String, SeriesDraft> seriesDraftsMap,
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
    return _AccountSettingsState(
      isFetching: isFetching,
      chapters: chapters,
      series: series,
      seriesMap: seriesMap,
      seriesDraftsMap: seriesDraftsMap,
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
  List<Chapter> get chapters;
  List<Series> get series;
  Map<String, Series> get seriesMap;
  Map<String, SeriesDraft> get seriesDraftsMap;
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
      List<Chapter> chapters,
      List<Series> series,
      Map<String, Series> seriesMap,
      Map<String, SeriesDraft> seriesDraftsMap,
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
    Object chapters = freezed,
    Object series = freezed,
    Object seriesMap = freezed,
    Object seriesDraftsMap = freezed,
    Object copyrights = freezed,
    Object genres = freezed,
    Object languages = freezed,
    Object databaseFailureOrSuccessOption = freezed,
    Object session = freezed,
  }) {
    return _then(_value.copyWith(
      isFetching:
          isFetching == freezed ? _value.isFetching : isFetching as bool,
      chapters:
          chapters == freezed ? _value.chapters : chapters as List<Chapter>,
      series: series == freezed ? _value.series : series as List<Series>,
      seriesMap: seriesMap == freezed
          ? _value.seriesMap
          : seriesMap as Map<String, Series>,
      seriesDraftsMap: seriesDraftsMap == freezed
          ? _value.seriesDraftsMap
          : seriesDraftsMap as Map<String, SeriesDraft>,
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

abstract class _$AccountSettingsStateCopyWith<$Res>
    implements $AccountDatabaseStateCopyWith<$Res> {
  factory _$AccountSettingsStateCopyWith(_AccountSettingsState value,
          $Res Function(_AccountSettingsState) then) =
      __$AccountSettingsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isFetching,
      List<Chapter> chapters,
      List<Series> series,
      Map<String, Series> seriesMap,
      Map<String, SeriesDraft> seriesDraftsMap,
      Map<String, String> copyrights,
      Map<String, String> genres,
      Map<String, String> languages,
      Option<Either<DatabaseFailure, DatabaseSuccess>>
          databaseFailureOrSuccessOption,
      Session session});
}

class __$AccountSettingsStateCopyWithImpl<$Res>
    extends _$AccountDatabaseStateCopyWithImpl<$Res>
    implements _$AccountSettingsStateCopyWith<$Res> {
  __$AccountSettingsStateCopyWithImpl(
      _AccountSettingsState _value, $Res Function(_AccountSettingsState) _then)
      : super(_value, (v) => _then(v as _AccountSettingsState));

  @override
  _AccountSettingsState get _value => super._value as _AccountSettingsState;

  @override
  $Res call({
    Object isFetching = freezed,
    Object chapters = freezed,
    Object series = freezed,
    Object seriesMap = freezed,
    Object seriesDraftsMap = freezed,
    Object copyrights = freezed,
    Object genres = freezed,
    Object languages = freezed,
    Object databaseFailureOrSuccessOption = freezed,
    Object session = freezed,
  }) {
    return _then(_AccountSettingsState(
      isFetching:
          isFetching == freezed ? _value.isFetching : isFetching as bool,
      chapters:
          chapters == freezed ? _value.chapters : chapters as List<Chapter>,
      series: series == freezed ? _value.series : series as List<Series>,
      seriesMap: seriesMap == freezed
          ? _value.seriesMap
          : seriesMap as Map<String, Series>,
      seriesDraftsMap: seriesDraftsMap == freezed
          ? _value.seriesDraftsMap
          : seriesDraftsMap as Map<String, SeriesDraft>,
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

class _$_AccountSettingsState
    with DiagnosticableTreeMixin
    implements _AccountSettingsState {
  const _$_AccountSettingsState(
      {@required this.isFetching,
      @required this.chapters,
      @required this.series,
      @required this.seriesMap,
      @required this.seriesDraftsMap,
      @required this.copyrights,
      @required this.genres,
      @required this.languages,
      @required this.databaseFailureOrSuccessOption,
      @required this.session})
      : assert(isFetching != null),
        assert(chapters != null),
        assert(series != null),
        assert(seriesMap != null),
        assert(seriesDraftsMap != null),
        assert(copyrights != null),
        assert(genres != null),
        assert(languages != null),
        assert(databaseFailureOrSuccessOption != null),
        assert(session != null);

  @override
  final bool isFetching;
  @override
  final List<Chapter> chapters;
  @override
  final List<Series> series;
  @override
  final Map<String, Series> seriesMap;
  @override
  final Map<String, SeriesDraft> seriesDraftsMap;
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
    return 'AccountDatabaseState(isFetching: $isFetching, chapters: $chapters, series: $series, seriesMap: $seriesMap, seriesDraftsMap: $seriesDraftsMap, copyrights: $copyrights, genres: $genres, languages: $languages, databaseFailureOrSuccessOption: $databaseFailureOrSuccessOption, session: $session)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountDatabaseState'))
      ..add(DiagnosticsProperty('isFetching', isFetching))
      ..add(DiagnosticsProperty('chapters', chapters))
      ..add(DiagnosticsProperty('series', series))
      ..add(DiagnosticsProperty('seriesMap', seriesMap))
      ..add(DiagnosticsProperty('seriesDraftsMap', seriesDraftsMap))
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
        (other is _AccountSettingsState &&
            (identical(other.isFetching, isFetching) ||
                const DeepCollectionEquality()
                    .equals(other.isFetching, isFetching)) &&
            (identical(other.chapters, chapters) ||
                const DeepCollectionEquality()
                    .equals(other.chapters, chapters)) &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)) &&
            (identical(other.seriesMap, seriesMap) ||
                const DeepCollectionEquality()
                    .equals(other.seriesMap, seriesMap)) &&
            (identical(other.seriesDraftsMap, seriesDraftsMap) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraftsMap, seriesDraftsMap)) &&
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
      const DeepCollectionEquality().hash(chapters) ^
      const DeepCollectionEquality().hash(series) ^
      const DeepCollectionEquality().hash(seriesMap) ^
      const DeepCollectionEquality().hash(seriesDraftsMap) ^
      const DeepCollectionEquality().hash(copyrights) ^
      const DeepCollectionEquality().hash(genres) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(databaseFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(session);

  @override
  _$AccountSettingsStateCopyWith<_AccountSettingsState> get copyWith =>
      __$AccountSettingsStateCopyWithImpl<_AccountSettingsState>(
          this, _$identity);
}

abstract class _AccountSettingsState implements AccountDatabaseState {
  const factory _AccountSettingsState(
      {@required
          bool isFetching,
      @required
          List<Chapter> chapters,
      @required
          List<Series> series,
      @required
          Map<String, Series> seriesMap,
      @required
          Map<String, SeriesDraft> seriesDraftsMap,
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
          Session session}) = _$_AccountSettingsState;

  @override
  bool get isFetching;
  @override
  List<Chapter> get chapters;
  @override
  List<Series> get series;
  @override
  Map<String, Series> get seriesMap;
  @override
  Map<String, SeriesDraft> get seriesDraftsMap;
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
  _$AccountSettingsStateCopyWith<_AccountSettingsState> get copyWith;
}
