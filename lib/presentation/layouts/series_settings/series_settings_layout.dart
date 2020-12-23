import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/series_settings/series_settings_database_bloc.dart';
import 'package:wine/presentation/widgets/settings/settings_switch_list_tile.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/utils/assets.dart';

/// @nodoc
class SeriesSettingsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 5.0,
            ),
            child: WINELeadingImageButton(
              imagePath: Assets.backIcon,
              onPressed: () => ExtendedNavigator.root.pop(),
            ),
          ),
          title: const Text(
            'SERIES',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
      body:
          BlocBuilder<SeriesSettingsDatabaseBloc, SeriesSettingsDatabaseState>(
        builder: (context, seriesSettingsDatabaseState) {
          return ListView(
            children: <Widget>[
              SettingsSwitchListTile(
                onChanged: (bool value) => context
                    .read<SeriesSettingsDatabaseBloc>()
                    .add(SeriesSettingsDatabaseEvent
                        .enableBookmarksCountToggledEVT(value)),
                subtitle: 'Display the bookmarks counter of the series',
                title: 'Bookmarks',
                value: seriesSettingsDatabaseState
                    .config.enableSeriesBookmarksCount,
              ),
              SettingsSwitchListTile(
                onChanged: (bool value) => context
                    .read<SeriesSettingsDatabaseBloc>()
                    .add(SeriesSettingsDatabaseEvent.enableLikesCountToggledEVT(
                      value,
                    )),
                subtitle: 'Display the likes counter of the series',
                title: 'Likes',
                value:
                    seriesSettingsDatabaseState.config.enableSeriesLikesCount,
              ),
              SettingsSwitchListTile(
                onChanged: (bool value) => context
                    .read<SeriesSettingsDatabaseBloc>()
                    .add(SeriesSettingsDatabaseEvent.enableViewsCountToggledEVT(
                      value,
                    )),
                subtitle: 'Display the views counter of the series',
                title: 'Views',
                value:
                    seriesSettingsDatabaseState.config.enableSeriesViewsCount,
              ),
            ],
          );
        },
      ),
    );
  }
}
