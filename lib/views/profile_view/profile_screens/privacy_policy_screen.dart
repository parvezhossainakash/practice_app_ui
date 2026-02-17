import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:untitled/core/utils/constant/constant_colors.dart';

import '../../../core/utils/constant/constant_texts.dart';
import '../../../core/utils/custom_widgets/custom_appbar.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: CustomAppBar(title: 'Privacy policy',showBack: true,),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(14),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Privacy policy',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: AppColors.secondary,
            ),
        ),
            Text('last update oct 2025',style: TextStyle(
              color:AppColors.primary,
            ),
        
            ),
            SizedBox(
              height: 20,
            ),
            Text(AppText.privacyPolicyText),
            SizedBox(height: 20,),
            Text('support@hellonvolved.com',style: TextStyle(
              color: AppColors.secondary,fontSize: 20,
              fontWeight: FontWeight.w700,
            ),)
        
        
          ],
        ),
      ),
    );
  }
}
