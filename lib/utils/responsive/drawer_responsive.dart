import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

double getDrawerWidth(Size size) {
  final deviceType = getDeviceType(size);

  return switch (deviceType) {
    DeviceScreenType.desktop => 500,
    DeviceScreenType.tablet => 350,
    _ => size.width,
  };
}
