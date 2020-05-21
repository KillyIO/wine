// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeNavigationEventTearOff {
  const _$HomeNavigationEventTearOff();

  HomePageLaunched homePageLaunched({BuildContext context}) {
    return HomePageLaunched(
      context: context,
    );
  }

  DrawerIconPressed drawerIconPressed({@required bool isDrawerOpen}) {
    return DrawerIconPressed(
      isDrawerOpen: isDrawerOpen,
    );
  }

  NewSeriesIconPressed newSeriesIconPressed(
      {@required bool isNewSeriesPageOpen}) {
    return NewSeriesIconPressed(
      isNewSeriesPageOpen: isNewSeriesPageOpen,
    );
  }

  PageViewIndexChanged pageViewIndexChanged({@required int index}) {
    return PageViewIndexChanged(
      index: index,
    );
  }

  ResetHomeNavigationBloc resetHomeNavigationBloc() {
    return const ResetHomeNavigationBloc();
  }
}

// ignore: unused_element
const $HomeNavigationEvent = _$HomeNavigationEventTearOff();

mixin _$HomeNavigationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homePageLaunched(BuildContext context),
    @required Result drawerIconPressed(bool isDrawerOpen),
    @required Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    @required Result pageViewIndexChanged(int index),
    @required Result resetHomeNavigationBloc(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homePageLaunched(BuildContext context),
    Result drawerIconPressed(bool isDrawerOpen),
    Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    Result pageViewIndexChanged(int index),
    Result resetHomeNavigationBloc(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homePageLaunched(HomePageLaunched value),
    @required Result drawerIconPressed(DrawerIconPressed value),
    @required Result newSeriesIconPressed(NewSeriesIconPressed value),
    @required Result pageViewIndexChanged(PageViewIndexChanged value),
    @required Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homePageLaunched(HomePageLaunched value),
    Result drawerIconPressed(DrawerIconPressed value),
    Result newSeriesIconPressed(NewSeriesIconPressed value),
    Result pageViewIndexChanged(PageViewIndexChanged value),
    Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
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

abstract class $HomePageLaunchedCopyWith<$Res> {
  factory $HomePageLaunchedCopyWith(
          HomePageLaunched value, $Res Function(HomePageLaunched) then) =
      _$HomePageLaunchedCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

class _$HomePageLaunchedCopyWithImpl<$Res>
    extends _$HomeNavigationEventCopyWithImpl<$Res>
    implements $HomePageLaunchedCopyWith<$Res> {
  _$HomePageLaunchedCopyWithImpl(
      HomePageLaunched _value, $Res Function(HomePageLaunched) _then)
      : super(_value, (v) => _then(v as HomePageLaunched));

  @override
  HomePageLaunched get _value => super._value as HomePageLaunched;

  @override
  $Res call({
    Object context = freezed,
  }) {
    return _then(HomePageLaunched(
      context: context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

class _$HomePageLaunched
    with DiagnosticableTreeMixin
    implements HomePageLaunched {
  const _$HomePageLaunched({this.context});

  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeNavigationEvent.homePageLaunched(context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeNavigationEvent.homePageLaunched'))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HomePageLaunched &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(context);

  @override
  $HomePageLaunchedCopyWith<HomePageLaunched> get copyWith =>
      _$HomePageLaunchedCopyWithImpl<HomePageLaunched>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homePageLaunched(BuildContext context),
    @required Result drawerIconPressed(bool isDrawerOpen),
    @required Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    @required Result pageViewIndexChanged(int index),
    @required Result resetHomeNavigationBloc(),
  }) {
    assert(homePageLaunched != null);
    assert(drawerIconPressed != null);
    assert(newSeriesIconPressed != null);
    assert(pageViewIndexChanged != null);
    assert(resetHomeNavigationBloc != null);
    return homePageLaunched(context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homePageLaunched(BuildContext context),
    Result drawerIconPressed(bool isDrawerOpen),
    Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    Result pageViewIndexChanged(int index),
    Result resetHomeNavigationBloc(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (homePageLaunched != null) {
      return homePageLaunched(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homePageLaunched(HomePageLaunched value),
    @required Result drawerIconPressed(DrawerIconPressed value),
    @required Result newSeriesIconPressed(NewSeriesIconPressed value),
    @required Result pageViewIndexChanged(PageViewIndexChanged value),
    @required Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
  }) {
    assert(homePageLaunched != null);
    assert(drawerIconPressed != null);
    assert(newSeriesIconPressed != null);
    assert(pageViewIndexChanged != null);
    assert(resetHomeNavigationBloc != null);
    return homePageLaunched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homePageLaunched(HomePageLaunched value),
    Result drawerIconPressed(DrawerIconPressed value),
    Result newSeriesIconPressed(NewSeriesIconPressed value),
    Result pageViewIndexChanged(PageViewIndexChanged value),
    Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (homePageLaunched != null) {
      return homePageLaunched(this);
    }
    return orElse();
  }
}

abstract class HomePageLaunched implements HomeNavigationEvent {
  const factory HomePageLaunched({BuildContext context}) = _$HomePageLaunched;

  BuildContext get context;
  $HomePageLaunchedCopyWith<HomePageLaunched> get copyWith;
}

abstract class $DrawerIconPressedCopyWith<$Res> {
  factory $DrawerIconPressedCopyWith(
          DrawerIconPressed value, $Res Function(DrawerIconPressed) then) =
      _$DrawerIconPressedCopyWithImpl<$Res>;
  $Res call({bool isDrawerOpen});
}

class _$DrawerIconPressedCopyWithImpl<$Res>
    extends _$HomeNavigationEventCopyWithImpl<$Res>
    implements $DrawerIconPressedCopyWith<$Res> {
  _$DrawerIconPressedCopyWithImpl(
      DrawerIconPressed _value, $Res Function(DrawerIconPressed) _then)
      : super(_value, (v) => _then(v as DrawerIconPressed));

  @override
  DrawerIconPressed get _value => super._value as DrawerIconPressed;

  @override
  $Res call({
    Object isDrawerOpen = freezed,
  }) {
    return _then(DrawerIconPressed(
      isDrawerOpen:
          isDrawerOpen == freezed ? _value.isDrawerOpen : isDrawerOpen as bool,
    ));
  }
}

class _$DrawerIconPressed
    with DiagnosticableTreeMixin
    implements DrawerIconPressed {
  const _$DrawerIconPressed({@required this.isDrawerOpen})
      : assert(isDrawerOpen != null);

  @override
  final bool isDrawerOpen;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeNavigationEvent.drawerIconPressed(isDrawerOpen: $isDrawerOpen)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'HomeNavigationEvent.drawerIconPressed'))
      ..add(DiagnosticsProperty('isDrawerOpen', isDrawerOpen));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DrawerIconPressed &&
            (identical(other.isDrawerOpen, isDrawerOpen) ||
                const DeepCollectionEquality()
                    .equals(other.isDrawerOpen, isDrawerOpen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isDrawerOpen);

  @override
  $DrawerIconPressedCopyWith<DrawerIconPressed> get copyWith =>
      _$DrawerIconPressedCopyWithImpl<DrawerIconPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homePageLaunched(BuildContext context),
    @required Result drawerIconPressed(bool isDrawerOpen),
    @required Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    @required Result pageViewIndexChanged(int index),
    @required Result resetHomeNavigationBloc(),
  }) {
    assert(homePageLaunched != null);
    assert(drawerIconPressed != null);
    assert(newSeriesIconPressed != null);
    assert(pageViewIndexChanged != null);
    assert(resetHomeNavigationBloc != null);
    return drawerIconPressed(isDrawerOpen);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homePageLaunched(BuildContext context),
    Result drawerIconPressed(bool isDrawerOpen),
    Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    Result pageViewIndexChanged(int index),
    Result resetHomeNavigationBloc(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (drawerIconPressed != null) {
      return drawerIconPressed(isDrawerOpen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homePageLaunched(HomePageLaunched value),
    @required Result drawerIconPressed(DrawerIconPressed value),
    @required Result newSeriesIconPressed(NewSeriesIconPressed value),
    @required Result pageViewIndexChanged(PageViewIndexChanged value),
    @required Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
  }) {
    assert(homePageLaunched != null);
    assert(drawerIconPressed != null);
    assert(newSeriesIconPressed != null);
    assert(pageViewIndexChanged != null);
    assert(resetHomeNavigationBloc != null);
    return drawerIconPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homePageLaunched(HomePageLaunched value),
    Result drawerIconPressed(DrawerIconPressed value),
    Result newSeriesIconPressed(NewSeriesIconPressed value),
    Result pageViewIndexChanged(PageViewIndexChanged value),
    Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (drawerIconPressed != null) {
      return drawerIconPressed(this);
    }
    return orElse();
  }
}

abstract class DrawerIconPressed implements HomeNavigationEvent {
  const factory DrawerIconPressed({@required bool isDrawerOpen}) =
      _$DrawerIconPressed;

  bool get isDrawerOpen;
  $DrawerIconPressedCopyWith<DrawerIconPressed> get copyWith;
}

abstract class $NewSeriesIconPressedCopyWith<$Res> {
  factory $NewSeriesIconPressedCopyWith(NewSeriesIconPressed value,
          $Res Function(NewSeriesIconPressed) then) =
      _$NewSeriesIconPressedCopyWithImpl<$Res>;
  $Res call({bool isNewSeriesPageOpen});
}

class _$NewSeriesIconPressedCopyWithImpl<$Res>
    extends _$HomeNavigationEventCopyWithImpl<$Res>
    implements $NewSeriesIconPressedCopyWith<$Res> {
  _$NewSeriesIconPressedCopyWithImpl(
      NewSeriesIconPressed _value, $Res Function(NewSeriesIconPressed) _then)
      : super(_value, (v) => _then(v as NewSeriesIconPressed));

  @override
  NewSeriesIconPressed get _value => super._value as NewSeriesIconPressed;

  @override
  $Res call({
    Object isNewSeriesPageOpen = freezed,
  }) {
    return _then(NewSeriesIconPressed(
      isNewSeriesPageOpen: isNewSeriesPageOpen == freezed
          ? _value.isNewSeriesPageOpen
          : isNewSeriesPageOpen as bool,
    ));
  }
}

class _$NewSeriesIconPressed
    with DiagnosticableTreeMixin
    implements NewSeriesIconPressed {
  const _$NewSeriesIconPressed({@required this.isNewSeriesPageOpen})
      : assert(isNewSeriesPageOpen != null);

  @override
  final bool isNewSeriesPageOpen;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeNavigationEvent.newSeriesIconPressed(isNewSeriesPageOpen: $isNewSeriesPageOpen)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeNavigationEvent.newSeriesIconPressed'))
      ..add(DiagnosticsProperty('isNewSeriesPageOpen', isNewSeriesPageOpen));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewSeriesIconPressed &&
            (identical(other.isNewSeriesPageOpen, isNewSeriesPageOpen) ||
                const DeepCollectionEquality()
                    .equals(other.isNewSeriesPageOpen, isNewSeriesPageOpen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isNewSeriesPageOpen);

  @override
  $NewSeriesIconPressedCopyWith<NewSeriesIconPressed> get copyWith =>
      _$NewSeriesIconPressedCopyWithImpl<NewSeriesIconPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homePageLaunched(BuildContext context),
    @required Result drawerIconPressed(bool isDrawerOpen),
    @required Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    @required Result pageViewIndexChanged(int index),
    @required Result resetHomeNavigationBloc(),
  }) {
    assert(homePageLaunched != null);
    assert(drawerIconPressed != null);
    assert(newSeriesIconPressed != null);
    assert(pageViewIndexChanged != null);
    assert(resetHomeNavigationBloc != null);
    return newSeriesIconPressed(isNewSeriesPageOpen);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homePageLaunched(BuildContext context),
    Result drawerIconPressed(bool isDrawerOpen),
    Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    Result pageViewIndexChanged(int index),
    Result resetHomeNavigationBloc(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newSeriesIconPressed != null) {
      return newSeriesIconPressed(isNewSeriesPageOpen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homePageLaunched(HomePageLaunched value),
    @required Result drawerIconPressed(DrawerIconPressed value),
    @required Result newSeriesIconPressed(NewSeriesIconPressed value),
    @required Result pageViewIndexChanged(PageViewIndexChanged value),
    @required Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
  }) {
    assert(homePageLaunched != null);
    assert(drawerIconPressed != null);
    assert(newSeriesIconPressed != null);
    assert(pageViewIndexChanged != null);
    assert(resetHomeNavigationBloc != null);
    return newSeriesIconPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homePageLaunched(HomePageLaunched value),
    Result drawerIconPressed(DrawerIconPressed value),
    Result newSeriesIconPressed(NewSeriesIconPressed value),
    Result pageViewIndexChanged(PageViewIndexChanged value),
    Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newSeriesIconPressed != null) {
      return newSeriesIconPressed(this);
    }
    return orElse();
  }
}

abstract class NewSeriesIconPressed implements HomeNavigationEvent {
  const factory NewSeriesIconPressed({@required bool isNewSeriesPageOpen}) =
      _$NewSeriesIconPressed;

  bool get isNewSeriesPageOpen;
  $NewSeriesIconPressedCopyWith<NewSeriesIconPressed> get copyWith;
}

abstract class $PageViewIndexChangedCopyWith<$Res> {
  factory $PageViewIndexChangedCopyWith(PageViewIndexChanged value,
          $Res Function(PageViewIndexChanged) then) =
      _$PageViewIndexChangedCopyWithImpl<$Res>;
  $Res call({int index});
}

class _$PageViewIndexChangedCopyWithImpl<$Res>
    extends _$HomeNavigationEventCopyWithImpl<$Res>
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
    return 'HomeNavigationEvent.pageViewIndexChanged(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeNavigationEvent.pageViewIndexChanged'))
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
    @required Result homePageLaunched(BuildContext context),
    @required Result drawerIconPressed(bool isDrawerOpen),
    @required Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    @required Result pageViewIndexChanged(int index),
    @required Result resetHomeNavigationBloc(),
  }) {
    assert(homePageLaunched != null);
    assert(drawerIconPressed != null);
    assert(newSeriesIconPressed != null);
    assert(pageViewIndexChanged != null);
    assert(resetHomeNavigationBloc != null);
    return pageViewIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homePageLaunched(BuildContext context),
    Result drawerIconPressed(bool isDrawerOpen),
    Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    Result pageViewIndexChanged(int index),
    Result resetHomeNavigationBloc(),
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
    @required Result homePageLaunched(HomePageLaunched value),
    @required Result drawerIconPressed(DrawerIconPressed value),
    @required Result newSeriesIconPressed(NewSeriesIconPressed value),
    @required Result pageViewIndexChanged(PageViewIndexChanged value),
    @required Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
  }) {
    assert(homePageLaunched != null);
    assert(drawerIconPressed != null);
    assert(newSeriesIconPressed != null);
    assert(pageViewIndexChanged != null);
    assert(resetHomeNavigationBloc != null);
    return pageViewIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homePageLaunched(HomePageLaunched value),
    Result drawerIconPressed(DrawerIconPressed value),
    Result newSeriesIconPressed(NewSeriesIconPressed value),
    Result pageViewIndexChanged(PageViewIndexChanged value),
    Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pageViewIndexChanged != null) {
      return pageViewIndexChanged(this);
    }
    return orElse();
  }
}

