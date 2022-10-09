import 'package:flutter/material.dart';

class BgPattern extends StatelessWidget {
  const BgPattern({super.key, required this.patternImage});
  final String patternImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset(
        patternImage,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
