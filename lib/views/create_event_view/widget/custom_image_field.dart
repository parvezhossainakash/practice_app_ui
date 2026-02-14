import 'package:flutter/material.dart';

import '../../../core/utils/constant/constant_colors.dart';

class CustomImageField extends StatelessWidget {
  const CustomImageField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 344,
      width: 327,
      decoration: BoxDecoration(
        color: AppColors.appBackground,

        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Upload image',
            style: TextStyle(
              color: AppColors.secondary,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
