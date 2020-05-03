import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/presentation/widgets/image_back_button.dart';
import 'package:wine/utils/palettes.dart';
import 'package:wine/utils/themes.dart';

class NewSeriesPage extends StatefulWidget {
  @override
  _NewSeriesPageState createState() => _NewSeriesPageState();
}

class _NewSeriesPageState extends State<NewSeriesPage> {
  void _backButtonPressed() {
    FocusScope.of(context).requestFocus(FocusNode());
    context.bloc<HomeNavigationBloc>().add(const NewSeriesIconPressed(
          isNewSeriesPageOpen: false,
        ));
    Navigator.of(context).pop();
  }

  Future<bool> _onWillPop() async {
    final bool canPop = Navigator.of(context).canPop();

    if (canPop) {
      context.bloc<HomeNavigationBloc>().add(const NewSeriesIconPressed(
            isNewSeriesPageOpen: false,
          ));
    }
    return canPop;
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(41.5),
            child: AppBar(
              actions: <Widget>[
                FlatButton(
                  disabledTextColor: Colors.black26,
                  highlightColor: Colors.transparent,
                  onPressed: null,
                  splashColor: Colors.transparent,
                  textColor: Colors.black,
                  child: Text(
                    'CONTINUE',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
              backgroundColor: Colors.transparent,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(0.0),
                child: Container(
                  color: Palettes.darkCobaltBlue,
                  height: 2.0,
                ),
              ),
              brightness: Brightness.light,
              centerTitle: true,
              elevation: 0.0,
              leading: Padding(
                padding:
                    const EdgeInsets.only(bottom: 5.0, left: 10.0, top: 5.0),
                child: ImageBackButton(
                  onPressed: _backButtonPressed,
                  color: Palettes.darkCobaltBlue,
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: Container(),
          ),
        ),
      ),
    );
  }
}
