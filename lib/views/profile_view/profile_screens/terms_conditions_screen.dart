import 'package:flutter/material.dart';

import '../../../core/utils/constant/constant_colors.dart';
import '../../../core/utils/constant/constant_texts.dart';
import '../../../core/utils/custom_widgets/custom_appbar.dart';
import 'my_plan_screen.dart';
class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: CustomAppBar(title: 'Terms & conditions',showBack: true,),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(14),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Terms & conditions',style: TextStyle(
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
            Text(AppText.termsConditionsText),
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