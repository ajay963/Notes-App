import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class Owlaimation extends StatefulWidget {
  @override
  _OwlaimationState createState() => _OwlaimationState();
}

class _OwlaimationState extends State<Owlaimation> {
  Artboard? _riveArtboard;
  RiveAnimationController? _controller;
  @override
  void initState() {
    super.initState();

    rootBundle.load('assets/owl.riv').then((data) async {
      final file = RiveFile.import(data);
      final artboard = file.artboardByName('owl');
      artboard?.addController(_controller = SimpleAnimation('animation'));
      setState(() {
        _riveArtboard = artboard;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (_riveArtboard == null)
          ? const SizedBox()
          : Rive(
              artboard: _riveArtboard!,
              fit: BoxFit.cover,
            ),
    );
  }
}
