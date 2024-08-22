import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/screens/Home/carts/Product_card_vertical.dart';
import 'package:t_store/utils/constants/sizes.dart';
class TGridLayOut extends StatelessWidget {
  const TGridLayOut({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
  });

  final int itemCount;
  final double ? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: TSizes.gridSpacing,
        crossAxisSpacing: TSizes.gridSpacing,
        mainAxisExtent: 288,
      ),
      itemBuilder: itemBuilder,
    );
  }
}