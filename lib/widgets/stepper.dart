import 'package:flutter/material.dart';

class stepper extends StatelessWidget {
  Color? color;
  stepper({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Container(height: 6, color: color),
      ),
    );
  }
}
