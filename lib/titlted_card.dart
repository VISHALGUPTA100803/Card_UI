import 'package:flutter/material.dart';

class TiltedCard extends StatelessWidget {
  const TiltedCard({
    Key? key,
    required this.child,
    this.tiltAngle = 0.2,
  }) : super(key: key);

  final Widget child;
  final double tiltAngle;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: tiltAngle,
      child: Card(
        color: Colors.yellowAccent,
        child: child,
      ),
    );
  }
}
