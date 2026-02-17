import 'package:flutter/material.dart';

import '../../../core/utils/constant/constant_colors.dart';
import '../../../core/utils/constant/constant_images.dart';
import '../../../core/utils/custom_widgets/custom_appbar.dart';
class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: CustomAppBar(title: 'Contact us',showBack: true,),
      body: Center(
        child: Container(
          child: Column(

           crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImage.mail),
              SizedBox(height: 10,),
              Text('support@hellonvolved.com')

            ],
          ),
        ),
      )



    );
  }
}
