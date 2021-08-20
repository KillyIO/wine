import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// @nodoc
EdgeInsets getAssetBackButtonPadding(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.mobile) {
    return EdgeInsets.zero;
  }
  return const EdgeInsets.only(left: 10);
}
