import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

double getDialogButtonFontSize(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.mobile) {
    return 20;
  }
  return 22.5;
}

double getDialogButtonHeight(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.mobile) {
    return 40;
  }
  return 50;
}

double getDialogIconSize(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.mobile) {
    return 60;
  }
  return 75;
}

EdgeInsets getDialogIconPadding(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.mobile) {
    return const EdgeInsets.symmetric(vertical: 10);
  }
  return const EdgeInsets.symmetric(vertical: 15);
}

double getDialogMessageFontSize(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.mobile) {
    return 16;
  }
  return 18.5;
}

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

double getDialogTitleFontSize(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.mobile) {
    return 18;
  }
  return 20;
}

double getDialogWidth(Size size) {
  final deviceType = getDeviceType(size);

  return switch (deviceType) {
    DeviceScreenType.desktop => 500,
    DeviceScreenType.tablet => 350,
    _ => 300,
  };
}
