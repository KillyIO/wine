import 'package:flutter/material.dart';
import 'package:wine/flavors.dart';

/// @nodoc
class FlavorBanner extends StatelessWidget {
  /// @nodoc
  const FlavorBanner({
    required this.child,
    super.key,
    this.show = true,
  });

  /// @nodoc
  final Widget child;

  /// @nodoc
  final bool show;

  @override
  Widget build(BuildContext context) {
    if (!show) {
      return child;
    }
    return Banner(
      color: Colors.green.withOpacity(0.6),
      location: BannerLocation.topStart,
      message: F.name,
      textDirection: TextDirection.ltr,
      textStyle: const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 12,
        letterSpacing: 1,
      ),
      child: child,
    );
  }
}
