import 'package:flutter/material.dart';

/// @nodoc
class TypewriterGenreSelectorDialog extends StatelessWidget {
  /// @nodoc
  const TypewriterGenreSelectorDialog({
    Key? key,
    required this.hasSelected,
    required this.options,
    required this.title,
    required this.dialogTitle,
    required this.trailingText,
    required this.onPressed,
    required this.onInfoPressed,
    required this.showErrorMessage,
    required this.errorMessage,
  }) : super(key: key);

  /// @nodoc
  final bool hasSelected;

  /// @nodoc
  final List<String> options;

  /// @nodoc
  final String title;

  /// @nodoc
  final String dialogTitle;

  /// @nodoc
  final String trailingText;

  /// @nodoc
  final void Function(String) onPressed;

  /// @nodoc
  final void Function() onInfoPressed;

  /// @nodoc
  final bool showErrorMessage;

  /// @nodoc
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) => Container(),
      itemCount: options.length,
    );
  }
}
