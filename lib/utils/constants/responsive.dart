import 'package:flutter/material.dart';

// SECTION mobile breakpoints
/// @nodoc
const double mobileSmall = 320;

/// @nodoc
const double mobileNormal = 375;

/// @nodoc
const double mobileLarge = 414;

/// @nodoc
const double mobileExtraLarge = 480;

// SECTION tablet breakpoints
/// @nodoc
const double tabletSmall = 600;

/// @nodoc
const double tabletNormal = 768;

/// @nodoc
const double tabletLarge = 850;

/// @nodoc
const double tabletExtraLarge = 900;

// SECTION desktop breakpoints
/// @nodoc
const double desktopSmall = 950;

/// @nodoc
const double desktopNormal = 1920;

/// @nodoc
const double desktopLarge = 3840;

/// @nodoc
const double desktopExtraLarge = 4096;

// SECTION mobile breakpoint checkers
/// @nodoc
bool isMobileSmall(BuildContext context) =>
    MediaQuery.of(context).size.width <= mobileSmall;

/// @nodoc
bool isMobileNormal(BuildContext context) =>
    MediaQuery.of(context).size.width > mobileSmall &&
    MediaQuery.of(context).size.width <= mobileNormal;

/// @nodoc
bool isMobileLarge(BuildContext context) =>
    MediaQuery.of(context).size.width > mobileNormal &&
    MediaQuery.of(context).size.width <= mobileLarge;

/// @nodoc
bool isMobileExtraLarge(BuildContext context) =>
    MediaQuery.of(context).size.width > mobileLarge &&
    MediaQuery.of(context).size.width <= mobileExtraLarge;

/// @nodoc
bool isMobile(BuildContext context) =>
    MediaQuery.of(context).size.width <= mobileExtraLarge;

// SECTION tablet breakpoint checkers
/// @nodoc
bool isTabletSmall(BuildContext context) =>
    MediaQuery.of(context).size.width > mobileExtraLarge &&
    MediaQuery.of(context).size.width <= tabletSmall;

/// @nodoc
bool isTabletNormal(BuildContext context) =>
    MediaQuery.of(context).size.width > tabletSmall &&
    MediaQuery.of(context).size.width <= tabletNormal;

/// @nodoc
bool isTabletLarge(BuildContext context) =>
    MediaQuery.of(context).size.width > tabletNormal &&
    MediaQuery.of(context).size.width <= tabletLarge;

/// @nodoc
bool isTabletExtraLarge(BuildContext context) =>
    MediaQuery.of(context).size.width > tabletLarge &&
    MediaQuery.of(context).size.width <= tabletExtraLarge;

/// @nodoc
bool isTablet(BuildContext context) =>
    MediaQuery.of(context).size.width > mobileExtraLarge &&
    MediaQuery.of(context).size.width <= tabletExtraLarge;

// SECTION desktop breakpoint checkers
/// @nodoc
bool isDesktopSmall(BuildContext context) =>
    MediaQuery.of(context).size.width > tabletExtraLarge &&
    MediaQuery.of(context).size.width <= desktopSmall;

/// @nodoc
bool isDesktopNormal(BuildContext context) =>
    MediaQuery.of(context).size.width > desktopSmall &&
    MediaQuery.of(context).size.width <= desktopNormal;

/// @nodoc
bool isDesktopLarge(BuildContext context) =>
    MediaQuery.of(context).size.width > desktopNormal &&
    MediaQuery.of(context).size.width <= desktopLarge;

/// @nodoc
bool isDesktopExtraLarge(BuildContext context) =>
    MediaQuery.of(context).size.width > desktopLarge &&
    MediaQuery.of(context).size.width <= desktopExtraLarge;

/// @nodoc
bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width > tabletExtraLarge &&
    MediaQuery.of(context).size.width <= desktopExtraLarge;
