import 'package:flutter/material.dart';

class RoundBackground extends StatelessWidget {
  final Widget child;
  final Function onPressed;
  const RoundBackground({Key key, this.child, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade200,
        ),
        padding: EdgeInsets.all(4),
        child: child,
      ),
    );
  }
}
