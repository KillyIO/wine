// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'account_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AccountNavigationEventTearOff {
  const _$AccountNavigationEventTearOff();

// ignore: unused_element
  AccountPageLaunchedEVT accountPageLaunchedEVT(
      {@required BuildContext context}) {
    return AccountPageLaunchedEVT(
      context: context,
    );
  }

// ignore: unused_element
  PageViewIndexChangedEVT pageViewIndexChangedEVT(int index) {
    return PageViewIndexChangedEVT(
      index,
    );
  }

// ignore: unused_element
  ResetBlocEVT resetBlocEVT() {
    return const ResetBlocEVT();
  }

// ignore: unused_element
  VerticalNavbarIndexChangedEVT verticalNavbarIndexChangedEVT(int index) {
    return VerticalNavbarIndexChangedEVT(
      index,
    );
  }
}

// ignore: unused_element
const $AccountNavigationEvent = _$AccountNavigationEventTearOff();

mixin _$AccountNavigationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunchedEVT(BuildContext context),
    @required Result pageViewIndexChangedEVT(int index),
    @required Result resetBlocEVT(),
    @required Result verticalNavbarIndexChangedEVT(int index),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunchedEVT(BuildContext context),
    Result pageViewIndexChangedEVT(int index),
    Result resetBlocEVT(),
    Result verticalNavbarIndexChangedEVT(int index),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    @required Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
    @required
        Result verticalNavbarIndexChangedEVT(
            VerticalNavbarIndexChangedEVT value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
    Result verticalNavbarIndexChangedEVT(VerticalNavbarIndexChangedEVT value),
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

abstract class $AccountPageLaunchedEVTCopyWith<$Res> {
  factory $AccountPageLaunchedEVTCopyWith(AccountPageLaunchedEVT value,
          $Res Function(AccountPageLaunchedEVT) then) =
      _$AccountPageLaunchedEVTCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

class _$AccountPageLaunchedEVTCopyWithImpl<$Res>
    extends _$AccountNavigationEventCopyWithImpl<$Res>
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
    return 'AccountNavigationEvent.accountPageLaunchedEVT(context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountNavigationEvent.accountPageLaunchedEVT'))
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
    @required Result pageViewIndexChangedEVT(int index),
    @required Result resetBlocEVT(),
    @required Result verticalNavbarIndexChangedEVT(int index),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(verticalNavbarIndexChangedEVT != null);
    return accountPageLaunchedEVT(context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunchedEVT(BuildContext context),
    Result pageViewIndexChangedEVT(int index),
    Result resetBlocEVT(),
    Result verticalNavbarIndexChangedEVT(int index),
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
    @required Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
    @required
        Result verticalNavbarIndexChangedEVT(
            VerticalNavbarIndexChangedEVT value),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(verticalNavbarIndexChangedEVT != null);
    return accountPageLaunchedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
    Result verticalNavbarIndexChangedEVT(VerticalNavbarIndexChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountPageLaunchedEVT != null) {
      return accountPageLaunchedEVT(this);
    }
    return orElse();
  }
}

abstract class AccountPageLaunchedEVT implements AccountNavigationEvent {
  const factory AccountPageLaunchedEVT({@required BuildContext context}) =
      _$AccountPageLaunchedEVT;

  BuildContext get context;
  $AccountPageLaunchedEVTCopyWith<AccountPageLaunchedEVT> get copyWith;
}

abstract class $PageViewIndexChangedEVTCopyWith<$Res> {
  factory $PageViewIndexChangedEVTCopyWith(PageViewIndexChangedEVT value,
          $Res Function(PageViewIndexChangedEVT) then) =
      _$PageViewIndexChangedEVTCopyWithImpl<$Res>;
  $Res call({int index});
}

