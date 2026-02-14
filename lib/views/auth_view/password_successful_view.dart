import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/utils/constant/constant_colors.dart';
import 'package:untitled/views/auth_view/signin_view.dart';

import '../../core/utils/custom_widget/custom_elevatedbutton.dart';


class BottomSheetView extends StatelessWidget {
  const BottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 415,
      width: 402,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(48),
          topRight: Radius.circular(48),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(),
          Container(
            width: 50,
            height: 6,

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/bar.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 34),
          Container(
            height: 90,
            width: 90,
            child: Icon(Icons.chevron_right, size: 40, color: Colors.white),
            decoration: BoxDecoration(
              color: AppColors.primary,
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withOpacity(0.4),
                  spreadRadius: 15,
                  blurRadius: 10,
                ),
              ],

              borderRadius: BorderRadius.circular(100),

              shape: BoxShape.rectangle,
            ),
          ),
          SizedBox(height: 34),
          Text(
            "Password update Successfully",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 24),
          CustomElevatedButton(
            width: 314,
            text: "Back to sign in",
            onPressed: () {
              Get.to(Login());
            },
          ),
        ],
      ),
    );
  }
}




