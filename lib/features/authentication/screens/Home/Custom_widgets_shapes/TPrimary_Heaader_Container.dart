import 'package:flutter/cupertino.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/circularContainer.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/curved_edges_widgets.dart';
import 'package:t_store/utils/constants/TColors.dart';
import 'package:flutter/material.dart';
class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });
  final Widget child ;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child:  Container(
        color: TColors.primary,
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned( top: - 150, right: -250,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(top: 100, right: - 300,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,

            ],
          ),
        ),
      ),
    );
  }
}