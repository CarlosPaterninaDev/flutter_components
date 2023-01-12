import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 150;
  double _heiht = 150;
  Color _color = Colors.amber;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void onChangeShape() {
    final random = Random();
    _width = random.nextInt(300).toDouble() + 70;
    _heiht = random.nextInt(300).toDouble() + 70;
    _borderRadius = BorderRadius.circular(random.nextInt(10).toDouble() + 10);
    _color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animated Container")),
      body: Center(
        child: AnimatedContainer(
          // * el color no puede convivir con el decoration
          // ! color: Colors.amber,
          curve: Curves.easeIn,
          duration: const Duration(milliseconds: 200),
          width: _width,
          height: _heiht,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: onChangeShape, child: const Icon(Icons.play_arrow)),
    );
  }
}