abstract class PageViewIndexChanged implements HomeNavigationEvent {
  const factory PageViewIndexChanged({@required int index}) =
      _$PageViewIndexChanged;

  int get index;
  $PageViewIndexChangedCopyWith<PageViewIndexChanged> get copyWith;
}

abstract class $ResetHomeNavigationBlocCopyWith<$Res> {
  factory $ResetHomeNavigationBlocCopyWith(ResetHomeNavigationBloc value,
          $Res Function(ResetHomeNavigationBloc) then) =
      _$ResetHomeNavigationBlocCopyWithImpl<$Res>;
}

class _$ResetHomeNavigationBlocCopyWithImpl<$Res>
    extends _$HomeNavigationEventCopyWithImpl<$Res>
    implements $ResetHomeNavigationBlocCopyWith<$Res> {
  _$ResetHomeNavigationBlocCopyWithImpl(ResetHomeNavigationBloc _value,
      $Res Function(ResetHomeNavigationBloc) _then)
      : super(_value, (v) => _then(v as ResetHomeNavigationBloc));

  @override
  ResetHomeNavigationBloc get _value => super._value as ResetHomeNavigationBloc;
}

class _$ResetHomeNavigationBloc
    with DiagnosticableTreeMixin
    implements ResetHomeNavigationBloc {
  const _$ResetHomeNavigationBloc();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeNavigationEvent.resetHomeNavigationBloc()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeNavigationEvent.resetHomeNavigationBloc'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetHomeNavigationBloc);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homePageLaunched(BuildContext context),
    @required Result drawerIconPressed(bool isDrawerOpen),
    @required Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    @required Result pageViewIndexChanged(int index),
    @required Result resetHomeNavigationBloc(),
  }) {
    assert(homePageLaunched != null);
    assert(drawerIconPressed != null);
    assert(newSeriesIconPressed != null);
    assert(pageViewIndexChanged != null);
    assert(resetHomeNavigationBloc != null);
    return resetHomeNavigationBloc();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homePageLaunched(BuildContext context),
    Result drawerIconPressed(bool isDrawerOpen),
    Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    Result pageViewIndexChanged(int index),
    Result resetHomeNavigationBloc(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetHomeNavigationBloc != null) {
      return resetHomeNavigationBloc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homePageLaunched(HomePageLaunched value),
    @required Result drawerIconPressed(DrawerIconPressed value),
    @required Result newSeriesIconPressed(NewSeriesIconPressed value),
    @required Result pageViewIndexChanged(PageViewIndexChanged value),
    @required Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
  }) {
    assert(homePageLaunched != null);
    assert(drawerIconPressed != null);
    assert(newSeriesIconPressed != null);
    assert(pageViewIndexChanged != null);
    assert(resetHomeNavigationBloc != null);
    return resetHomeNavigationBloc(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homePageLaunched(HomePageLaunched value),
    Result drawerIconPressed(DrawerIconPressed value),
    Result newSeriesIconPressed(NewSeriesIconPressed value),
    Result pageViewIndexChanged(PageViewIndexChanged value),
    Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetHomeNavigationBloc != null) {
      return resetHomeNavigationBloc(this);
    }
    return orElse();
  }
}

