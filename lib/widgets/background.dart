import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EdgeInsets devicePadding = MediaQuery.of(context).padding;
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Color(0xFF33334B), // Color 1
            Color(0xFF7978B1), // Color 2
          ],
          stops: [0.0, 1.0], // Color 1 at 0%, Color 2 at 100%
          center: Alignment.center,
          radius: 0.5,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: devicePadding.top),
        child: child,
      ),
    );
  }
}
