import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/TColors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key,
    this.width,
    this.height,

   this.radius = TSizes.cardRadiusLg,
    this.child,
    this.showBorder = false,
     this.borderColor = TColors.borderPrimary,
    this.backgroundColor =  TColors.white,
    this.padding ,
    this.margin ,

  });

  final double? width;
  final double? height;

  final Widget? child;

  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsets? padding;
  final EdgeInsetsGeometry? margin;
  final double radius;



  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin:  margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor): null,
      ),
      child: child,
    );
  }
}
