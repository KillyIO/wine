import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

EdgeInsets getDefaultAppBarButtonPadding(
  Size size, {
  bool isRight = false,
}) {
  final deviceType = getDeviceType(size);

  return switch (deviceType) {
    DeviceScreenType.desktop => isRight
        ? const EdgeInsets.only(right: 10)
        : const EdgeInsets.only(left: 10),
    DeviceScreenType.tablet => isRight
        ? const EdgeInsets.only(right: 5)
        : const EdgeInsets.only(left: 5),
    _ => EdgeInsets.zero,
  };
}

bool isMenuContentBottom(Size size) {
  final deviceType = getDeviceType(size);

  return !(deviceType == DeviceScreenType.desktop);
}
