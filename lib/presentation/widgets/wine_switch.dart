import 'package:flutter/material.dart';

// Credit to mohak1283 and his package CustomSwitch [https://github.com/mohak1283/CustomSwitch]
// Unfortunately this package is not maintain anymore
class WINESwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color activeColor;
  final Color inactiveColor;
  final String activeText;
  final String inactiveText;
  final Color activeTextColor;
  final Color inactiveTextColor;

  const WINESwitch({
    Key key,
    this.value,
    this.onChanged,
    this.activeColor,
    this.inactiveColor = Colors.grey,
    this.activeText = 'On',
    this.inactiveText = 'Off',
    this.activeTextColor = Colors.white70,
    this.inactiveTextColor = Colors.white70,
  }) : super(key: key);

  @override
  _WINESwitchState createState() => _WINESwitchState();
}

class _WINESwitchState extends State<WINESwitch>
    with SingleTickerProviderStateMixin {
  Animation<Alignment> _circleAnimation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 60,
      ),
    );
    _circleAnimation = AlignmentTween(
      begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
      end: widget.value ? Alignment.centerLeft : Alignment.centerRight,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.linear,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.0,
      height: 35.0,
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return GestureDetector(
            onTap: () {
              if (_animationController.isCompleted) {
                _animationController.reverse();
              } else {
                _animationController.forward();
              }
              widget.value == false
                  ? widget.onChanged(true)
                  : widget.onChanged(false);
            },
            child: Container(
              // width: 50.0,
              // height: 35.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: _circleAnimation.value == Alignment.centerLeft
                    ? widget.inactiveColor
                    : widget.activeColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 4.0, bottom: 4.0, right: 4.0, left: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    if (_circleAnimation.value == Alignment.centerRight)
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                        child: Text(
                          widget.activeText,
                          style: TextStyle(
                              color: widget.activeTextColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 16.0),
                        ),
                      )
                    else
                      Container(),
                    Align(
                      alignment: _circleAnimation.value,
                      child: Container(
                        width: 25.0,
                        height: 25.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    if (_circleAnimation.value == Alignment.centerLeft)
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0, right: 5.0),
                        child: Text(
                          widget.inactiveText,
                          style: TextStyle(
                              color: widget.inactiveTextColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 16.0),
                        ),
                      )
                    else
                      Container(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
