import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key, this.size = 20.0}) : super(key: key);
  final double size;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/images/logo/logo.png",
        fit: BoxFit.cover,
        scale: size,
      ),
    );
  }
}
