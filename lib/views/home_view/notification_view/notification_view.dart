import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:untitled/views/home_view/home_view.dart';

import '../../../core/utils/constant/constant_colors.dart';
import '../../../core/utils/custom_widget/custom_appbar.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: CustomAppBar(
        title: 'Notifications',
      ),
      body: Center(
        child: Container(
          height: 268.05,
          width: 258,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 169.05,
                width: 178.75,

                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Bell.jpg'),
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              SizedBox(height: 22),
              Text(
                'No notifications yet',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.secondary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'You have no notifications right now.\ncome back later.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


