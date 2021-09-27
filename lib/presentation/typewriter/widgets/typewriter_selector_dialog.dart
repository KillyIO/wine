import 'package:flutter/material.dart';

/// @nodoc
class TypewriterSelectorDialog extends StatelessWidget {
  /// @nodoc
  const TypewriterSelectorDialog({
    Key? key,
    required this.selection,
    required this.option,
  }) : super(key: key);

  /// @nodoc
  final List<String> selection;

  /// @nodoc
  final List<String> option;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) => Container(),
      itemCount: option.length,
    );
  }
}
