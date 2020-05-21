import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/presentation/pages/home/widgets/home_filter_button.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/utils/extensions.dart';

class HomeFiltersLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeDatabaseBloc, HomeDatabaseState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(41.5),
            child: AppBar(
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
                padding: const EdgeInsets.only(
                  bottom: 5.0,
                  left: 10.0,
                  top: 5.0,
                ),
                child: WINELeadingImageButton(
                  imagePath: 'assets/img/back_button.png',
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  disabledTextColor: Colors.black26,
                  highlightColor: Colors.transparent,
                  onPressed: () => context
                      .bloc<HomeDatabaseBloc>()
                      .add(const HomeDatabaseEvent.applyFilterChanges()),
                  splashColor: Colors.transparent,
                  textColor: Colors.black,
                  child: Text(
                    'APPLY CHANGES',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: SafeArea(
            child: BlocBuilder<HomeDatabaseBloc, HomeDatabaseState>(
              builder: (context, homeDbState) {
                return ListView(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'TIME',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    ListView.builder(
                      itemCount: homeDbState.times.values.toList().length,
                      itemBuilder: (BuildContext context, int index) {
                        return HomeFilterButton(
                          title: homeDbState.times.values
                              .toList()[index]
                              .capitalize(),
                          isActive: homeDbState.times.keys.toList()[index] ==
                              homeDbState.timeFilterKey,
                        );
                      },
                      shrinkWrap: true,
                    ),
                    ListTile(
                      title: Text(
                        'GENRE',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    ListView.builder(
                      itemCount: homeDbState.genres.values.toList().length,
                      itemBuilder: (BuildContext context, int index) {
                        return HomeFilterButton(
                          title: homeDbState.genres.values.toList()[index],
                          isActive: homeDbState.genres.keys.toList()[index] ==
                              homeDbState.genreFilterKey,
                        );
                      },
                      shrinkWrap: true,
                    ),
                    ListTile(
                      title: Text(
                        'LANGUAGE',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    ListView.builder(
                      itemCount: homeDbState.languages.values.toList().length,
                      itemBuilder: (BuildContext context, int index) {
                        return HomeFilterButton(
                          title: homeDbState.languages.values.toList()[index],
                          isActive:
                              homeDbState.languages.keys.toList()[index] ==
                                  homeDbState.languageFilterKey,
                        );
                      },
                      shrinkWrap: true,
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
