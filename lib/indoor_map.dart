import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IndoorMapScreen extends StatefulWidget {
  @override
  State<IndoorMapScreen> createState() => _IndoorMapScreenState();
}

class _IndoorMapScreenState extends State<IndoorMapScreen> {
  double scaleFactor = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Indoor Map'),
      ),
      body: Center(
        child: GestureDetector(
          onScaleUpdate: (details) {
            setState(() {
              scaleFactor = details.scale;
            });
          },
          child: Transform.scale(
            scale: scaleFactor,
            child: SvgPicture.asset(
              'assets/ground.svg',
              height: 800,
            ),
          ),
        ),
      ),
    );
  }
}