import 'package:flutter/material.dart';

import '../../../core/utils/constant/constant_colors.dart';

class CustomEventField extends StatefulWidget {
  String text;
  String hintText;
  final Color? borderColor;
  final Color? textColor;
   double? width;

  CustomEventField({
    super.key,
    required this.text,
    required this.hintText,
    this.borderColor,
    this.textColor,
    this.width
  });

  @override
  State<CustomEventField> createState() => _CustomEventFieldState();
}

class _CustomEventFieldState extends State<CustomEventField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: widget.width ?? 327,
      decoration: BoxDecoration(
        color: AppColors.appBackground,
        border: Border.all(color: widget.borderColor ?? AppColors.primary),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Virgina Philips Wine Testing',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
