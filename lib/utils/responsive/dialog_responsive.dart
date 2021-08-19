import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

// SECTION default
/// @nodoc
const double dialogButtonFontSize = 22.5;

/// @nodoc
const double dialogButtonHeight = 40;

/// @nodoc
const double dialogIconSize = 75;

/// @nodoc
const double dialogMessageFontSize = 18.5;

/// @nodoc
const double dialogTitleFontSize = 20;

// SECTION desktop
/// @nodoc
const double dialogDesktopButtonHeight = 50;

/// @nodoc
const double dialogDesktopWidth = 500;

// SECTION tablet
/// @nodoc
const double dialogTabletWidth = 350;

// SECTION mobile
/// @nodoc
const double dialogMobileButtonFontSize = 20;

/// @nodoc
const double dialogMobileIconSize = 60;

/// @nodoc
const double dialogMobileMessageFontSize = 16;

/// @nodoc
const double dialogMobileTitleFontSize = 18;

/// @nodoc
const double dialogMobileWidth = 250;

/// @nodoc#
double getDialogButtonFontSize(Size size) {
  final deviceType = getDeviceType(size);

  switch (deviceType) {
    case DeviceScreenType.mobile:
      return dialogMobileButtonFontSize;
    default:
      return dialogButtonFontSize;
  }
}

/// @nodoc#
double getDialogButtonHeight(Size size) {
  final deviceType = getDeviceType(size);

  switch (deviceType) {
    case DeviceScreenType.desktop:
      return dialogDesktopButtonHeight;
    default:
      return dialogButtonHeight;
  }
}

/// @nodoc#
double getDialogIconSize(Size size) {
  final deviceType = getDeviceType(size);

  switch (deviceType) {
    case DeviceScreenType.mobile:
      return dialogMobileIconSize;
    default:
      return dialogIconSize;
  }
}

/// @nodoc
double getDialogMessageFontSize(Size size) {
  final deviceType = getDeviceType(size);

  switch (deviceType) {
    case DeviceScreenType.mobile:
      return dialogMobileMessageFontSize;
    default:
      return dialogMessageFontSize;
  }
}

/// @nodoc
double getDialogTitleFontSize(Size size) {
  final deviceType = getDeviceType(size);

  switch (deviceType) {
    case DeviceScreenType.mobile:
      return dialogMobileTitleFontSize;
    default:
      return dialogTitleFontSize;
  }
}

/// @nodoc
double getDialogWidth(Size size) {
  final deviceType = getDeviceType(size);

  switch (deviceType) {
    case DeviceScreenType.desktop:
      return dialogDesktopWidth;
    case DeviceScreenType.tablet:
      return dialogTabletWidth;
    default:
      return dialogMobileWidth;
  }
}
