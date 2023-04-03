import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';
class BezierContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform.rotate(
        angle: -22/7 / 3.5, 
        child: ClipPath(
        clipper: MultiplePointsClipper(Sides.bottom, heightOfPoint: 50),
        child: Container(
          height: MediaQuery.of(context).size.height *.5,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xfffbb448),Color(0xffe46b10)]
              )
            ),
        ),
      ),
      )
    );
  }
}