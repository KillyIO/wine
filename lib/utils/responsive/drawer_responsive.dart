import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// @nodoc
double getDrawerWidth(Size size) {
  final deviceType = getDeviceType(size);

  switch (deviceType) {
    case DeviceScreenType.desktop:
      return 500;
    case DeviceScreenType.tablet:
      return 350;
  }
  return size.width;
}
