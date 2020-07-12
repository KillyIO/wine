// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeNavigationEventTearOff {
  const _$HomeNavigationEventTearOff();

  LeftDrawerIconPressedEVT leftDrawerIconPressedEVT(
      {@required bool isDrawerOpen}) {
    return LeftDrawerIconPressedEVT(
      isDrawerOpen: isDrawerOpen,
    );
  }

  HomePageLaunchedEVT homePageLaunchedEVT({BuildContext context}) {
    return HomePageLaunchedEVT(
      context: context,
    );
  }

  PageViewIndexChangedEVT pageViewIndexChangedEVT({@required int index}) {
    return PageViewIndexChangedEVT(
      index: index,
    );
  }

  ResetBlocEVT resetBlocEVT() {
    return const ResetBlocEVT();
  }

  RightDrawerIconPressedEVT rightDrawerIconPressedEVT(
      {@required bool isDrawerOpen}) {
    return RightDrawerIconPressedEVT(
      isDrawerOpen: isDrawerOpen,
    );
  }
}

// ignore: unused_element
const $HomeNavigationEvent = _$HomeNavigationEventTearOff();

mixin _$HomeNavigationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result leftDrawerIconPressedEVT(bool isDrawerOpen),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result pageViewIndexChangedEVT(int index),
    @required Result resetBlocEVT(),
    @required Result rightDrawerIconPressedEVT(bool isDrawerOpen),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result leftDrawerIconPressedEVT(bool isDrawerOpen),
    Result homePageLaunchedEVT(BuildContext context),
    Result pageViewIndexChangedEVT(int index),
    Result resetBlocEVT(),
    Result rightDrawerIconPressedEVT(bool isDrawerOpen),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result leftDrawerIconPressedEVT(LeftDrawerIconPressedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
    @required Result rightDrawerIconPressedEVT(RightDrawerIconPressedEVT value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result leftDrawerIconPressedEVT(LeftDrawerIconPressedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
    Result rightDrawerIconPressedEVT(RightDrawerIconPressedEVT value),
    @required Result orElse(),
  });
}

abstract class $HomeNavigationEventCopyWith<$Res> {
  factory $HomeNavigationEventCopyWith(
          HomeNavigationEvent value, $Res Function(HomeNavigationEvent) then) =
      _$HomeNavigationEventCopyWithImpl<$Res>;
}

class _$HomeNavigationEventCopyWithImpl<$Res>
    implements $HomeNavigationEventCopyWith<$Res> {
  _$HomeNavigationEventCopyWithImpl(this._value, this._then);

  final HomeNavigationEvent _value;
  // ignore: unused_field
  final $Res Function(HomeNavigationEvent) _then;
}

abstract class $LeftDrawerIconPressedEVTCopyWith<$Res> {
  factory $LeftDrawerIconPressedEVTCopyWith(LeftDrawerIconPressedEVT value,
          $Res Function(LeftDrawerIconPressedEVT) then) =
      _$LeftDrawerIconPressedEVTCopyWithImpl<$Res>;
  $Res call({bool isDrawerOpen});
}

class _$LeftDrawerIconPressedEVTCopyWithImpl<$Res>
    extends _$HomeNavigationEventCopyWithImpl<$Res>
    implements $LeftDrawerIconPressedEVTCopyWith<$Res> {
  _$LeftDrawerIconPressedEVTCopyWithImpl(LeftDrawerIconPressedEVT _value,
      $Res Function(LeftDrawerIconPressedEVT) _then)
      : super(_value, (v) => _then(v as LeftDrawerIconPressedEVT));

  @override
  LeftDrawerIconPressedEVT get _value =>
      super._value as LeftDrawerIconPressedEVT;

  @override
  $Res call({
    Object isDrawerOpen = freezed,
  }) {
    return _then(LeftDrawerIconPressedEVT(
      isDrawerOpen:
          isDrawerOpen == freezed ? _value.isDrawerOpen : isDrawerOpen as bool,
    ));
  }
}

