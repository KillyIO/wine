import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// @nodoc#
double getDialogButtonFontSize(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.mobile) {
    return 20;
  }
  return 22.5;
}

/// @nodoc#
double getDialogButtonHeight(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.mobile) {
    return 40;
  }
  return 50;
}

/// @nodoc#
double getDialogIconSize(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.mobile) {
    return 60;
  }
  return 75;
}

/// @nodoc#
EdgeInsets getDialogIconPadding(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.mobile) {
    return const EdgeInsets.symmetric(vertical: 10);
  }
  return const EdgeInsets.symmetric(vertical: 15);
}

/// @nodoc
double getDialogMessageFontSize(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.mobile) {
    return 16;
  }
  return 18.5;
}

/// @nodoc
EdgeInsets getDialogMessagePadding(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.mobile) {
    return const EdgeInsets.only(
      bottom: 18,
      left: 16,
      right: 16,
      top: 8,
    );
  }
  return const EdgeInsets.only(
    bottom: 22.5,
    left: 22.5,
    right: 22.5,
    top: 12,
  );
}

/// @nodoc
double getDialogTitleFontSize(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.mobile) {
    return 18;
  }
  return 20;
}

/// @nodoc
double getDialogWidth(Size size) {
  final deviceType = getDeviceType(size);

  switch (deviceType) {
    case DeviceScreenType.desktop:
      return 500;
    case DeviceScreenType.tablet:
      return 350;
    default:
      return 300;
  }
}