abstract class ResetHomeNavigationBloc implements HomeNavigationEvent {
  const factory ResetHomeNavigationBloc() = _$ResetHomeNavigationBloc;
}

class _$HomeNavigationStateTearOff {
  const _$HomeNavigationStateTearOff();

  _HomeNavigationState call(
      {@required bool isDrawerOpen,
      @required bool isNewSeriesPageOpen,
      @required List<String> pageViewNavbarItems,
      @required int currentPageViewIdx}) {
    return _HomeNavigationState(
      isDrawerOpen: isDrawerOpen,
      isNewSeriesPageOpen: isNewSeriesPageOpen,
      pageViewNavbarItems: pageViewNavbarItems,
      currentPageViewIdx: currentPageViewIdx,
    );
  }
}

// ignore: unused_element
const $HomeNavigationState = _$HomeNavigationStateTearOff();

mixin _$HomeNavigationState {
  bool get isDrawerOpen;
  bool get isNewSeriesPageOpen;
  List<String> get pageViewNavbarItems;
  int get currentPageViewIdx;

  $HomeNavigationStateCopyWith<HomeNavigationState> get copyWith;
}

abstract class $HomeNavigationStateCopyWith<$Res> {
  factory $HomeNavigationStateCopyWith(
          HomeNavigationState value, $Res Function(HomeNavigationState) then) =
      _$HomeNavigationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isDrawerOpen,
      bool isNewSeriesPageOpen,
      List<String> pageViewNavbarItems,
      int currentPageViewIdx});
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
    Object pageViewNavbarItems = freezed,
    Object currentPageViewIdx = freezed,
  }) {
    return _then(_value.copyWith(
      isDrawerOpen:
          isDrawerOpen == freezed ? _value.isDrawerOpen : isDrawerOpen as bool,
      isNewSeriesPageOpen: isNewSeriesPageOpen == freezed
          ? _value.isNewSeriesPageOpen
          : isNewSeriesPageOpen as bool,
      pageViewNavbarItems: pageViewNavbarItems == freezed
          ? _value.pageViewNavbarItems
          : pageViewNavbarItems as List<String>,
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx as int,
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
      List<String> pageViewNavbarItems,
      int currentPageViewIdx});
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
    Object pageViewNavbarItems = freezed,
    Object currentPageViewIdx = freezed,
  }) {
    return _then(_HomeNavigationState(
      isDrawerOpen:
          isDrawerOpen == freezed ? _value.isDrawerOpen : isDrawerOpen as bool,
      isNewSeriesPageOpen: isNewSeriesPageOpen == freezed
          ? _value.isNewSeriesPageOpen
          : isNewSeriesPageOpen as bool,
      pageViewNavbarItems: pageViewNavbarItems == freezed
          ? _value.pageViewNavbarItems
          : pageViewNavbarItems as List<String>,
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx as int,
    ));
  }
}

