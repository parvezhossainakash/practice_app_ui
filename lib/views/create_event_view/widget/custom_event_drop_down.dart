import 'package:flutter/material.dart';

import '../../../core/utils/constant/constant_colors.dart';
import 'custom_drop_down.dart';
class CustomEventDropDown extends StatefulWidget {
  String  text;
  String text1;
  CustomEventDropDown({
    super.key, required this.text,required this.text1
  });

  @override
  State<CustomEventDropDown> createState() => _CustomEventDropDownState();
}

class _CustomEventDropDownState extends State<CustomEventDropDown> {
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
            Text(widget.text,style: TextStyle(
                color: AppColors.primary,
                fontSize: 16,
                fontWeight: FontWeight.w700

            ),),
            Expanded(
              child: CustomEventDropDownCategories(
                text: widget.text1,



              ),
            ),

          ],
        ),
      ),


    );
  }
}