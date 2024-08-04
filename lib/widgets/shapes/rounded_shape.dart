import 'package:flutter/material.dart';

class RoundedShape extends StatelessWidget {
  final Color color;
  final Widget child;
  const RoundedShape({super.key, required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8),
        child: child,
      ),
    );
  }
}
