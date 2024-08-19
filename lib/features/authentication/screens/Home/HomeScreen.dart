import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/TPrimary_Heaader_Container.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/TCurvedEdges.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/circularContainer.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/curved_edges_widgets.dart';

import 'package:t_store/utils/constants/TColors.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer( child: Container(

            ),)
          ],
        ),
      ),
    );
  }
}




