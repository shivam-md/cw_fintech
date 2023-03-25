

import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key, this.height, this.width, this.opacity = 0.5, this.borderRadius = 0, required this.child, this.color, this.border = 0, this.borderColor}) : super(key: key);
  final double? height;
  final double? width;
  final double opacity;
  final double borderRadius;
  final Widget child;
  final Color? color;
  final double border;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: height ?? double.infinity,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: color?.withOpacity(opacity) ?? Colors.black.withOpacity(opacity),
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor ?? Colors.white10, width: border),
      ),
      child: child,
    );
  }
}
