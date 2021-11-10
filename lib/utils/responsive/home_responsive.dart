import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// @nodoc
EdgeInsets getDefaultAppBarButtonPadding(
  Size size, {
  bool isRight = false,
}) {
  final deviceType = getDeviceType(size);

  switch (deviceType) {
    case DeviceScreenType.desktop:
      return isRight
          ? const EdgeInsets.only(right: 10)
          : const EdgeInsets.only(left: 10);
    case DeviceScreenType.tablet:
      return isRight
          ? const EdgeInsets.only(right: 5)
          : const EdgeInsets.only(left: 5);
  }
  return EdgeInsets.zero;
}

/// @nodoc
bool isMenuContentBottom(Size size) {
  final deviceType = getDeviceType(size);

  return !(deviceType == DeviceScreenType.desktop);
}
