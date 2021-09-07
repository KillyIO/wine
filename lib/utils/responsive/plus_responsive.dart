import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// @nodoc
double getBannerSize(Size size) {
  final deviceType = getDeviceType(size);
  final refinedSize = getRefinedSize(size);

  switch (deviceType) {
    case DeviceScreenType.desktop:
      if (refinedSize == RefinedSize.small) {
        return 175;
      }
      return 300;
    case DeviceScreenType.tablet:
      return 225;
    default:
      return 150;
  }
}
