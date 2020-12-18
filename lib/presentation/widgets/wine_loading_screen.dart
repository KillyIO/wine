import 'package:flutter/material.dart';

/// @nodoc
class WINELoadingScreen extends StatelessWidget {
  /// @nodoc
  const WINELoadingScreen({
    Key key,
    @required this.vsync,
    @required this.isLoading,
  }) : super(key: key);

  /// @nodoc
  final TickerProvider vsync;

  /// @nodoc
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: AnimatedSize(
        duration: const Duration(milliseconds: 200),
        vsync: vsync,
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: isLoading ? MediaQuery.of(context).size.height : 0.0,
          child: const Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
