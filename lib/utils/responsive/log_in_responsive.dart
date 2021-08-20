import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// @nodoc
EdgeInsets getEmailAddressPadding(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.mobile) {
    return const EdgeInsets.only(left: 50, top: 75);
  }
  return const EdgeInsets.only(left: 50, top: 50);
}

/// @nodoc
EdgeInsets getWelcomeMessagePadding(Size size) {
  final deviceType = getDeviceType(size);

  if (deviceType == DeviceScreenType.mobile) {
    return const EdgeInsets.only(left: 50, top: 100);
  }
  return const EdgeInsets.only(left: 50, top: 50);
}
