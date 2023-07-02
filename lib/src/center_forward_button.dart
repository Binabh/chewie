import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CenterForwardButton extends StatelessWidget {
  const CenterForwardButton({
    Key? key,
    required this.backgroundColor,
    this.iconColor,
    required this.show,
    this.onPressed,
  }) : super(key: key);

  final Color backgroundColor;
  final Color? iconColor;
  final bool show;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.transparent,
      child: Center(
        child: UnconstrainedBox(
          child: AnimatedOpacity(
            opacity: show ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 300),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: backgroundColor,
                shape: BoxShape.circle,
              ),
              // Always set the iconSize on the IconButton, not on the Icon itself:
              // https://github.com/flutter/flutter/issues/52980
              child: IconButton(
                iconSize: 32,
                padding: const EdgeInsets.all(12.0),
                icon: Icon(CupertinoIcons.goforward_15, color: iconColor,),
                onPressed: onPressed,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
