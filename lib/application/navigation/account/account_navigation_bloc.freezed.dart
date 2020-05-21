// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'account_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AccountNavigationEventTearOff {
  const _$AccountNavigationEventTearOff();

  AccountPageLaunched accountPageLaunched({@required BuildContext context}) {
    return AccountPageLaunched(
      context: context,
    );
  }

  PageViewIndexChanged pageViewIndexChanged({@required int index}) {
    return PageViewIndexChanged(
      index: index,
    );
  }

  VerticalNavbarIndexChanged verticalNavbarIndexChanged({@required int index}) {
    return VerticalNavbarIndexChanged(
      index: index,
    );
  }

  ResetAccountNavigationBloc resetAccountNavigationBloc() {
    return const ResetAccountNavigationBloc();
  }
}

// ignore: unused_element
const $AccountNavigationEvent = _$AccountNavigationEventTearOff();

mixin _$AccountNavigationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunched(BuildContext context),
    @required Result pageViewIndexChanged(int index),
    @required Result verticalNavbarIndexChanged(int index),
    @required Result resetAccountNavigationBloc(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunched(BuildContext context),
    Result pageViewIndexChanged(int index),
    Result verticalNavbarIndexChanged(int index),
    Result resetAccountNavigationBloc(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunched(AccountPageLaunched value),
    @required Result pageViewIndexChanged(PageViewIndexChanged value),
    @required
        Result verticalNavbarIndexChanged(VerticalNavbarIndexChanged value),
    @required
        Result resetAccountNavigationBloc(ResetAccountNavigationBloc value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunched(AccountPageLaunched value),
    Result pageViewIndexChanged(PageViewIndexChanged value),
    Result verticalNavbarIndexChanged(VerticalNavbarIndexChanged value),
    Result resetAccountNavigationBloc(ResetAccountNavigationBloc value),
    @required Result orElse(),
  });
}

abstract class $AccountNavigationEventCopyWith<$Res> {
  factory $AccountNavigationEventCopyWith(AccountNavigationEvent value,
          $Res Function(AccountNavigationEvent) then) =
      _$AccountNavigationEventCopyWithImpl<$Res>;
}

class _$AccountNavigationEventCopyWithImpl<$Res>
    implements $AccountNavigationEventCopyWith<$Res> {
  _$AccountNavigationEventCopyWithImpl(this._value, this._then);

  final AccountNavigationEvent _value;
  // ignore: unused_field
  final $Res Function(AccountNavigationEvent) _then;
}

