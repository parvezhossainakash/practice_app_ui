import 'package:flutter/material.dart';

import '../../../core/utils/constant/constant_colors.dart';

class CustomDateTime extends StatelessWidget {
  String text;
  String text1;
   CustomDateTime({
    super.key,required this.text,required this.text1
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 327,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.primary, width: 1.0),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),

          Text(text1),
        ],
      ),
    );
  }
}
