import 'package:flutter/material.dart';

import '../../../../core/utils/constant/constant_colors.dart';

class FilterTextField extends StatefulWidget {
  String hintText;

   FilterTextField({
    super.key,
    required this.hintText,
  });

  @override
  State<FilterTextField> createState() => _FilterTextFieldState();
}

class _FilterTextFieldState extends State<FilterTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
   cursorColor: AppColors.primary,
      showCursor: false,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(

        hintText: widget.hintText,

        hintStyle: const TextStyle(

          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),

        suffixIcon: const Icon(Icons.arrow_forward_ios),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: AppColors.primary,
          ),

          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}