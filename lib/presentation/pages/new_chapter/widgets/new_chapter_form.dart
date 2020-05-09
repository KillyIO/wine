import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/new_chapter/new_chapter_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/presentation/widgets/wine_image_back_button.dart';
import 'package:wine/utils/arguments.dart';

class NewChapterForm extends StatefulWidget {
  final NewChapterPageArgs args;

  const NewChapterForm({
    Key key,
    this.args,
  }) : super(key: key);

  @override
  _NewChapterFormState createState() => _NewChapterFormState();
}

class _NewChapterFormState extends State<NewChapterForm> {
  Future<bool> _onWillPop() async {
    final bool canPop = Navigator.of(context).canPop();

    if (canPop) {
      context
          .bloc<HomeNavigationBloc>()
          .add(const HomeNavigationEvent.newSeriesIconPressed(
            isNewSeriesPageOpen: false,
          ));
    }
    return canPop;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewChapterDatabaseBloc, NewChapterDatabaseState>(
      builder: (context, state) {
        return WillPopScope(
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
                    onPressed: () {},
                    splashColor: Colors.transparent,
                    textColor: Colors.black,
                    child: Text(
                      'PUBLISH',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  FlatButton(
                    disabledTextColor: Colors.black26,
                    highlightColor: Colors.transparent,
                    onPressed: () {},
                    splashColor: Colors.transparent,
                    textColor: Colors.black,
                    child: Text(
                      'SAVE',
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
                    color: Colors.black,
                    height: 2.0,
                  ),
                ),
                brightness: Brightness.light,
                centerTitle: true,
                elevation: 0.0,
                leading: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  child: WINEImageBackButton(
                    onPressed: () {},
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