class _$LeftDrawerIconPressedEVT
    with DiagnosticableTreeMixin
    implements LeftDrawerIconPressedEVT {
  const _$LeftDrawerIconPressedEVT({@required this.isDrawerOpen})
      : assert(isDrawerOpen != null);

  @override
  final bool isDrawerOpen;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeNavigationEvent.leftDrawerIconPressedEVT(isDrawerOpen: $isDrawerOpen)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeNavigationEvent.leftDrawerIconPressedEVT'))
      ..add(DiagnosticsProperty('isDrawerOpen', isDrawerOpen));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LeftDrawerIconPressedEVT &&
            (identical(other.isDrawerOpen, isDrawerOpen) ||
                const DeepCollectionEquality()
                    .equals(other.isDrawerOpen, isDrawerOpen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isDrawerOpen);

  @override
  $LeftDrawerIconPressedEVTCopyWith<LeftDrawerIconPressedEVT> get copyWith =>
      _$LeftDrawerIconPressedEVTCopyWithImpl<LeftDrawerIconPressedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result leftDrawerIconPressedEVT(bool isDrawerOpen),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result pageViewIndexChangedEVT(int index),
    @required Result resetBlocEVT(),
    @required Result rightDrawerIconPressedEVT(bool isDrawerOpen),
  }) {
    assert(leftDrawerIconPressedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(rightDrawerIconPressedEVT != null);
    return leftDrawerIconPressedEVT(isDrawerOpen);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result leftDrawerIconPressedEVT(bool isDrawerOpen),
    Result homePageLaunchedEVT(BuildContext context),
    Result pageViewIndexChangedEVT(int index),
    Result resetBlocEVT(),
    Result rightDrawerIconPressedEVT(bool isDrawerOpen),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (leftDrawerIconPressedEVT != null) {
      return leftDrawerIconPressedEVT(isDrawerOpen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result leftDrawerIconPressedEVT(LeftDrawerIconPressedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
    @required Result rightDrawerIconPressedEVT(RightDrawerIconPressedEVT value),
  }) {
    assert(leftDrawerIconPressedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(rightDrawerIconPressedEVT != null);
    return leftDrawerIconPressedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result leftDrawerIconPressedEVT(LeftDrawerIconPressedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
    Result rightDrawerIconPressedEVT(RightDrawerIconPressedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (leftDrawerIconPressedEVT != null) {
      return leftDrawerIconPressedEVT(this);
    }
    return orElse();
  }
}

abstract class LeftDrawerIconPressedEVT implements HomeNavigationEvent {
  const factory LeftDrawerIconPressedEVT({@required bool isDrawerOpen}) =
      _$LeftDrawerIconPressedEVT;

  bool get isDrawerOpen;
  $LeftDrawerIconPressedEVTCopyWith<LeftDrawerIconPressedEVT> get copyWith;
}

abstract class $HomePageLaunchedEVTCopyWith<$Res> {
  factory $HomePageLaunchedEVTCopyWith(
          HomePageLaunchedEVT value, $Res Function(HomePageLaunchedEVT) then) =
      _$HomePageLaunchedEVTCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

class _$HomePageLaunchedEVTCopyWithImpl<$Res>
    extends _$HomeNavigationEventCopyWithImpl<$Res>
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
    return 'HomeNavigationEvent.homePageLaunchedEVT(context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeNavigationEvent.homePageLaunchedEVT'))
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
    @required Result leftDrawerIconPressedEVT(bool isDrawerOpen),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result pageViewIndexChangedEVT(int index),
    @required Result resetBlocEVT(),
    @required Result rightDrawerIconPressedEVT(bool isDrawerOpen),
  }) {
    assert(leftDrawerIconPressedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(rightDrawerIconPressedEVT != null);
    return homePageLaunchedEVT(context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result leftDrawerIconPressedEVT(bool isDrawerOpen),
    Result homePageLaunchedEVT(BuildContext context),
    Result pageViewIndexChangedEVT(int index),
    Result resetBlocEVT(),
    Result rightDrawerIconPressedEVT(bool isDrawerOpen),
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
    @required Result leftDrawerIconPressedEVT(LeftDrawerIconPressedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
    @required Result rightDrawerIconPressedEVT(RightDrawerIconPressedEVT value),
  }) {
    assert(leftDrawerIconPressedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(rightDrawerIconPressedEVT != null);
    return homePageLaunchedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result leftDrawerIconPressedEVT(LeftDrawerIconPressedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
    Result rightDrawerIconPressedEVT(RightDrawerIconPressedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (homePageLaunchedEVT != null) {
      return homePageLaunchedEVT(this);
    }
    return orElse();
  }
}

abstract class HomePageLaunchedEVT implements HomeNavigationEvent {
  const factory HomePageLaunchedEVT({BuildContext context}) =
      _$HomePageLaunchedEVT;

  BuildContext get context;
  $HomePageLaunchedEVTCopyWith<HomePageLaunchedEVT> get copyWith;
}

abstract class $PageViewIndexChangedEVTCopyWith<$Res> {
  factory $PageViewIndexChangedEVTCopyWith(PageViewIndexChangedEVT value,
          $Res Function(PageViewIndexChangedEVT) then) =
      _$PageViewIndexChangedEVTCopyWithImpl<$Res>;
  $Res call({int index});
}

class _$PageViewIndexChangedEVTCopyWithImpl<$Res>
    extends _$HomeNavigationEventCopyWithImpl<$Res>
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
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

class _$PageViewIndexChangedEVT
    with DiagnosticableTreeMixin
    implements PageViewIndexChangedEVT {
  const _$PageViewIndexChangedEVT({@required this.index})
      : assert(index != null);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeNavigationEvent.pageViewIndexChangedEVT(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeNavigationEvent.pageViewIndexChangedEVT'))
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
    @required Result leftDrawerIconPressedEVT(bool isDrawerOpen),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result pageViewIndexChangedEVT(int index),
    @required Result resetBlocEVT(),
    @required Result rightDrawerIconPressedEVT(bool isDrawerOpen),
  }) {
    assert(leftDrawerIconPressedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(rightDrawerIconPressedEVT != null);
    return pageViewIndexChangedEVT(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result leftDrawerIconPressedEVT(bool isDrawerOpen),
    Result homePageLaunchedEVT(BuildContext context),
    Result pageViewIndexChangedEVT(int index),
    Result resetBlocEVT(),
    Result rightDrawerIconPressedEVT(bool isDrawerOpen),
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
    @required Result leftDrawerIconPressedEVT(LeftDrawerIconPressedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
    @required Result rightDrawerIconPressedEVT(RightDrawerIconPressedEVT value),
  }) {
    assert(leftDrawerIconPressedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(rightDrawerIconPressedEVT != null);
    return pageViewIndexChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result leftDrawerIconPressedEVT(LeftDrawerIconPressedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
    Result rightDrawerIconPressedEVT(RightDrawerIconPressedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pageViewIndexChangedEVT != null) {
      return pageViewIndexChangedEVT(this);
    }
    return orElse();
  }
}

abstract class PageViewIndexChangedEVT implements HomeNavigationEvent {
  const factory PageViewIndexChangedEVT({@required int index}) =
      _$PageViewIndexChangedEVT;

  int get index;
  $PageViewIndexChangedEVTCopyWith<PageViewIndexChangedEVT> get copyWith;
}

abstract class $ResetBlocEVTCopyWith<$Res> {
  factory $ResetBlocEVTCopyWith(
          ResetBlocEVT value, $Res Function(ResetBlocEVT) then) =
      _$ResetBlocEVTCopyWithImpl<$Res>;
}

class _$ResetBlocEVTCopyWithImpl<$Res>
    extends _$HomeNavigationEventCopyWithImpl<$Res>
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
    return 'HomeNavigationEvent.resetBlocEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeNavigationEvent.resetBlocEVT'));
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
    @required Result leftDrawerIconPressedEVT(bool isDrawerOpen),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result pageViewIndexChangedEVT(int index),
    @required Result resetBlocEVT(),
    @required Result rightDrawerIconPressedEVT(bool isDrawerOpen),
  }) {
    assert(leftDrawerIconPressedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(rightDrawerIconPressedEVT != null);
    return resetBlocEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result leftDrawerIconPressedEVT(bool isDrawerOpen),
    Result homePageLaunchedEVT(BuildContext context),
    Result pageViewIndexChangedEVT(int index),
    Result resetBlocEVT(),
    Result rightDrawerIconPressedEVT(bool isDrawerOpen),
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
    @required Result leftDrawerIconPressedEVT(LeftDrawerIconPressedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
    @required Result rightDrawerIconPressedEVT(RightDrawerIconPressedEVT value),
  }) {
    assert(leftDrawerIconPressedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(rightDrawerIconPressedEVT != null);
    return resetBlocEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result leftDrawerIconPressedEVT(LeftDrawerIconPressedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
    Result rightDrawerIconPressedEVT(RightDrawerIconPressedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetBlocEVT != null) {
      return resetBlocEVT(this);
    }
    return orElse();
  }
}

abstract class ResetBlocEVT implements HomeNavigationEvent {
  const factory ResetBlocEVT() = _$ResetBlocEVT;
}

abstract class $RightDrawerIconPressedEVTCopyWith<$Res> {
  factory $RightDrawerIconPressedEVTCopyWith(RightDrawerIconPressedEVT value,
          $Res Function(RightDrawerIconPressedEVT) then) =
      _$RightDrawerIconPressedEVTCopyWithImpl<$Res>;
  $Res call({bool isDrawerOpen});
}

class _$RightDrawerIconPressedEVTCopyWithImpl<$Res>
    extends _$HomeNavigationEventCopyWithImpl<$Res>
    implements $RightDrawerIconPressedEVTCopyWith<$Res> {
  _$RightDrawerIconPressedEVTCopyWithImpl(RightDrawerIconPressedEVT _value,
      $Res Function(RightDrawerIconPressedEVT) _then)
      : super(_value, (v) => _then(v as RightDrawerIconPressedEVT));

  @override
  RightDrawerIconPressedEVT get _value =>
      super._value as RightDrawerIconPressedEVT;

  @override
  $Res call({
    Object isDrawerOpen = freezed,
  }) {
    return _then(RightDrawerIconPressedEVT(
      isDrawerOpen:
          isDrawerOpen == freezed ? _value.isDrawerOpen : isDrawerOpen as bool,
    ));
  }
}

class _$RightDrawerIconPressedEVT
    with DiagnosticableTreeMixin
    implements RightDrawerIconPressedEVT {
  const _$RightDrawerIconPressedEVT({@required this.isDrawerOpen})
      : assert(isDrawerOpen != null);

  @override
  final bool isDrawerOpen;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeNavigationEvent.rightDrawerIconPressedEVT(isDrawerOpen: $isDrawerOpen)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeNavigationEvent.rightDrawerIconPressedEVT'))
      ..add(DiagnosticsProperty('isDrawerOpen', isDrawerOpen));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RightDrawerIconPressedEVT &&
            (identical(other.isDrawerOpen, isDrawerOpen) ||
                const DeepCollectionEquality()
                    .equals(other.isDrawerOpen, isDrawerOpen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isDrawerOpen);

  @override
  $RightDrawerIconPressedEVTCopyWith<RightDrawerIconPressedEVT> get copyWith =>
      _$RightDrawerIconPressedEVTCopyWithImpl<RightDrawerIconPressedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result leftDrawerIconPressedEVT(bool isDrawerOpen),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result pageViewIndexChangedEVT(int index),
    @required Result resetBlocEVT(),
    @required Result rightDrawerIconPressedEVT(bool isDrawerOpen),
  }) {
    assert(leftDrawerIconPressedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(rightDrawerIconPressedEVT != null);
    return rightDrawerIconPressedEVT(isDrawerOpen);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result leftDrawerIconPressedEVT(bool isDrawerOpen),
    Result homePageLaunchedEVT(BuildContext context),
    Result pageViewIndexChangedEVT(int index),
    Result resetBlocEVT(),
    Result rightDrawerIconPressedEVT(bool isDrawerOpen),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rightDrawerIconPressedEVT != null) {
      return rightDrawerIconPressedEVT(isDrawerOpen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result leftDrawerIconPressedEVT(LeftDrawerIconPressedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
    @required Result rightDrawerIconPressedEVT(RightDrawerIconPressedEVT value),
  }) {
    assert(leftDrawerIconPressedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(rightDrawerIconPressedEVT != null);
    return rightDrawerIconPressedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result leftDrawerIconPressedEVT(LeftDrawerIconPressedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
    Result rightDrawerIconPressedEVT(RightDrawerIconPressedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rightDrawerIconPressedEVT != null) {
      return rightDrawerIconPressedEVT(this);
    }
    return orElse();
  }
}

abstract class RightDrawerIconPressedEVT implements HomeNavigationEvent {
  const factory RightDrawerIconPressedEVT({@required bool isDrawerOpen}) =
      _$RightDrawerIconPressedEVT;

  bool get isDrawerOpen;
  $RightDrawerIconPressedEVTCopyWith<RightDrawerIconPressedEVT> get copyWith;
}

class _$HomeNavigationStateTearOff {
  const _$HomeNavigationStateTearOff();

  _HomeNavigationState call(
      {@required bool isLeftDrawerOpen,
      @required bool isRightDrawerOpen,
      @required int currentPageViewIdx,
      @required List<String> pageViewNavbarItems}) {
    return _HomeNavigationState(
      isLeftDrawerOpen: isLeftDrawerOpen,
      isRightDrawerOpen: isRightDrawerOpen,
      currentPageViewIdx: currentPageViewIdx,
      pageViewNavbarItems: pageViewNavbarItems,
    );
  }
}

// ignore: unused_element
const $HomeNavigationState = _$HomeNavigationStateTearOff();

mixin _$HomeNavigationState {
  bool get isLeftDrawerOpen;
  bool get isRightDrawerOpen;
  int get currentPageViewIdx;
  List<String> get pageViewNavbarItems;

  $HomeNavigationStateCopyWith<HomeNavigationState> get copyWith;
}

abstract class $HomeNavigationStateCopyWith<$Res> {
  factory $HomeNavigationStateCopyWith(
          HomeNavigationState value, $Res Function(HomeNavigationState) then) =
      _$HomeNavigationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLeftDrawerOpen,
      bool isRightDrawerOpen,
      int currentPageViewIdx,
      List<String> pageViewNavbarItems});
}

class _$HomeNavigationStateCopyWithImpl<$Res>
    implements $HomeNavigationStateCopyWith<$Res> {
  _$HomeNavigationStateCopyWithImpl(this._value, this._then);

  final HomeNavigationState _value;
  // ignore: unused_field
  final $Res Function(HomeNavigationState) _then;

  @override
  $Res call({
    Object isLeftDrawerOpen = freezed,
    Object isRightDrawerOpen = freezed,
    Object currentPageViewIdx = freezed,
    Object pageViewNavbarItems = freezed,
  }) {
    return _then(_value.copyWith(
      isLeftDrawerOpen: isLeftDrawerOpen == freezed
          ? _value.isLeftDrawerOpen
          : isLeftDrawerOpen as bool,
      isRightDrawerOpen: isRightDrawerOpen == freezed
          ? _value.isRightDrawerOpen
          : isRightDrawerOpen as bool,
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx as int,
      pageViewNavbarItems: pageViewNavbarItems == freezed
          ? _value.pageViewNavbarItems
          : pageViewNavbarItems as List<String>,
    ));
  }
}

abstract class _$HomeNavigationStateCopyWith<$Res>
    implements $HomeNavigationStateCopyWith<$Res> {
  factory _$HomeNavigationStateCopyWith(_HomeNavigationState value,
          $Res Function(_HomeNavigationState) then) =
      __$HomeNavigationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLeftDrawerOpen,
      bool isRightDrawerOpen,
      int currentPageViewIdx,
      List<String> pageViewNavbarItems});
}

class __$HomeNavigationStateCopyWithImpl<$Res>
    extends _$HomeNavigationStateCopyWithImpl<$Res>
    implements _$HomeNavigationStateCopyWith<$Res> {
  __$HomeNavigationStateCopyWithImpl(
      _HomeNavigationState _value, $Res Function(_HomeNavigationState) _then)
      : super(_value, (v) => _then(v as _HomeNavigationState));

  @override
  _HomeNavigationState get _value => super._value as _HomeNavigationState;

  @override
  $Res call({
    Object isLeftDrawerOpen = freezed,
    Object isRightDrawerOpen = freezed,
    Object currentPageViewIdx = freezed,
    Object pageViewNavbarItems = freezed,
  }) {
    return _then(_HomeNavigationState(
      isLeftDrawerOpen: isLeftDrawerOpen == freezed
          ? _value.isLeftDrawerOpen
          : isLeftDrawerOpen as bool,
      isRightDrawerOpen: isRightDrawerOpen == freezed
          ? _value.isRightDrawerOpen
          : isRightDrawerOpen as bool,
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx as int,
      pageViewNavbarItems: pageViewNavbarItems == freezed
          ? _value.pageViewNavbarItems
          : pageViewNavbarItems as List<String>,
    ));
  }
}

class _$_HomeNavigationState
    with DiagnosticableTreeMixin
    implements _HomeNavigationState {
  const _$_HomeNavigationState(
      {@required this.isLeftDrawerOpen,
      @required this.isRightDrawerOpen,
      @required this.currentPageViewIdx,
      @required this.pageViewNavbarItems})
      : assert(isLeftDrawerOpen != null),
        assert(isRightDrawerOpen != null),
        assert(currentPageViewIdx != null),
        assert(pageViewNavbarItems != null);

  @override
  final bool isLeftDrawerOpen;
  @override
  final bool isRightDrawerOpen;
  @override
  final int currentPageViewIdx;
  @override
  final List<String> pageViewNavbarItems;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeNavigationState(isLeftDrawerOpen: $isLeftDrawerOpen, isRightDrawerOpen: $isRightDrawerOpen, currentPageViewIdx: $currentPageViewIdx, pageViewNavbarItems: $pageViewNavbarItems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeNavigationState'))
      ..add(DiagnosticsProperty('isLeftDrawerOpen', isLeftDrawerOpen))
      ..add(DiagnosticsProperty('isRightDrawerOpen', isRightDrawerOpen))
      ..add(DiagnosticsProperty('currentPageViewIdx', currentPageViewIdx))
      ..add(DiagnosticsProperty('pageViewNavbarItems', pageViewNavbarItems));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeNavigationState &&
            (identical(other.isLeftDrawerOpen, isLeftDrawerOpen) ||
                const DeepCollectionEquality()
                    .equals(other.isLeftDrawerOpen, isLeftDrawerOpen)) &&
            (identical(other.isRightDrawerOpen, isRightDrawerOpen) ||
                const DeepCollectionEquality()
                    .equals(other.isRightDrawerOpen, isRightDrawerOpen)) &&
            (identical(other.currentPageViewIdx, currentPageViewIdx) ||
                const DeepCollectionEquality()
                    .equals(other.currentPageViewIdx, currentPageViewIdx)) &&
            (identical(other.pageViewNavbarItems, pageViewNavbarItems) ||
                const DeepCollectionEquality()
                    .equals(other.pageViewNavbarItems, pageViewNavbarItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLeftDrawerOpen) ^
      const DeepCollectionEquality().hash(isRightDrawerOpen) ^
      const DeepCollectionEquality().hash(currentPageViewIdx) ^
      const DeepCollectionEquality().hash(pageViewNavbarItems);

  @override
  _$HomeNavigationStateCopyWith<_HomeNavigationState> get copyWith =>
      __$HomeNavigationStateCopyWithImpl<_HomeNavigationState>(
          this, _$identity);
}

abstract class _HomeNavigationState implements HomeNavigationState {
  const factory _HomeNavigationState(
      {@required bool isLeftDrawerOpen,
      @required bool isRightDrawerOpen,
      @required int currentPageViewIdx,
      @required List<String> pageViewNavbarItems}) = _$_HomeNavigationState;

  @override
  bool get isLeftDrawerOpen;
  @override
  bool get isRightDrawerOpen;
  @override
  int get currentPageViewIdx;
  @override
  List<String> get pageViewNavbarItems;
  @override
  _$HomeNavigationStateCopyWith<_HomeNavigationState> get copyWith;
}