abstract class $AccountPageLaunchedCopyWith<$Res> {
  factory $AccountPageLaunchedCopyWith(
          AccountPageLaunched value, $Res Function(AccountPageLaunched) then) =
      _$AccountPageLaunchedCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

class _$AccountPageLaunchedCopyWithImpl<$Res>
    extends _$AccountNavigationEventCopyWithImpl<$Res>
    implements $AccountPageLaunchedCopyWith<$Res> {
  _$AccountPageLaunchedCopyWithImpl(
      AccountPageLaunched _value, $Res Function(AccountPageLaunched) _then)
      : super(_value, (v) => _then(v as AccountPageLaunched));

  @override
  AccountPageLaunched get _value => super._value as AccountPageLaunched;

  @override
  $Res call({
    Object context = freezed,
  }) {
    return _then(AccountPageLaunched(
      context: context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

class _$AccountPageLaunched
    with DiagnosticableTreeMixin
    implements AccountPageLaunched {
  const _$AccountPageLaunched({@required this.context})
      : assert(context != null);

  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountNavigationEvent.accountPageLaunched(context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountNavigationEvent.accountPageLaunched'))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountPageLaunched &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(context);

  @override
  $AccountPageLaunchedCopyWith<AccountPageLaunched> get copyWith =>
      _$AccountPageLaunchedCopyWithImpl<AccountPageLaunched>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunched(BuildContext context),
    @required Result pageViewIndexChanged(int index),
    @required Result verticalNavbarIndexChanged(int index),
    @required Result resetAccountNavigationBloc(),
  }) {
    assert(accountPageLaunched != null);
    assert(pageViewIndexChanged != null);
    assert(verticalNavbarIndexChanged != null);
    assert(resetAccountNavigationBloc != null);
    return accountPageLaunched(context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunched(BuildContext context),
    Result pageViewIndexChanged(int index),
    Result verticalNavbarIndexChanged(int index),
    Result resetAccountNavigationBloc(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountPageLaunched != null) {
      return accountPageLaunched(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunched(AccountPageLaunched value),
    @required Result pageViewIndexChanged(PageViewIndexChanged value),
    @required
        Result verticalNavbarIndexChanged(VerticalNavbarIndexChanged value),
    @required
        Result resetAccountNavigationBloc(ResetAccountNavigationBloc value),
  }) {
    assert(accountPageLaunched != null);
    assert(pageViewIndexChanged != null);
    assert(verticalNavbarIndexChanged != null);
    assert(resetAccountNavigationBloc != null);
    return accountPageLaunched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunched(AccountPageLaunched value),
    Result pageViewIndexChanged(PageViewIndexChanged value),
    Result verticalNavbarIndexChanged(VerticalNavbarIndexChanged value),
    Result resetAccountNavigationBloc(ResetAccountNavigationBloc value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountPageLaunched != null) {
      return accountPageLaunched(this);
    }
    return orElse();
  }
}

abstract class AccountPageLaunched implements AccountNavigationEvent {
  const factory AccountPageLaunched({@required BuildContext context}) =
      _$AccountPageLaunched;

  BuildContext get context;
  $AccountPageLaunchedCopyWith<AccountPageLaunched> get copyWith;
}

abstract class $PageViewIndexChangedCopyWith<$Res> {
  factory $PageViewIndexChangedCopyWith(PageViewIndexChanged value,
          $Res Function(PageViewIndexChanged) then) =
      _$PageViewIndexChangedCopyWithImpl<$Res>;
  $Res call({int index});
}

class _$PageViewIndexChangedCopyWithImpl<$Res>
    extends _$AccountNavigationEventCopyWithImpl<$Res>
    implements $PageViewIndexChangedCopyWith<$Res> {
  _$PageViewIndexChangedCopyWithImpl(
      PageViewIndexChanged _value, $Res Function(PageViewIndexChanged) _then)
      : super(_value, (v) => _then(v as PageViewIndexChanged));

  @override
  PageViewIndexChanged get _value => super._value as PageViewIndexChanged;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(PageViewIndexChanged(
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

class _$PageViewIndexChanged
    with DiagnosticableTreeMixin
    implements PageViewIndexChanged {
  const _$PageViewIndexChanged({@required this.index}) : assert(index != null);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountNavigationEvent.pageViewIndexChanged(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountNavigationEvent.pageViewIndexChanged'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageViewIndexChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  $PageViewIndexChangedCopyWith<PageViewIndexChanged> get copyWith =>
      _$PageViewIndexChangedCopyWithImpl<PageViewIndexChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunched(BuildContext context),
    @required Result pageViewIndexChanged(int index),
    @required Result verticalNavbarIndexChanged(int index),
    @required Result resetAccountNavigationBloc(),
  }) {
    assert(accountPageLaunched != null);
    assert(pageViewIndexChanged != null);
    assert(verticalNavbarIndexChanged != null);
    assert(resetAccountNavigationBloc != null);
    return pageViewIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunched(BuildContext context),
    Result pageViewIndexChanged(int index),
    Result verticalNavbarIndexChanged(int index),
    Result resetAccountNavigationBloc(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pageViewIndexChanged != null) {
      return pageViewIndexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunched(AccountPageLaunched value),
    @required Result pageViewIndexChanged(PageViewIndexChanged value),
    @required
        Result verticalNavbarIndexChanged(VerticalNavbarIndexChanged value),
    @required
        Result resetAccountNavigationBloc(ResetAccountNavigationBloc value),
  }) {
    assert(accountPageLaunched != null);
    assert(pageViewIndexChanged != null);
    assert(verticalNavbarIndexChanged != null);
    assert(resetAccountNavigationBloc != null);
    return pageViewIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunched(AccountPageLaunched value),
    Result pageViewIndexChanged(PageViewIndexChanged value),
    Result verticalNavbarIndexChanged(VerticalNavbarIndexChanged value),
    Result resetAccountNavigationBloc(ResetAccountNavigationBloc value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pageViewIndexChanged != null) {
      return pageViewIndexChanged(this);
    }
    return orElse();
  }
}

abstract class PageViewIndexChanged implements AccountNavigationEvent {
  const factory PageViewIndexChanged({@required int index}) =
      _$PageViewIndexChanged;

  int get index;
  $PageViewIndexChangedCopyWith<PageViewIndexChanged> get copyWith;
}

abstract class $VerticalNavbarIndexChangedCopyWith<$Res> {
  factory $VerticalNavbarIndexChangedCopyWith(VerticalNavbarIndexChanged value,
          $Res Function(VerticalNavbarIndexChanged) then) =
      _$VerticalNavbarIndexChangedCopyWithImpl<$Res>;
  $Res call({int index});
}

class _$VerticalNavbarIndexChangedCopyWithImpl<$Res>
    extends _$AccountNavigationEventCopyWithImpl<$Res>
    implements $VerticalNavbarIndexChangedCopyWith<$Res> {
  _$VerticalNavbarIndexChangedCopyWithImpl(VerticalNavbarIndexChanged _value,
      $Res Function(VerticalNavbarIndexChanged) _then)
      : super(_value, (v) => _then(v as VerticalNavbarIndexChanged));

  @override
  VerticalNavbarIndexChanged get _value =>
      super._value as VerticalNavbarIndexChanged;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(VerticalNavbarIndexChanged(
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

class _$VerticalNavbarIndexChanged
    with DiagnosticableTreeMixin
    implements VerticalNavbarIndexChanged {
  const _$VerticalNavbarIndexChanged({@required this.index})
      : assert(index != null);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountNavigationEvent.verticalNavbarIndexChanged(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountNavigationEvent.verticalNavbarIndexChanged'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VerticalNavbarIndexChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  $VerticalNavbarIndexChangedCopyWith<VerticalNavbarIndexChanged>
      get copyWith =>
          _$VerticalNavbarIndexChangedCopyWithImpl<VerticalNavbarIndexChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunched(BuildContext context),
    @required Result pageViewIndexChanged(int index),
    @required Result verticalNavbarIndexChanged(int index),
    @required Result resetAccountNavigationBloc(),
  }) {
    assert(accountPageLaunched != null);
    assert(pageViewIndexChanged != null);
    assert(verticalNavbarIndexChanged != null);
    assert(resetAccountNavigationBloc != null);
    return verticalNavbarIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunched(BuildContext context),
    Result pageViewIndexChanged(int index),
    Result verticalNavbarIndexChanged(int index),
    Result resetAccountNavigationBloc(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verticalNavbarIndexChanged != null) {
      return verticalNavbarIndexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunched(AccountPageLaunched value),
    @required Result pageViewIndexChanged(PageViewIndexChanged value),
    @required
        Result verticalNavbarIndexChanged(VerticalNavbarIndexChanged value),
    @required
        Result resetAccountNavigationBloc(ResetAccountNavigationBloc value),
  }) {
    assert(accountPageLaunched != null);
    assert(pageViewIndexChanged != null);
    assert(verticalNavbarIndexChanged != null);
    assert(resetAccountNavigationBloc != null);
    return verticalNavbarIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunched(AccountPageLaunched value),
    Result pageViewIndexChanged(PageViewIndexChanged value),
    Result verticalNavbarIndexChanged(VerticalNavbarIndexChanged value),
    Result resetAccountNavigationBloc(ResetAccountNavigationBloc value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verticalNavbarIndexChanged != null) {
      return verticalNavbarIndexChanged(this);
    }
    return orElse();
  }
}

abstract class VerticalNavbarIndexChanged implements AccountNavigationEvent {
  const factory VerticalNavbarIndexChanged({@required int index}) =
      _$VerticalNavbarIndexChanged;

  int get index;
  $VerticalNavbarIndexChangedCopyWith<VerticalNavbarIndexChanged> get copyWith;
}

abstract class $ResetAccountNavigationBlocCopyWith<$Res> {
  factory $ResetAccountNavigationBlocCopyWith(ResetAccountNavigationBloc value,
          $Res Function(ResetAccountNavigationBloc) then) =
      _$ResetAccountNavigationBlocCopyWithImpl<$Res>;
}

class _$ResetAccountNavigationBlocCopyWithImpl<$Res>
    extends _$AccountNavigationEventCopyWithImpl<$Res>
    implements $ResetAccountNavigationBlocCopyWith<$Res> {
  _$ResetAccountNavigationBlocCopyWithImpl(ResetAccountNavigationBloc _value,
      $Res Function(ResetAccountNavigationBloc) _then)
      : super(_value, (v) => _then(v as ResetAccountNavigationBloc));

  @override
  ResetAccountNavigationBloc get _value =>
      super._value as ResetAccountNavigationBloc;
}

class _$ResetAccountNavigationBloc
    with DiagnosticableTreeMixin
    implements ResetAccountNavigationBloc {
  const _$ResetAccountNavigationBloc();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountNavigationEvent.resetAccountNavigationBloc()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountNavigationEvent.resetAccountNavigationBloc'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetAccountNavigationBloc);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunched(BuildContext context),
    @required Result pageViewIndexChanged(int index),
    @required Result verticalNavbarIndexChanged(int index),
    @required Result resetAccountNavigationBloc(),
  }) {
    assert(accountPageLaunched != null);
    assert(pageViewIndexChanged != null);
    assert(verticalNavbarIndexChanged != null);
    assert(resetAccountNavigationBloc != null);
    return resetAccountNavigationBloc();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunched(BuildContext context),
    Result pageViewIndexChanged(int index),
    Result verticalNavbarIndexChanged(int index),
    Result resetAccountNavigationBloc(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetAccountNavigationBloc != null) {
      return resetAccountNavigationBloc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunched(AccountPageLaunched value),
    @required Result pageViewIndexChanged(PageViewIndexChanged value),
    @required
        Result verticalNavbarIndexChanged(VerticalNavbarIndexChanged value),
    @required
        Result resetAccountNavigationBloc(ResetAccountNavigationBloc value),
  }) {
    assert(accountPageLaunched != null);
    assert(pageViewIndexChanged != null);
    assert(verticalNavbarIndexChanged != null);
    assert(resetAccountNavigationBloc != null);
    return resetAccountNavigationBloc(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunched(AccountPageLaunched value),
    Result pageViewIndexChanged(PageViewIndexChanged value),
    Result verticalNavbarIndexChanged(VerticalNavbarIndexChanged value),
    Result resetAccountNavigationBloc(ResetAccountNavigationBloc value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetAccountNavigationBloc != null) {
      return resetAccountNavigationBloc(this);
    }
    return orElse();
  }
}

abstract class ResetAccountNavigationBloc implements AccountNavigationEvent {
  const factory ResetAccountNavigationBloc() = _$ResetAccountNavigationBloc;
}

class _$AccountNavigationStateTearOff {
  const _$AccountNavigationStateTearOff();

  _AccountSettingsState call(
      {@required List<String> pageViewNavbarItems,
      @required List<String> verticalNavbarItems,
      @required int currentPageViewIdx,
      @required int currentVerticalNavbarIdx}) {
    return _AccountSettingsState(
      pageViewNavbarItems: pageViewNavbarItems,
      verticalNavbarItems: verticalNavbarItems,
      currentPageViewIdx: currentPageViewIdx,
      currentVerticalNavbarIdx: currentVerticalNavbarIdx,
    );
  }
}

// ignore: unused_element
const $AccountNavigationState = _$AccountNavigationStateTearOff();

mixin _$AccountNavigationState {
  List<String> get pageViewNavbarItems;
  List<String> get verticalNavbarItems;
  int get currentPageViewIdx;
  int get currentVerticalNavbarIdx;

  $AccountNavigationStateCopyWith<AccountNavigationState> get copyWith;
}

abstract class $AccountNavigationStateCopyWith<$Res> {
  factory $AccountNavigationStateCopyWith(AccountNavigationState value,
          $Res Function(AccountNavigationState) then) =
      _$AccountNavigationStateCopyWithImpl<$Res>;
  $Res call(
      {List<String> pageViewNavbarItems,
      List<String> verticalNavbarItems,
      int currentPageViewIdx,
      int currentVerticalNavbarIdx});
}

class _$AccountNavigationStateCopyWithImpl<$Res>
    implements $AccountNavigationStateCopyWith<$Res> {
  _$AccountNavigationStateCopyWithImpl(this._value, this._then);

  final AccountNavigationState _value;
  // ignore: unused_field
  final $Res Function(AccountNavigationState) _then;

  @override
  $Res call({
    Object pageViewNavbarItems = freezed,
    Object verticalNavbarItems = freezed,
    Object currentPageViewIdx = freezed,
    Object currentVerticalNavbarIdx = freezed,
  }) {
    return _then(_value.copyWith(
      pageViewNavbarItems: pageViewNavbarItems == freezed
          ? _value.pageViewNavbarItems
          : pageViewNavbarItems as List<String>,
      verticalNavbarItems: verticalNavbarItems == freezed
          ? _value.verticalNavbarItems
          : verticalNavbarItems as List<String>,
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx as int,
      currentVerticalNavbarIdx: currentVerticalNavbarIdx == freezed
          ? _value.currentVerticalNavbarIdx
          : currentVerticalNavbarIdx as int,
    ));
  }
}

abstract class _$AccountSettingsStateCopyWith<$Res>
    implements $AccountNavigationStateCopyWith<$Res> {
  factory _$AccountSettingsStateCopyWith(_AccountSettingsState value,
          $Res Function(_AccountSettingsState) then) =
      __$AccountSettingsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> pageViewNavbarItems,
      List<String> verticalNavbarItems,
      int currentPageViewIdx,
      int currentVerticalNavbarIdx});
}

class __$AccountSettingsStateCopyWithImpl<$Res>
    extends _$AccountNavigationStateCopyWithImpl<$Res>
    implements _$AccountSettingsStateCopyWith<$Res> {
  __$AccountSettingsStateCopyWithImpl(
      _AccountSettingsState _value, $Res Function(_AccountSettingsState) _then)
      : super(_value, (v) => _then(v as _AccountSettingsState));

  @override
  _AccountSettingsState get _value => super._value as _AccountSettingsState;

  @override
  $Res call({
    Object pageViewNavbarItems = freezed,
    Object verticalNavbarItems = freezed,
    Object currentPageViewIdx = freezed,
    Object currentVerticalNavbarIdx = freezed,
  }) {
    return _then(_AccountSettingsState(
      pageViewNavbarItems: pageViewNavbarItems == freezed
          ? _value.pageViewNavbarItems
          : pageViewNavbarItems as List<String>,
      verticalNavbarItems: verticalNavbarItems == freezed
          ? _value.verticalNavbarItems
          : verticalNavbarItems as List<String>,
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx as int,
      currentVerticalNavbarIdx: currentVerticalNavbarIdx == freezed
          ? _value.currentVerticalNavbarIdx
          : currentVerticalNavbarIdx as int,
    ));
  }
}

class _$_AccountSettingsState
    with DiagnosticableTreeMixin
    implements _AccountSettingsState {
  const _$_AccountSettingsState(
      {@required this.pageViewNavbarItems,
      @required this.verticalNavbarItems,
      @required this.currentPageViewIdx,
      @required this.currentVerticalNavbarIdx})
      : assert(pageViewNavbarItems != null),
        assert(verticalNavbarItems != null),
        assert(currentPageViewIdx != null),
        assert(currentVerticalNavbarIdx != null);

  @override
  final List<String> pageViewNavbarItems;
  @override
  final List<String> verticalNavbarItems;
  @override
  final int currentPageViewIdx;
  @override
  final int currentVerticalNavbarIdx;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountNavigationState(pageViewNavbarItems: $pageViewNavbarItems, verticalNavbarItems: $verticalNavbarItems, currentPageViewIdx: $currentPageViewIdx, currentVerticalNavbarIdx: $currentVerticalNavbarIdx)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountNavigationState'))
      ..add(DiagnosticsProperty('pageViewNavbarItems', pageViewNavbarItems))
      ..add(DiagnosticsProperty('verticalNavbarItems', verticalNavbarItems))
      ..add(DiagnosticsProperty('currentPageViewIdx', currentPageViewIdx))
      ..add(DiagnosticsProperty(
          'currentVerticalNavbarIdx', currentVerticalNavbarIdx));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountSettingsState &&
            (identical(other.pageViewNavbarItems, pageViewNavbarItems) ||
                const DeepCollectionEquality()
                    .equals(other.pageViewNavbarItems, pageViewNavbarItems)) &&
            (identical(other.verticalNavbarItems, verticalNavbarItems) ||
                const DeepCollectionEquality()
                    .equals(other.verticalNavbarItems, verticalNavbarItems)) &&
            (identical(other.currentPageViewIdx, currentPageViewIdx) ||
                const DeepCollectionEquality()
                    .equals(other.currentPageViewIdx, currentPageViewIdx)) &&
            (identical(
                    other.currentVerticalNavbarIdx, currentVerticalNavbarIdx) ||
                const DeepCollectionEquality().equals(
                    other.currentVerticalNavbarIdx, currentVerticalNavbarIdx)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pageViewNavbarItems) ^
      const DeepCollectionEquality().hash(verticalNavbarItems) ^
      const DeepCollectionEquality().hash(currentPageViewIdx) ^
      const DeepCollectionEquality().hash(currentVerticalNavbarIdx);

  @override
  _$AccountSettingsStateCopyWith<_AccountSettingsState> get copyWith =>
      __$AccountSettingsStateCopyWithImpl<_AccountSettingsState>(
          this, _$identity);
}

abstract class _AccountSettingsState implements AccountNavigationState {
  const factory _AccountSettingsState(
      {@required List<String> pageViewNavbarItems,
      @required List<String> verticalNavbarItems,
      @required int currentPageViewIdx,
      @required int currentVerticalNavbarIdx}) = _$_AccountSettingsState;

  @override
  List<String> get pageViewNavbarItems;
  @override
  List<String> get verticalNavbarItems;
  @override
  int get currentPageViewIdx;
  @override
  int get currentVerticalNavbarIdx;
  @override
  _$AccountSettingsStateCopyWith<_AccountSettingsState> get copyWith;
}
