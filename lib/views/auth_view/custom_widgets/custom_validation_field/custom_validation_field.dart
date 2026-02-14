import 'package:flutter/material.dart';

class ValidationField extends StatefulWidget {
  String? text;
  final Color borderColor;
  ValidationField({
    super.key,this.text = '4',this.borderColor = Colors.green
  });

  @override
  State<ValidationField> createState() => _ValidationFieldState();
}

class _ValidationFieldState extends State<ValidationField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      child: Center(
        child: Text(
          widget.text!,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),

      decoration: BoxDecoration(

        border: Border.all(color: Color(0xFFE4DFDF), width: 1),

        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}