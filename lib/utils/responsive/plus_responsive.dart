import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// @nodoc
double getBannerSize(Size size) {
  final deviceType = getDeviceType(size);

  switch (deviceType) {
    case DeviceScreenType.desktop:
      return 300;
    case DeviceScreenType.tablet:
      return 225;
    default:
      return 150;
  }
}
