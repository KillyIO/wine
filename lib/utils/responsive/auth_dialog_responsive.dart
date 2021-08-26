import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// @nodoc
double getAuthDialogWidth(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.desktop) {
    return 500;
  }
  return 400;
}
