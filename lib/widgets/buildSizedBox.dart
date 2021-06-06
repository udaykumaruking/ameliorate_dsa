import 'package:flutter/material.dart';

class BuildSizedBox extends StatelessWidget {
  final double height;
  final double width;
  BuildSizedBox({this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