class _$PageViewIndexChangedEVTCopyWithImpl<$Res>
    extends _$AccountNavigationEventCopyWithImpl<$Res>
    implements $PageViewIndexChangedEVTCopyWith<$Res> {
  _$PageViewIndexChangedEVTCopyWithImpl(PageViewIndexChangedEVT _value,
      $Res Function(PageViewIndexChangedEVT) _then)
      : super(_value, (v) => _then(v as PageViewIndexChangedEVT));

  @override
  PageViewIndexChangedEVT get _value => super._value as PageViewIndexChangedEVT;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(PageViewIndexChangedEVT(
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$PageViewIndexChangedEVT
    with DiagnosticableTreeMixin
    implements PageViewIndexChangedEVT {
  const _$PageViewIndexChangedEVT(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountNavigationEvent.pageViewIndexChangedEVT(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountNavigationEvent.pageViewIndexChangedEVT'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageViewIndexChangedEVT &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  $PageViewIndexChangedEVTCopyWith<PageViewIndexChangedEVT> get copyWith =>
      _$PageViewIndexChangedEVTCopyWithImpl<PageViewIndexChangedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunchedEVT(BuildContext context),
    @required Result pageViewIndexChangedEVT(int index),
    @required Result resetBlocEVT(),
    @required Result verticalNavbarIndexChangedEVT(int index),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(verticalNavbarIndexChangedEVT != null);
    return pageViewIndexChangedEVT(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunchedEVT(BuildContext context),
    Result pageViewIndexChangedEVT(int index),
    Result resetBlocEVT(),
    Result verticalNavbarIndexChangedEVT(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pageViewIndexChangedEVT != null) {
      return pageViewIndexChangedEVT(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    @required Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
    @required
        Result verticalNavbarIndexChangedEVT(
            VerticalNavbarIndexChangedEVT value),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(verticalNavbarIndexChangedEVT != null);
    return pageViewIndexChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
    Result verticalNavbarIndexChangedEVT(VerticalNavbarIndexChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pageViewIndexChangedEVT != null) {
      return pageViewIndexChangedEVT(this);
    }
    return orElse();
  }
}

abstract class PageViewIndexChangedEVT implements AccountNavigationEvent {
  const factory PageViewIndexChangedEVT(int index) = _$PageViewIndexChangedEVT;

  int get index;
  $PageViewIndexChangedEVTCopyWith<PageViewIndexChangedEVT> get copyWith;
}

abstract class $ResetBlocEVTCopyWith<$Res> {
  factory $ResetBlocEVTCopyWith(
          ResetBlocEVT value, $Res Function(ResetBlocEVT) then) =
      _$ResetBlocEVTCopyWithImpl<$Res>;
}

class _$ResetBlocEVTCopyWithImpl<$Res>
    extends _$AccountNavigationEventCopyWithImpl<$Res>
    implements $ResetBlocEVTCopyWith<$Res> {
  _$ResetBlocEVTCopyWithImpl(
      ResetBlocEVT _value, $Res Function(ResetBlocEVT) _then)
      : super(_value, (v) => _then(v as ResetBlocEVT));

  @override
  ResetBlocEVT get _value => super._value as ResetBlocEVT;
}

class _$ResetBlocEVT with DiagnosticableTreeMixin implements ResetBlocEVT {
  const _$ResetBlocEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountNavigationEvent.resetBlocEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountNavigationEvent.resetBlocEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetBlocEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunchedEVT(BuildContext context),
    @required Result pageViewIndexChangedEVT(int index),
    @required Result resetBlocEVT(),
    @required Result verticalNavbarIndexChangedEVT(int index),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(verticalNavbarIndexChangedEVT != null);
    return resetBlocEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunchedEVT(BuildContext context),
    Result pageViewIndexChangedEVT(int index),
    Result resetBlocEVT(),
    Result verticalNavbarIndexChangedEVT(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetBlocEVT != null) {
      return resetBlocEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    @required Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
    @required
        Result verticalNavbarIndexChangedEVT(
            VerticalNavbarIndexChangedEVT value),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(verticalNavbarIndexChangedEVT != null);
    return resetBlocEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
    Result verticalNavbarIndexChangedEVT(VerticalNavbarIndexChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetBlocEVT != null) {
      return resetBlocEVT(this);
    }
    return orElse();
  }
}

abstract class ResetBlocEVT implements AccountNavigationEvent {
  const factory ResetBlocEVT() = _$ResetBlocEVT;
}

abstract class $VerticalNavbarIndexChangedEVTCopyWith<$Res> {
  factory $VerticalNavbarIndexChangedEVTCopyWith(
          VerticalNavbarIndexChangedEVT value,
          $Res Function(VerticalNavbarIndexChangedEVT) then) =
      _$VerticalNavbarIndexChangedEVTCopyWithImpl<$Res>;
  $Res call({int index});
}

class _$VerticalNavbarIndexChangedEVTCopyWithImpl<$Res>
    extends _$AccountNavigationEventCopyWithImpl<$Res>
    implements $VerticalNavbarIndexChangedEVTCopyWith<$Res> {
  _$VerticalNavbarIndexChangedEVTCopyWithImpl(
      VerticalNavbarIndexChangedEVT _value,
      $Res Function(VerticalNavbarIndexChangedEVT) _then)
      : super(_value, (v) => _then(v as VerticalNavbarIndexChangedEVT));

  @override
  VerticalNavbarIndexChangedEVT get _value =>
      super._value as VerticalNavbarIndexChangedEVT;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(VerticalNavbarIndexChangedEVT(
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$VerticalNavbarIndexChangedEVT
    with DiagnosticableTreeMixin
    implements VerticalNavbarIndexChangedEVT {
  const _$VerticalNavbarIndexChangedEVT(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountNavigationEvent.verticalNavbarIndexChangedEVT(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountNavigationEvent.verticalNavbarIndexChangedEVT'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VerticalNavbarIndexChangedEVT &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  $VerticalNavbarIndexChangedEVTCopyWith<VerticalNavbarIndexChangedEVT>
      get copyWith => _$VerticalNavbarIndexChangedEVTCopyWithImpl<
          VerticalNavbarIndexChangedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunchedEVT(BuildContext context),
    @required Result pageViewIndexChangedEVT(int index),
    @required Result resetBlocEVT(),
    @required Result verticalNavbarIndexChangedEVT(int index),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(verticalNavbarIndexChangedEVT != null);
    return verticalNavbarIndexChangedEVT(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunchedEVT(BuildContext context),
    Result pageViewIndexChangedEVT(int index),
    Result resetBlocEVT(),
    Result verticalNavbarIndexChangedEVT(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verticalNavbarIndexChangedEVT != null) {
      return verticalNavbarIndexChangedEVT(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    @required Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
    @required
        Result verticalNavbarIndexChangedEVT(
            VerticalNavbarIndexChangedEVT value),
  }) {
    assert(accountPageLaunchedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(verticalNavbarIndexChangedEVT != null);
    return verticalNavbarIndexChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunchedEVT(AccountPageLaunchedEVT value),
    Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
    Result verticalNavbarIndexChangedEVT(VerticalNavbarIndexChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verticalNavbarIndexChangedEVT != null) {
      return verticalNavbarIndexChangedEVT(this);
    }
    return orElse();
  }
}

abstract class VerticalNavbarIndexChangedEVT implements AccountNavigationEvent {
  const factory VerticalNavbarIndexChangedEVT(int index) =
      _$VerticalNavbarIndexChangedEVT;

  int get index;
  $VerticalNavbarIndexChangedEVTCopyWith<VerticalNavbarIndexChangedEVT>
      get copyWith;
}

class _$AccountNavigationStateTearOff {
  const _$AccountNavigationStateTearOff();

// ignore: unused_element
  _AccountNavigationState call(
      {@required int currentPageViewIdx,
      @required int currentVerticalNavbarIdx,
      @required List<String> pageViewNavbarItems,
      @required List<String> verticalNavbarItems}) {
    return _AccountNavigationState(
      currentPageViewIdx: currentPageViewIdx,
      currentVerticalNavbarIdx: currentVerticalNavbarIdx,
      pageViewNavbarItems: pageViewNavbarItems,
      verticalNavbarItems: verticalNavbarItems,
    );
  }
}

// ignore: unused_element
const $AccountNavigationState = _$AccountNavigationStateTearOff();

mixin _$AccountNavigationState {
  int get currentPageViewIdx;
  int get currentVerticalNavbarIdx;
  List<String> get pageViewNavbarItems;
  List<String> get verticalNavbarItems;

  $AccountNavigationStateCopyWith<AccountNavigationState> get copyWith;
}

abstract class $AccountNavigationStateCopyWith<$Res> {
  factory $AccountNavigationStateCopyWith(AccountNavigationState value,
          $Res Function(AccountNavigationState) then) =
      _$AccountNavigationStateCopyWithImpl<$Res>;
  $Res call(
      {int currentPageViewIdx,
      int currentVerticalNavbarIdx,
      List<String> pageViewNavbarItems,
      List<String> verticalNavbarItems});
}

class _$AccountNavigationStateCopyWithImpl<$Res>
    implements $AccountNavigationStateCopyWith<$Res> {
  _$AccountNavigationStateCopyWithImpl(this._value, this._then);

  final AccountNavigationState _value;
  // ignore: unused_field
  final $Res Function(AccountNavigationState) _then;

  @override
  $Res call({
    Object currentPageViewIdx = freezed,
    Object currentVerticalNavbarIdx = freezed,
    Object pageViewNavbarItems = freezed,
    Object verticalNavbarItems = freezed,
  }) {
    return _then(_value.copyWith(
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx as int,
      currentVerticalNavbarIdx: currentVerticalNavbarIdx == freezed
          ? _value.currentVerticalNavbarIdx
          : currentVerticalNavbarIdx as int,
      pageViewNavbarItems: pageViewNavbarItems == freezed
          ? _value.pageViewNavbarItems
          : pageViewNavbarItems as List<String>,
      verticalNavbarItems: verticalNavbarItems == freezed
          ? _value.verticalNavbarItems
          : verticalNavbarItems as List<String>,
    ));
  }
}

abstract class _$AccountNavigationStateCopyWith<$Res>
    implements $AccountNavigationStateCopyWith<$Res> {
  factory _$AccountNavigationStateCopyWith(_AccountNavigationState value,
          $Res Function(_AccountNavigationState) then) =
      __$AccountNavigationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int currentPageViewIdx,
      int currentVerticalNavbarIdx,
      List<String> pageViewNavbarItems,
      List<String> verticalNavbarItems});
}

class __$AccountNavigationStateCopyWithImpl<$Res>
    extends _$AccountNavigationStateCopyWithImpl<$Res>
    implements _$AccountNavigationStateCopyWith<$Res> {
  __$AccountNavigationStateCopyWithImpl(_AccountNavigationState _value,
      $Res Function(_AccountNavigationState) _then)
      : super(_value, (v) => _then(v as _AccountNavigationState));

  @override
  _AccountNavigationState get _value => super._value as _AccountNavigationState;

  @override
  $Res call({
    Object currentPageViewIdx = freezed,
    Object currentVerticalNavbarIdx = freezed,
    Object pageViewNavbarItems = freezed,
    Object verticalNavbarItems = freezed,
  }) {
    return _then(_AccountNavigationState(
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx as int,
      currentVerticalNavbarIdx: currentVerticalNavbarIdx == freezed
          ? _value.currentVerticalNavbarIdx
          : currentVerticalNavbarIdx as int,
      pageViewNavbarItems: pageViewNavbarItems == freezed
          ? _value.pageViewNavbarItems
          : pageViewNavbarItems as List<String>,
      verticalNavbarItems: verticalNavbarItems == freezed
          ? _value.verticalNavbarItems
          : verticalNavbarItems as List<String>,
    ));
  }
}

class _$_AccountNavigationState
    with DiagnosticableTreeMixin
    implements _AccountNavigationState {
  const _$_AccountNavigationState(
      {@required this.currentPageViewIdx,
      @required this.currentVerticalNavbarIdx,
      @required this.pageViewNavbarItems,
      @required this.verticalNavbarItems})
      : assert(currentPageViewIdx != null),
        assert(currentVerticalNavbarIdx != null),
        assert(pageViewNavbarItems != null),
        assert(verticalNavbarItems != null);

  @override
  final int currentPageViewIdx;
  @override
  final int currentVerticalNavbarIdx;
  @override
  final List<String> pageViewNavbarItems;
  @override
  final List<String> verticalNavbarItems;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountNavigationState(currentPageViewIdx: $currentPageViewIdx, currentVerticalNavbarIdx: $currentVerticalNavbarIdx, pageViewNavbarItems: $pageViewNavbarItems, verticalNavbarItems: $verticalNavbarItems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountNavigationState'))
      ..add(DiagnosticsProperty('currentPageViewIdx', currentPageViewIdx))
      ..add(DiagnosticsProperty(
          'currentVerticalNavbarIdx', currentVerticalNavbarIdx))
      ..add(DiagnosticsProperty('pageViewNavbarItems', pageViewNavbarItems))
      ..add(DiagnosticsProperty('verticalNavbarItems', verticalNavbarItems));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountNavigationState &&
            (identical(other.currentPageViewIdx, currentPageViewIdx) ||
                const DeepCollectionEquality()
                    .equals(other.currentPageViewIdx, currentPageViewIdx)) &&
            (identical(
                    other.currentVerticalNavbarIdx, currentVerticalNavbarIdx) ||
                const DeepCollectionEquality().equals(
                    other.currentVerticalNavbarIdx,
                    currentVerticalNavbarIdx)) &&
            (identical(other.pageViewNavbarItems, pageViewNavbarItems) ||
                const DeepCollectionEquality()
                    .equals(other.pageViewNavbarItems, pageViewNavbarItems)) &&
            (identical(other.verticalNavbarItems, verticalNavbarItems) ||
                const DeepCollectionEquality()
                    .equals(other.verticalNavbarItems, verticalNavbarItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPageViewIdx) ^
      const DeepCollectionEquality().hash(currentVerticalNavbarIdx) ^
      const DeepCollectionEquality().hash(pageViewNavbarItems) ^
      const DeepCollectionEquality().hash(verticalNavbarItems);

  @override
  _$AccountNavigationStateCopyWith<_AccountNavigationState> get copyWith =>
      __$AccountNavigationStateCopyWithImpl<_AccountNavigationState>(
          this, _$identity);
}

abstract class _AccountNavigationState implements AccountNavigationState {
  const factory _AccountNavigationState(
      {@required int currentPageViewIdx,
      @required int currentVerticalNavbarIdx,
      @required List<String> pageViewNavbarItems,
      @required List<String> verticalNavbarItems}) = _$_AccountNavigationState;

  @override
  int get currentPageViewIdx;
  @override
  int get currentVerticalNavbarIdx;
  @override
  List<String> get pageViewNavbarItems;
  @override
  List<String> get verticalNavbarItems;
  @override
  _$AccountNavigationStateCopyWith<_AccountNavigationState> get copyWith;
}
