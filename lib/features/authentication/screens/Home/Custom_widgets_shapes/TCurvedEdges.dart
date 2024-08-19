import 'package:flutter/cupertino.dart';

class TCurvedEdgesScreen extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurve = Offset(0,size.height - 20);
    final lastCurve = Offset(30,size.height - 20);
    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    final secondFirstCurve = Offset(0,size.height - 20);
    final secondLastCurved = Offset(size.width -30,size.height -20);
    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy, secondLastCurved.dx, secondLastCurved.dy);


    final thirdFirstCurve = Offset(size.width,size.height -20 );
    final thirdLastCurve = Offset(size.width ,size.height);
    path.quadraticBezierTo(thirdFirstCurve.dx, thirdFirstCurve.dy, thirdLastCurve.dx, thirdLastCurve.dy);

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