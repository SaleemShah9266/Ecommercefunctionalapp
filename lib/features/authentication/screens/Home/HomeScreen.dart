import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/TCurvedEdges.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/circularContainer.dart';
import 'package:t_store/utils/constants/TColors.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: TCurvedEdgesScreen(),
              child: Container(
                color: TColors.primary,
                padding: EdgeInsets.all(0),
                child: SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
                      Positioned(top:-150, right: -250,child: TCircularContainer (backgroundColor: TColors.textWhite.withOpacity(0.1),)),
                      Positioned(top:180, right: -300,child: TCircularContainer (backgroundColor: TColors.textWhite.withOpacity(0.1),)),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


