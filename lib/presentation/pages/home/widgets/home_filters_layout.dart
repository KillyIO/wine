import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/presentation/pages/home/utils/home_database_methods.dart';
import 'package:wine/presentation/pages/home/widgets/home_filter_button.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/utils/extensions.dart';

class HomeFiltersLayout extends StatefulWidget {
  @override
  _HomeFiltersLayoutState createState() => _HomeFiltersLayoutState();
}

class _HomeFiltersLayoutState extends State<HomeFiltersLayout> {
  HomeDatabaseMethods _homeDbState;

  @override
  void initState() {
    super.initState();
    _homeDbState = HomeDatabaseMethods(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeDatabaseBloc, HomeDatabaseState>(
      builder: (context, homeDbState) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(41.5),
            child: AppBar(
              backgroundColor: Colors.transparent,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(0.0),
                child: Container(color: Colors.black, height: 2.0),
              ),
              brightness: Brightness.light,
              centerTitle: true,
              elevation: 0.0,
              leading: Padding(
                padding: const EdgeInsets.only(bottom: 5.0, left: 10.0, top: 5.0),
                child: WINELeadingImageButton(
                  imagePath: 'assets/img/back_button.png',
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  disabledTextColor: Colors.black26,
                  highlightColor: Colors.transparent,
                  onPressed: homeDbState.areFiltersApplied ? null : () => _homeDbState.applyFilterChanges(),
                  splashColor: Colors.transparent,
                  textColor: Colors.black,
                  child: Text('APPLY CHANGES', style: TextStyle(fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ),
          body: SafeArea(
            child: ListView(
              children: <Widget>[
                ListTile(title: Text('TIME', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300))),
                ListView.builder(
                  itemCount: homeDbState.timesMap.values.toList().length,
                  itemBuilder: (BuildContext context, int index) {
                    return HomeFilterButton(
                      title: homeDbState.timesMap.values.toList()[index].capitalize(),
                      isActive: homeDbState.timesMap.keys.toList()[index] == homeDbState.timeFilterKey,
                      onPressed: () => _homeDbState.timeFilterKeyChanged(homeDbState.timesMap.keys.toList()[index]),
                    );
                  },
                  shrinkWrap: true,
                ),
                ListTile(title: Text('GENRE', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300))),
                ListView.builder(
                  itemCount: homeDbState.genresMap.values.toList().length,
                  itemBuilder: (BuildContext context, int index) {
                    return HomeFilterButton(
                      title: homeDbState.genresMap.values.toList()[index],
                      isActive: homeDbState.genresMap.keys.toList()[index] == homeDbState.genreFilterKey,
                      onPressed: () => _homeDbState.genreFilterKeyChanged(homeDbState.genresMap.keys.toList()[index]),
                    );
                  },
                  shrinkWrap: true,
                ),
                ListTile(title: Text('LANGUAGE', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300))),
                ListView.builder(
                  itemCount: homeDbState.languagesMap.values.toList().length,
                  itemBuilder: (BuildContext context, int index) {
                    return HomeFilterButton(
                      title: homeDbState.languagesMap.values.toList()[index],
                      isActive: homeDbState.languagesMap.keys.toList()[index] == homeDbState.languageFilterKey,
                      onPressed: () =>
                          _homeDbState.languageFilterKeyChanged(homeDbState.languagesMap.keys.toList()[index]),
                    );
                  },
                  shrinkWrap: true,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
