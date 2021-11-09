import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/typewriter_series/typewriter_series_bloc.dart';
import 'package:wine/presentation/typewriter/widgets/series/typewriter_series_selection_dialog.dart';

/// @nodoc
class TypewriterSeriesSelectionListTile extends StatelessWidget {
  /// @nodoc
  const TypewriterSeriesSelectionListTile({
    Key? key,
    required this.items,
    required this.onPressed,
    this.selectedItem,
    required this.title,
  }) : super(key: key);

  /// @nodoc
  final List<String> items;

  /// @nodoc
  final void Function(String) onPressed;

  /// @nodoc
  final String? selectedItem;

  /// @nodoc
  final String title;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Container(
      color: Colors.black,
      child: ListTile(
        onTap: () => showDialog<void>(
          context: context,
          builder: (_) => BlocProvider<TypewriterSeriesBloc>.value(
            value: context.read<TypewriterSeriesBloc>(),
            child: TypewriterSeriesSelectionDialog(
              items: items,
              onPressed: onPressed,
              title: title,
            ),
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
        trailing: selectedItem != null
            ? SizedBox(
                width: mediaQuery.width * .5,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    selectedItem!,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              )
            : const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
              ),
      ),
    );
  }
}
