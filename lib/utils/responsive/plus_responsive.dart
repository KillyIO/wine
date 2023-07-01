import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// @nodoc
double getBannerSize(Size size) {
  final deviceType = getDeviceType(size);
  final refinedSize = getRefinedSize(size);

  return switch (deviceType) {
    DeviceScreenType.desktop => refinedSize == RefinedSize.small ? 175 : 300,
    DeviceScreenType.tablet => 225,
    _ => 150,
  };
}
