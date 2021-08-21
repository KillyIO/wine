import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// @nodoc
EdgeInsets getAssetBackButtonPadding(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.mobile) {
    return EdgeInsets.zero;
  }
  return const EdgeInsets.only(left: 10);
}

/// @nodoc
double? getHorizontalPageViewNavbarButtonFontSize(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.desktop) {
    return 16;
  }
}

/// @nodoc
double getHorizontalPageViewNavbarHeight(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.desktop) {
    return 40;
  }
  return 30;
}

/// @nodoc
Border getTileButtonBorder(Size size, {bool isFirst = false}) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.desktop) {
    return isFirst
        ? Border.all()
        : const Border(
            bottom: BorderSide(),
            left: BorderSide(),
            right: BorderSide(),
          );
  }
  return isFirst
      ? const Border(
          bottom: BorderSide(),
          top: BorderSide(),
        )
      : const Border(
          bottom: BorderSide(),
        );
}
