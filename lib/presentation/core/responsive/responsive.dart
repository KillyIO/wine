import 'package:flutter/material.dart';
import 'package:wine/utils/constants/responsive.dart';

/// @nodoc
class Responsive extends StatelessWidget {
  /// @nodoc
  const Responsive({
    Key? key,
    this.mobileSmall,
    required this.mobileNormal,
    this.mobileLarge,
    this.mobileExtraLarge,
    this.tabletSmall,
    this.tabletNormal,
    this.tabletLarge,
    this.tabletExtraLarge,
    this.desktopSmall,
    required this.desktopNormal,
    this.desktopLarge,
    this.desktopExtraLarge,
  }) : super(key: key);

  /// @nodoc
  final Widget? mobileSmall;

  /// @nodoc
  final Widget mobileNormal;

  /// @nodoc
  final Widget? mobileLarge;

  /// @nodoc
  final Widget? mobileExtraLarge;

  /// @nodoc
  final Widget? tabletSmall;

  /// @nodoc
  final Widget? tabletNormal;

  /// @nodoc
  final Widget? tabletLarge;

  /// @nodoc
  final Widget? tabletExtraLarge;

  /// @nodoc
  final Widget? desktopSmall;

  /// @nodoc
  final Widget desktopNormal;

  /// @nodoc
  final Widget? desktopLarge;

  /// @nodoc
  final Widget? desktopExtraLarge;

  @override
  Widget build(BuildContext context) {
    if (isMobile(context)) {
      if (isMobileSmall(context) && mobileSmall != null) {
        return mobileSmall!;
      } else if (isMobileLarge(context) && mobileLarge != null) {
        return mobileLarge!;
      } else if (isMobileExtraLarge(context) && mobileExtraLarge != null) {
        return mobileExtraLarge!;
      }
    } else if (isTablet(context)) {
      if (isTabletSmall(context) && tabletSmall != null) {
        return tabletSmall!;
      } else if (isTabletNormal(context) && tabletNormal != null) {
        return tabletNormal!;
      } else if (isTabletLarge(context) && tabletLarge != null) {
        return tabletLarge!;
      } else if (isTabletExtraLarge(context) && tabletExtraLarge != null) {
        return tabletExtraLarge!;
      }
    } else {
      if (isDesktopSmall(context) && desktopSmall != null) {
        return desktopSmall!;
      } else if (isDesktopLarge(context) && desktopLarge != null) {
        return desktopLarge!;
      } else if (isDesktopExtraLarge(context) && desktopExtraLarge != null) {
        return desktopExtraLarge!;
      }
      return desktopNormal;
    }
    return mobileNormal;
  }
}
