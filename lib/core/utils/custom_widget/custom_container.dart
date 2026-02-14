import 'package:flutter/material.dart';
class InvolvedContainer extends StatelessWidget {
  const InvolvedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      width: 84,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/involved.png'),

          fit: BoxFit.cover,
        ),
      ),
    );
  }
}