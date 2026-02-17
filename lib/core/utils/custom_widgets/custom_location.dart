import 'package:flutter/material.dart';
import 'package:untitled/core/utils/constant/constant_colors.dart';

import '../constant/constant_texts.dart';



class LocationButton extends StatelessWidget {
  const LocationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 326,
        decoration: BoxDecoration(

          color: AppColors.accent,

          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.location_on,color: AppColors.accent,size: 24,),
            SizedBox(width: 8),
            Text(AppText.locationText,style: TextStyle(color: AppColors.primary,fontSize: 14,fontWeight: FontWeight.w500),)

          ],
        )

    );
  }
}