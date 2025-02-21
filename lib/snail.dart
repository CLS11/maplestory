import 'package:flutter/material.dart';

class Snail extends StatelessWidget {
  const Snail({
    required this.snailCount,
    required this.snailDirection,
    super.key,
  });

  final num snailCount;
  final String snailDirection;

  @override
  Widget build(BuildContext context) {
    if (snailDirection == 'left') {
      return Container(
        alignment: Alignment.center,
        height: 50,
        width: 50,
        child: Image.asset('images/snail$snailCount.png'),
      );
    } else {
      return Transform(
        alignment: Alignment.bottomCenter,
        transform: Matrix4.rotationY(3.14),
        child: Container(
          height: 50,
          width: 50,
          child: Image.asset('images/snail$snailCount.png'),
        ),
      );
    }
  }
}
