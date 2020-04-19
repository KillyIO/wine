import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:wine/blocs/account/account_bloc.dart';
import 'package:wine/blocs/home/home_bloc.dart';
import 'package:wine/models/route_transition.dart';
import 'package:wine/models/session.dart';
import 'package:wine/pages/home/widgets/animated_button.dart';
import 'package:wine/pages/home/widgets/email_verification_reminder_dialog.dart';
import 'package:wine/repositories/local_storage_repository.dart';
import 'package:wine/utils/methods.dart';
import 'package:wine/utils/themes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final LocalStorageRepository _localStorageRepository =
      LocalStorageRepository();

  bool _openDrawer = false;
  bool _openCreateSeries = false;

  Session _session;

  @override
  void initState() {
    _session = _localStorageRepository?.getSession();

    if (_session.isAnonymous == false && _session.isEmailVerified == false) {
      BlocProvider.of<AccountBloc>(context)
        ..add(EVTOnEmailNotVerified(sessionUid: _session.uid));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: MultiBlocListener(
          listeners: [
            BlocListener<AccountBloc, AccountState>(
              listener: (context, state) {
                if (state is STEDisplayingEmailNotVerifiedDialog) {
                  Methods.showCustomDialog(
                    context: context,
                    builder: (_) => EmailVerificationReminderDialog(
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  );
                }
                if (state is STEEmailNotVerifiedDialogDismissed) {}
              },
            )
          ],
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is STECreateSeriesOpened) {
                _openCreateSeries = state.openCreateSeries;
              }
              if (state is STECreateSeriesClosed) {
                _openCreateSeries = state.openCreateSeries;
              }
              if (state is STEDrawerOpened) {
                _openDrawer = state.openDrawer;
              }
              return Stack(
                children: <Widget>[
                  Scaffold(
                    backgroundColor: Colors.transparent,
                    body: SafeArea(
                      child: Stack(
                        children: <Widget>[
                          AnimatedPositioned(
                            child: Container(
                              child: Stack(
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        _session.isAnonymous
                                            ? Container()
                                            : Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 30.0),
                                                child: Container(
                                                  child: GestureDetector(
                                                    child: Text(
                                                      'MY ACCOUNT',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                    onTap: () =>
                                                        Navigator.of(context)
                                                            .pushNamed(
                                                      '/account',
                                                      arguments: RouteTransition
                                                          .bottomup,
                                                    ),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    border: Border(
                                                      bottom: BorderSide(
                                                          width: 3.0),
                                                    ),
                                                  ),
                                                  height: 30.0,
                                                ),
                                              ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 75.0),
                                          child: Container(
                                            child: GestureDetector(
                                              child: Text(
                                                'SETTINGS',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                              onTap: () => Navigator.of(context)
                                                  .pushNamed(
                                                '/settings',
                                                arguments:
                                                    RouteTransition.bottomup,
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(width: 3.0),
                                              ),
                                            ),
                                            height: 30.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              color: Colors.transparent,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),
                            duration: Duration(milliseconds: 200),
                            right: _openDrawer == true
                                ? 0
                                : -(MediaQuery.of(context).size.width),
                            width: MediaQuery.of(context).size.width,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // NOTE this appBar is detached from all elements so they can slide under it
                  SafeArea(
                    child: Container(
                      height: AppBar().preferredSize.height,
                      child: AppBar(
                        actions: <Widget>[
                          _session.isAnonymous == true || _openDrawer == true
                              ? Container()
                              : Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: AnimatedButton(
                                    animation: _openCreateSeries == true
                                        ? 'create'
                                        : 'dismiss',
                                    callback: (name) {
                                      if (name == 'create') {
                                        Navigator.of(context).pushNamed(
                                          '/series/new',
                                          arguments: RouteTransition.fade,
                                        );
                                      }
                                    },
                                    filename: 'assets/animation/new_series.flr',
                                    height: 20.0,
                                    onPressed: () =>
                                        BlocProvider.of<HomeBloc>(context)
                                          ..add(EVTOnCreateSeriesClicked()),
                                    width: 20.0,
                                  ),
                                ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: AnimatedButton(
                              animation: _openDrawer == true
                                  ? 'menu_to_x'
                                  : 'x_to_menu',
                              filename: 'assets/animation/menu.flr',
                              height: 20.0,
                              onPressed: () =>
                                  BlocProvider.of<HomeBloc>(context)
                                    ..add(EVTOnDrawerClicked(
                                        openDrawer: !_openDrawer)),
                              width: 20.0,
                            ),
                          ),
                        ],
                        backgroundColor: Colors.transparent,
                        brightness: Brightness.light,
                        elevation: 0.0,
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
      value: Themes.wineLightTheme(),
    );
  }
}
