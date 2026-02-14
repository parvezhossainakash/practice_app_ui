import 'package:flutter/material.dart';

import '../../../core/utils/constant/constant_colors.dart';
class CustomEventField extends StatelessWidget {
  String text;
  String hintText;
  CustomEventField({
    super.key,required this.text, required this.hintText
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 327,
      decoration: BoxDecoration(
        color: AppColors.appBackground,
        border: Border.all(color: AppColors.primary),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),


      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text,style: TextStyle(
                color: AppColors.primary,
                fontSize: 16,
                fontWeight: FontWeight.w700

            ),),
            Expanded(
              child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Virgina Philips Wine Testing'
                  )
              ),
            )
          ],
        ),
      ),


    );
  }
}