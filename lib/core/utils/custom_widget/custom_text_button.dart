
import 'package:flutter/material.dart';
import 'package:untitled/core/utils/constant/constant_colors.dart';

class CustomTextButton extends StatefulWidget {
  String text;
 final VoidCallback? onPressed;
  CustomTextButton({
    super.key,required this.text
  ,this.onPressed});

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
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
          onPressed: widget.onPressed,

          child: Align(
              alignment: Alignment.center,

              child: Text(widget.text,style: TextStyle(color: AppColors.primary,fontSize: 16,fontWeight: FontWeight.w700),)),
        ),
      ),
    );
  }
}