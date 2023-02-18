import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/presentation/core/navbars/vertical_navbar_button.dart';

/// @nodoc
class LibraryVerticalNavbar extends StatelessWidget {
  /// @nodoc
  const LibraryVerticalNavbar({
    required this.currentIndex,
    required this.items,
    required this.width,
    super.key,
  });

  /// @nodoc
  final int currentIndex;

  /// @nodoc
  final List<String> items;

  /// @nodoc
  final double width;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return SizedBox(
      height: mediaQuery.height,
      width: width,
      child: SingleChildScrollView(
        child: Column(
          children: items.asMap().entries.map((entry) {
            final index = entry.key;
            final value = entry.value;

            return Padding(
              padding: EdgeInsets.only(
                top: index == 0 ? 20.0 : 0.0,
                bottom: 20,
              ),
              child: BlocBuilder<LibraryBloc, LibraryState>(
                builder: (context, state) {
                  return VerticalNavbarButton(
                    color:
                        currentIndex == index ? Colors.black : Colors.black12,
                    onPressed: () => context.read<LibraryBloc>().add(
                          LibraryEvent.verticalNavbarIndexChanged(
                            index,
                          ),
                        ),
                    title: value,
                    width: width,
                  );
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
