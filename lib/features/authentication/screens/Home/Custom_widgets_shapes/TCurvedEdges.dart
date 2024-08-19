import 'package:flutter/cupertino.dart';

class TCurvedEdgesScreen extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurve = Offset(0,size.height - 20);
    final lastCurve = Offset(0,size.height - 20);
    path.quadraticBezierTo(firstCurve.dx, lastCurve.dy, lastCurve.dx, lastCurve.dy);

    path.lineTo(size.width, 0)
;
    path.close();
    return path;

  }
    @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }


}