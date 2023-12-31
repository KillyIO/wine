import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

EdgeInsets getAssetBackButtonPadding(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.mobile) {
    return EdgeInsets.zero;
  }
  return const EdgeInsets.only(left: 10);
}

double? getHorizontalPageViewNavbarButtonFontSize(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.desktop) {
    return 16;
  }
  return null;
}

double getHorizontalPageViewNavbarHeight(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.desktop) {
    return 40;
  }
  return 30;
}

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
