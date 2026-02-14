import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../views/home_view/Home_view.dart';
import '../constant/constant_colors.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBack;
  final List<Widget>? actions;
  final double height;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showBack = true,
    this.actions,
    this.height = kToolbarHeight,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appBackground,
      elevation: 0,
      centerTitle: true,
      leading: showBack
          ? IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Get.back(),
      )
          : null,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: AppColors.secondary,
          fontWeight: FontWeight.w700,
        ),
      ),
      actions: actions,
    );
  }
}


// class CustomAppBar extends StatelessWidget {
//  final String text;
//    CustomAppBar({
//     super.key,required this.text
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: AppColors.appBackground,
//       elevation: 0,
//       centerTitle: true,
//       leading: IconButton(
//         onPressed: () {
//           Get.to(HomeView());
//         },
//         icon: Icon(Icons.arrow_back_ios),
//       ),
//       title: Text(
//         text,
//         style: TextStyle(
//           fontSize: 16,
//           color: AppColors.secondary,
//           fontWeight: FontWeight.w700,
//         ),
//       ),
//     );
//   }
// }