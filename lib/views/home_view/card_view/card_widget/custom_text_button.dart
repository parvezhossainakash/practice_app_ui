import 'package:flutter/material.dart';

import '../../../../core/utils/constant/constant_colors.dart';



class CustomTextButton extends StatelessWidget {
  String text;
  CustomTextButton({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(height:48 ,
        width: 100,
        child: TextButton(


          style: TextButton.styleFrom( backgroundColor: AppColors.accent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {
            // Handle button press
          },
          child: Align(
              alignment: Alignment.center,

              child: Text(text,style: TextStyle(color:AppColors.primary,fontSize: 16,fontWeight: FontWeight.w700),)),
        ),
      ),
    );
  }
}
