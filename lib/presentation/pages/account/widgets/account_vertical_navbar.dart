import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/navigation/account/account_navigation_bloc.dart';
import 'package:wine/presentation/widgets/wine_vertical_navbar_button.dart';

class AccountVerticalNavbar extends StatelessWidget {
  final List<String> items;
  final int currentIndex;
  final double width;

  const AccountVerticalNavbar({
    Key key,
    this.items,
    this.currentIndex,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        children: items.asMap().entries.map((entry) {
          final int index = entry.key;
          final String value = entry.value;

          return Column(
            children: <Widget>[
              if (index == 0) const SizedBox(height: 20),
              WINEVerticalNavbarButton(
                title: value,
                onPressed: () => context
                    .bloc<AccountNavigationBloc>()
                    .add(AccountNavigationEvent.verticalNavbarIndexChanged(
                      index: index,
                    )),
                color: currentIndex == index ? Colors.black : Colors.black12,
                width: width,
              ),
              const SizedBox(height: 20),
            ],
          );
        }).toList(),
      ),
    );
  }
}
