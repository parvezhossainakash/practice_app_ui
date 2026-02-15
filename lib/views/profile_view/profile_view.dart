import 'package:flutter/material.dart';
import 'package:untitled/core/utils/custom_widget/custom_bottom_bar.dart';

import '../../core/utils/constant/constant_colors.dart';
import '../../core/utils/custom_widget/custom_appbar.dart';
class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: CustomAppBar(title: 'Profile', showBack: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
            )
          )
        ],
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
