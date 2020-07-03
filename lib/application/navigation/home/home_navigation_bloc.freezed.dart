// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeNavigationEventTearOff {
  const _$HomeNavigationEventTearOff();

  DrawerIconPressedEVT drawerIconPressedEVT({@required bool isDrawerOpen}) {
    return DrawerIconPressedEVT(
      isDrawerOpen: isDrawerOpen,
    );
  }

  HomePageLaunchedEVT homePageLaunchedEVT({BuildContext context}) {
    return HomePageLaunchedEVT(
      context: context,
    );
  }

  NewSeriesIconPressedEVT newSeriesIconPressedEVT(
      {@required bool isNewSeriesPageOpen}) {
    return NewSeriesIconPressedEVT(
      isNewSeriesPageOpen: isNewSeriesPageOpen,
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
}

// ignore: unused_element
const $HomeNavigationEvent = _$HomeNavigationEventTearOff();

mixin _$HomeNavigationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result drawerIconPressedEVT(bool isDrawerOpen),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result newSeriesIconPressedEVT(bool isNewSeriesPageOpen),
    @required Result pageViewIndexChangedEVT(int index),
    @required Result resetBlocEVT(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result drawerIconPressedEVT(bool isDrawerOpen),
    Result homePageLaunchedEVT(BuildContext context),
    Result newSeriesIconPressedEVT(bool isNewSeriesPageOpen),
    Result pageViewIndexChangedEVT(int index),
    Result resetBlocEVT(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result drawerIconPressedEVT(DrawerIconPressedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required Result newSeriesIconPressedEVT(NewSeriesIconPressedEVT value),
    @required Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result drawerIconPressedEVT(DrawerIconPressedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result newSeriesIconPressedEVT(NewSeriesIconPressedEVT value),
    Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
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

abstract class $DrawerIconPressedEVTCopyWith<$Res> {
  factory $DrawerIconPressedEVTCopyWith(DrawerIconPressedEVT value,
          $Res Function(DrawerIconPressedEVT) then) =
      _$DrawerIconPressedEVTCopyWithImpl<$Res>;
  $Res call({bool isDrawerOpen});
}

class _$DrawerIconPressedEVTCopyWithImpl<$Res>
    extends _$HomeNavigationEventCopyWithImpl<$Res>
    implements $DrawerIconPressedEVTCopyWith<$Res> {
  _$DrawerIconPressedEVTCopyWithImpl(
      DrawerIconPressedEVT _value, $Res Function(DrawerIconPressedEVT) _then)
      : super(_value, (v) => _then(v as DrawerIconPressedEVT));

  @override
  DrawerIconPressedEVT get _value => super._value as DrawerIconPressedEVT;

  @override
  $Res call({
    Object isDrawerOpen = freezed,
  }) {
    return _then(DrawerIconPressedEVT(
      isDrawerOpen:
          isDrawerOpen == freezed ? _value.isDrawerOpen : isDrawerOpen as bool,
    ));
  }
}

class _$DrawerIconPressedEVT
    with DiagnosticableTreeMixin
    implements DrawerIconPressedEVT {
  const _$DrawerIconPressedEVT({@required this.isDrawerOpen})
      : assert(isDrawerOpen != null);

  @override
  final bool isDrawerOpen;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeNavigationEvent.drawerIconPressedEVT(isDrawerOpen: $isDrawerOpen)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeNavigationEvent.drawerIconPressedEVT'))
      ..add(DiagnosticsProperty('isDrawerOpen', isDrawerOpen));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DrawerIconPressedEVT &&
            (identical(other.isDrawerOpen, isDrawerOpen) ||
                const DeepCollectionEquality()
                    .equals(other.isDrawerOpen, isDrawerOpen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isDrawerOpen);

  @override
  $DrawerIconPressedEVTCopyWith<DrawerIconPressedEVT> get copyWith =>
      _$DrawerIconPressedEVTCopyWithImpl<DrawerIconPressedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result drawerIconPressedEVT(bool isDrawerOpen),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result newSeriesIconPressedEVT(bool isNewSeriesPageOpen),
    @required Result pageViewIndexChangedEVT(int index),
    @required Result resetBlocEVT(),
  }) {
    assert(drawerIconPressedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(newSeriesIconPressedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    return drawerIconPressedEVT(isDrawerOpen);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result drawerIconPressedEVT(bool isDrawerOpen),
    Result homePageLaunchedEVT(BuildContext context),
    Result newSeriesIconPressedEVT(bool isNewSeriesPageOpen),
    Result pageViewIndexChangedEVT(int index),
    Result resetBlocEVT(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (drawerIconPressedEVT != null) {
      return drawerIconPressedEVT(isDrawerOpen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result drawerIconPressedEVT(DrawerIconPressedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required Result newSeriesIconPressedEVT(NewSeriesIconPressedEVT value),
    @required Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
  }) {
    assert(drawerIconPressedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(newSeriesIconPressedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    return drawerIconPressedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result drawerIconPressedEVT(DrawerIconPressedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result newSeriesIconPressedEVT(NewSeriesIconPressedEVT value),
    Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (drawerIconPressedEVT != null) {
      return drawerIconPressedEVT(this);
    }
    return orElse();
  }
}

abstract class DrawerIconPressedEVT implements HomeNavigationEvent {
  const factory DrawerIconPressedEVT({@required bool isDrawerOpen}) =
      _$DrawerIconPressedEVT;

  bool get isDrawerOpen;
  $DrawerIconPressedEVTCopyWith<DrawerIconPressedEVT> get copyWith;
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
    @required Result drawerIconPressedEVT(bool isDrawerOpen),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result newSeriesIconPressedEVT(bool isNewSeriesPageOpen),
    @required Result pageViewIndexChangedEVT(int index),
    @required Result resetBlocEVT(),
  }) {
    assert(drawerIconPressedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(newSeriesIconPressedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    return homePageLaunchedEVT(context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result drawerIconPressedEVT(bool isDrawerOpen),
    Result homePageLaunchedEVT(BuildContext context),
    Result newSeriesIconPressedEVT(bool isNewSeriesPageOpen),
    Result pageViewIndexChangedEVT(int index),
    Result resetBlocEVT(),
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
    @required Result drawerIconPressedEVT(DrawerIconPressedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required Result newSeriesIconPressedEVT(NewSeriesIconPressedEVT value),
    @required Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
  }) {
    assert(drawerIconPressedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(newSeriesIconPressedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    return homePageLaunchedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result drawerIconPressedEVT(DrawerIconPressedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result newSeriesIconPressedEVT(NewSeriesIconPressedEVT value),
    Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
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

abstract class $NewSeriesIconPressedEVTCopyWith<$Res> {
  factory $NewSeriesIconPressedEVTCopyWith(NewSeriesIconPressedEVT value,
          $Res Function(NewSeriesIconPressedEVT) then) =
      _$NewSeriesIconPressedEVTCopyWithImpl<$Res>;
  $Res call({bool isNewSeriesPageOpen});
}

class _$NewSeriesIconPressedEVTCopyWithImpl<$Res>
    extends _$HomeNavigationEventCopyWithImpl<$Res>
    implements $NewSeriesIconPressedEVTCopyWith<$Res> {
  _$NewSeriesIconPressedEVTCopyWithImpl(NewSeriesIconPressedEVT _value,
      $Res Function(NewSeriesIconPressedEVT) _then)
      : super(_value, (v) => _then(v as NewSeriesIconPressedEVT));

  @override
  NewSeriesIconPressedEVT get _value => super._value as NewSeriesIconPressedEVT;

  @override
  $Res call({
    Object isNewSeriesPageOpen = freezed,
  }) {
    return _then(NewSeriesIconPressedEVT(
      isNewSeriesPageOpen: isNewSeriesPageOpen == freezed
          ? _value.isNewSeriesPageOpen
          : isNewSeriesPageOpen as bool,
    ));
  }
}

class _$NewSeriesIconPressedEVT
    with DiagnosticableTreeMixin
    implements NewSeriesIconPressedEVT {
  const _$NewSeriesIconPressedEVT({@required this.isNewSeriesPageOpen})
      : assert(isNewSeriesPageOpen != null);

  @override
  final bool isNewSeriesPageOpen;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeNavigationEvent.newSeriesIconPressedEVT(isNewSeriesPageOpen: $isNewSeriesPageOpen)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeNavigationEvent.newSeriesIconPressedEVT'))
      ..add(DiagnosticsProperty('isNewSeriesPageOpen', isNewSeriesPageOpen));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewSeriesIconPressedEVT &&
            (identical(other.isNewSeriesPageOpen, isNewSeriesPageOpen) ||
                const DeepCollectionEquality()
                    .equals(other.isNewSeriesPageOpen, isNewSeriesPageOpen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isNewSeriesPageOpen);

  @override
  $NewSeriesIconPressedEVTCopyWith<NewSeriesIconPressedEVT> get copyWith =>
      _$NewSeriesIconPressedEVTCopyWithImpl<NewSeriesIconPressedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result drawerIconPressedEVT(bool isDrawerOpen),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result newSeriesIconPressedEVT(bool isNewSeriesPageOpen),
    @required Result pageViewIndexChangedEVT(int index),
    @required Result resetBlocEVT(),
  }) {
    assert(drawerIconPressedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(newSeriesIconPressedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    return newSeriesIconPressedEVT(isNewSeriesPageOpen);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result drawerIconPressedEVT(bool isDrawerOpen),
    Result homePageLaunchedEVT(BuildContext context),
    Result newSeriesIconPressedEVT(bool isNewSeriesPageOpen),
    Result pageViewIndexChangedEVT(int index),
    Result resetBlocEVT(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newSeriesIconPressedEVT != null) {
      return newSeriesIconPressedEVT(isNewSeriesPageOpen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result drawerIconPressedEVT(DrawerIconPressedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required Result newSeriesIconPressedEVT(NewSeriesIconPressedEVT value),
    @required Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
  }) {
    assert(drawerIconPressedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(newSeriesIconPressedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    return newSeriesIconPressedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result drawerIconPressedEVT(DrawerIconPressedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result newSeriesIconPressedEVT(NewSeriesIconPressedEVT value),
    Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newSeriesIconPressedEVT != null) {
      return newSeriesIconPressedEVT(this);
    }
    return orElse();
  }
}

abstract class NewSeriesIconPressedEVT implements HomeNavigationEvent {
  const factory NewSeriesIconPressedEVT({@required bool isNewSeriesPageOpen}) =
      _$NewSeriesIconPressedEVT;

  bool get isNewSeriesPageOpen;
  $NewSeriesIconPressedEVTCopyWith<NewSeriesIconPressedEVT> get copyWith;
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
    @required Result drawerIconPressedEVT(bool isDrawerOpen),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result newSeriesIconPressedEVT(bool isNewSeriesPageOpen),
    @required Result pageViewIndexChangedEVT(int index),
    @required Result resetBlocEVT(),
  }) {
    assert(drawerIconPressedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(newSeriesIconPressedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    return pageViewIndexChangedEVT(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result drawerIconPressedEVT(bool isDrawerOpen),
    Result homePageLaunchedEVT(BuildContext context),
    Result newSeriesIconPressedEVT(bool isNewSeriesPageOpen),
    Result pageViewIndexChangedEVT(int index),
    Result resetBlocEVT(),
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
    @required Result drawerIconPressedEVT(DrawerIconPressedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required Result newSeriesIconPressedEVT(NewSeriesIconPressedEVT value),
    @required Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
  }) {
    assert(drawerIconPressedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(newSeriesIconPressedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    return pageViewIndexChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result drawerIconPressedEVT(DrawerIconPressedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result newSeriesIconPressedEVT(NewSeriesIconPressedEVT value),
    Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
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
    @required Result drawerIconPressedEVT(bool isDrawerOpen),
    @required Result homePageLaunchedEVT(BuildContext context),
    @required Result newSeriesIconPressedEVT(bool isNewSeriesPageOpen),
    @required Result pageViewIndexChangedEVT(int index),
    @required Result resetBlocEVT(),
  }) {
    assert(drawerIconPressedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(newSeriesIconPressedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    return resetBlocEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result drawerIconPressedEVT(bool isDrawerOpen),
    Result homePageLaunchedEVT(BuildContext context),
    Result newSeriesIconPressedEVT(bool isNewSeriesPageOpen),
    Result pageViewIndexChangedEVT(int index),
    Result resetBlocEVT(),
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
    @required Result drawerIconPressedEVT(DrawerIconPressedEVT value),
    @required Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    @required Result newSeriesIconPressedEVT(NewSeriesIconPressedEVT value),
    @required Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
  }) {
    assert(drawerIconPressedEVT != null);
    assert(homePageLaunchedEVT != null);
    assert(newSeriesIconPressedEVT != null);
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    return resetBlocEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result drawerIconPressedEVT(DrawerIconPressedEVT value),
    Result homePageLaunchedEVT(HomePageLaunchedEVT value),
    Result newSeriesIconPressedEVT(NewSeriesIconPressedEVT value),
    Result pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
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

class _$HomeNavigationStateTearOff {
  const _$HomeNavigationStateTearOff();

  _HomeNavigationState call(
      {@required bool isDrawerOpen,
      @required bool isNewSeriesPageOpen,
      @required int currentPageViewIdx,
      @required List<String> pageViewNavbarItems}) {
    return _HomeNavigationState(
      isDrawerOpen: isDrawerOpen,
      isNewSeriesPageOpen: isNewSeriesPageOpen,
      currentPageViewIdx: currentPageViewIdx,
      pageViewNavbarItems: pageViewNavbarItems,
    );
  }
}

// ignore: unused_element
const $HomeNavigationState = _$HomeNavigationStateTearOff();

mixin _$HomeNavigationState {
  bool get isDrawerOpen;
  bool get isNewSeriesPageOpen;
  int get currentPageViewIdx;
  List<String> get pageViewNavbarItems;

  $HomeNavigationStateCopyWith<HomeNavigationState> get copyWith;
}

abstract class $HomeNavigationStateCopyWith<$Res> {
  factory $HomeNavigationStateCopyWith(
          HomeNavigationState value, $Res Function(HomeNavigationState) then) =
      _$HomeNavigationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isDrawerOpen,
      bool isNewSeriesPageOpen,
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
    Object isDrawerOpen = freezed,
    Object isNewSeriesPageOpen = freezed,
    Object currentPageViewIdx = freezed,
    Object pageViewNavbarItems = freezed,
  }) {
    return _then(_value.copyWith(
      isDrawerOpen:
          isDrawerOpen == freezed ? _value.isDrawerOpen : isDrawerOpen as bool,
      isNewSeriesPageOpen: isNewSeriesPageOpen == freezed
          ? _value.isNewSeriesPageOpen
          : isNewSeriesPageOpen as bool,
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
      {bool isDrawerOpen,
      bool isNewSeriesPageOpen,
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
    Object isDrawerOpen = freezed,
    Object isNewSeriesPageOpen = freezed,
    Object currentPageViewIdx = freezed,
    Object pageViewNavbarItems = freezed,
  }) {
    return _then(_HomeNavigationState(
      isDrawerOpen:
          isDrawerOpen == freezed ? _value.isDrawerOpen : isDrawerOpen as bool,
      isNewSeriesPageOpen: isNewSeriesPageOpen == freezed
          ? _value.isNewSeriesPageOpen
          : isNewSeriesPageOpen as bool,
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
      {@required this.isDrawerOpen,
      @required this.isNewSeriesPageOpen,
      @required this.currentPageViewIdx,
      @required this.pageViewNavbarItems})
      : assert(isDrawerOpen != null),
        assert(isNewSeriesPageOpen != null),
        assert(currentPageViewIdx != null),
        assert(pageViewNavbarItems != null);

  @override
  final bool isDrawerOpen;
  @override
  final bool isNewSeriesPageOpen;
  @override
  final int currentPageViewIdx;
  @override
  final List<String> pageViewNavbarItems;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeNavigationState(isDrawerOpen: $isDrawerOpen, isNewSeriesPageOpen: $isNewSeriesPageOpen, currentPageViewIdx: $currentPageViewIdx, pageViewNavbarItems: $pageViewNavbarItems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeNavigationState'))
      ..add(DiagnosticsProperty('isDrawerOpen', isDrawerOpen))
      ..add(DiagnosticsProperty('isNewSeriesPageOpen', isNewSeriesPageOpen))
      ..add(DiagnosticsProperty('currentPageViewIdx', currentPageViewIdx))
      ..add(DiagnosticsProperty('pageViewNavbarItems', pageViewNavbarItems));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeNavigationState &&
            (identical(other.isDrawerOpen, isDrawerOpen) ||
                const DeepCollectionEquality()
                    .equals(other.isDrawerOpen, isDrawerOpen)) &&
            (identical(other.isNewSeriesPageOpen, isNewSeriesPageOpen) ||
                const DeepCollectionEquality()
                    .equals(other.isNewSeriesPageOpen, isNewSeriesPageOpen)) &&
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
      const DeepCollectionEquality().hash(isDrawerOpen) ^
      const DeepCollectionEquality().hash(isNewSeriesPageOpen) ^
      const DeepCollectionEquality().hash(currentPageViewIdx) ^
      const DeepCollectionEquality().hash(pageViewNavbarItems);

  @override
  _$HomeNavigationStateCopyWith<_HomeNavigationState> get copyWith =>
      __$HomeNavigationStateCopyWithImpl<_HomeNavigationState>(
          this, _$identity);
}

abstract class _HomeNavigationState implements HomeNavigationState {
  const factory _HomeNavigationState(
      {@required bool isDrawerOpen,
      @required bool isNewSeriesPageOpen,
      @required int currentPageViewIdx,
      @required List<String> pageViewNavbarItems}) = _$_HomeNavigationState;

  @override
  bool get isDrawerOpen;
  @override
  bool get isNewSeriesPageOpen;
  @override
  int get currentPageViewIdx;
  @override
  List<String> get pageViewNavbarItems;
  @override
  _$HomeNavigationStateCopyWith<_HomeNavigationState> get copyWith;
}
