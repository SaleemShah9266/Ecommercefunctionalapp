import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/enums.dart';
class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({

  super.key,
    this.color,
    required this.title,
     this.maxline = 1,
     this.brandTextSize = TextSizes.small,
    this.textAlign = TextAlign.center,
  });

  final Color? color;
  final String title;
  final int maxline;
  final TextSizes brandTextSize;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxline,
      overflow: TextOverflow.ellipsis,
      ///check which brand sizes is required

     style: brandTextSize == TextSizes.small
        ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
         : brandTextSize == TextSizes.medius
        ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)

         : brandTextSize == TextSizes.large
        ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
         : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
