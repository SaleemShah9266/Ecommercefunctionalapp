import 'package:flutter/cupertino.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/TCurvedEdges.dart';
import 'package:flutter/material.dart';
class TCurvedEdgesWidget extends StatelessWidget {
  const TCurvedEdgesWidget({
    super.key, this.child,
  });
  final Widget ? child;

  @override
  Widget build(BuildContext context) {

    return ClipPath(
      clipper: TCurvedEdgesScreen() ,
      child:child,
    );
  }
}