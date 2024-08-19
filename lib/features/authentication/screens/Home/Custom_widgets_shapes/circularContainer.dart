import 'package:flutter/cupertino.dart';
import 'package:t_store/utils/constants/TColors.dart';
import 'package:flutter/material.dart';
class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.pading = 0,
    this.child,
    this.backgroundColor = TColors.white,

  });
  final double ? width;
  final double ? height;
  final double radius;
  final double pading;
  final Widget ? child;
  final Color backgroundColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(pading),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: TColors.textWhite.withOpacity(0.1),

      ),
      child: child,

    );
  }
}
