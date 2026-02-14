import 'package:flutter/material.dart';

import '../../../core/utils/constant/constant_colors.dart';
import 'custom_check_box.dart';

class CustomCheckBoxField extends StatelessWidget {
  const CustomCheckBoxField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Atmosphere',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8),
          CustomCheckBox(),
        ],
      ),
    );
  }
}

