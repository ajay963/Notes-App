import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class Owlaimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: RiveAnimation.asset('assets/owl.riv',
            artboard: 'owl', animation: 'animation', fit: BoxFit.cover));
  }
}
