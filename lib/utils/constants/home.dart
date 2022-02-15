import 'package:time/time.dart';

/// @nodoc
const List<String> homePageViewKeys = <String>[
  'topTrees',
  'newTrees',
];

/// @nodoc
const List<String> timeFilterKeys = <String>[
  'today',
  'week',
  'month',
  'year',
  'all',
];

/// @nodoc
Map<String, int> timeFiltersTimestamps = <String, int>{
  timeFilterKeys.first: (DateTime.now() - 1.days).millisecondsSinceEpoch,
  timeFilterKeys[1]: (DateTime.now() - 1.weeks).millisecondsSinceEpoch,
  timeFilterKeys[2]: (DateTime.now() - 30.days).millisecondsSinceEpoch,
  timeFilterKeys[3]: (DateTime.now() - 365.days).millisecondsSinceEpoch,
  timeFilterKeys.last: DateTime(2020).millisecondsSinceEpoch,
};