class _$_HomeNavigationState
    with DiagnosticableTreeMixin
    implements _HomeNavigationState {
  const _$_HomeNavigationState(
      {@required this.isDrawerOpen,
      @required this.isNewSeriesPageOpen,
      @required this.pageViewNavbarItems,
      @required this.currentPageViewIdx})
      : assert(isDrawerOpen != null),
        assert(isNewSeriesPageOpen != null),
        assert(pageViewNavbarItems != null),
        assert(currentPageViewIdx != null);

  @override
  final bool isDrawerOpen;
  @override
  final bool isNewSeriesPageOpen;
  @override
  final List<String> pageViewNavbarItems;
  @override
  final int currentPageViewIdx;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeNavigationState(isDrawerOpen: $isDrawerOpen, isNewSeriesPageOpen: $isNewSeriesPageOpen, pageViewNavbarItems: $pageViewNavbarItems, currentPageViewIdx: $currentPageViewIdx)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeNavigationState'))
      ..add(DiagnosticsProperty('isDrawerOpen', isDrawerOpen))
      ..add(DiagnosticsProperty('isNewSeriesPageOpen', isNewSeriesPageOpen))
      ..add(DiagnosticsProperty('pageViewNavbarItems', pageViewNavbarItems))
      ..add(DiagnosticsProperty('currentPageViewIdx', currentPageViewIdx));
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
            (identical(other.pageViewNavbarItems, pageViewNavbarItems) ||
                const DeepCollectionEquality()
                    .equals(other.pageViewNavbarItems, pageViewNavbarItems)) &&
            (identical(other.currentPageViewIdx, currentPageViewIdx) ||
                const DeepCollectionEquality()
                    .equals(other.currentPageViewIdx, currentPageViewIdx)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isDrawerOpen) ^
      const DeepCollectionEquality().hash(isNewSeriesPageOpen) ^
      const DeepCollectionEquality().hash(pageViewNavbarItems) ^
      const DeepCollectionEquality().hash(currentPageViewIdx);

  @override
  _$HomeNavigationStateCopyWith<_HomeNavigationState> get copyWith =>
      __$HomeNavigationStateCopyWithImpl<_HomeNavigationState>(
          this, _$identity);
}

abstract class _HomeNavigationState implements HomeNavigationState {
  const factory _HomeNavigationState(
      {@required bool isDrawerOpen,
      @required bool isNewSeriesPageOpen,
      @required List<String> pageViewNavbarItems,
      @required int currentPageViewIdx}) = _$_HomeNavigationState;

  @override
  bool get isDrawerOpen;
  @override
  bool get isNewSeriesPageOpen;
  @override
  List<String> get pageViewNavbarItems;
  @override
  int get currentPageViewIdx;
  @override
  _$HomeNavigationStateCopyWith<_HomeNavigationState> get copyWith;
}
