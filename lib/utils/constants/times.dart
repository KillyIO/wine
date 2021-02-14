import 'package:time/time.dart';

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
  'today': (DateTime.now() - 1.days).millisecondsSinceEpoch,
  'week': (DateTime.now() - 1.weeks).millisecondsSinceEpoch,
  'month': (DateTime.now() - 30.days).millisecondsSinceEpoch,
  'year': (DateTime.now() - 365.days).millisecondsSinceEpoch,
  'all': DateTime(2020).millisecondsSinceEpoch,
};
