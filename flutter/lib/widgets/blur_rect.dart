import 'dart:ui';
import 'package:flutter/material.dart';

class BlurWidget extends StatelessWidget {
  final Widget? child;
  final double? sigmaX;
  final double? sigmaY;
  final BorderRadius? borderRadius;
  final Color? color;

  const BlurWidget({Key? key, this.child, this.sigmaX, this.sigmaY, this.borderRadius, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(8),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: sigmaX ?? 5,
          sigmaY: sigmaY ?? 5,
        ),
        child: Container(
          color: color ?? Colors.black12,
          child: child,
        ),
      ),
    );
  }
}
