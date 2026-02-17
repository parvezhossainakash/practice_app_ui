import 'package:flutter/material.dart';
import 'package:untitled/core/utils/constant/constant_colors.dart';
import 'package:untitled/views/create_event_view/widget/custom_event_field.dart';
import 'package:untitled/views/profile_view/profile_view.dart';

import '../../../core/utils/constant/constant_images.dart';
import '../../../core/utils/custom_widgets/custom_appbar.dart';
import '../../../core/utils/custom_widgets/custom_elevatedbutton.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: CustomAppBar(title: 'Edit Profile information',
        showBack: true,),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,


          children: [
            Stack(children: [
            ProfileImage(),
            Positioned(
                bottom: 10,
                right: 10,


                child:Image.asset(AppImage.imageLogo) )]),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.withOpacity(0.5)),

              ),
              child: Column(
                children: [
                  CustomEventField(text: 'Name',textColor: AppColors.primary, hintText: 'Bashar islam',
                    borderColor: Colors.grey.withOpacity(0.5),
                    width: double.infinity,
                  ),
                  SizedBox(height: 12,),
                  CustomEventField(text: 'Email',textColor: AppColors.primary,
                    hintText: 'support@gmail.com',
                    borderColor: Colors.grey.withOpacity(0.5),
                    width: double.infinity,
                  ),
                  SizedBox(height: 12,),
                  CustomEventField(text: 'Address',textColor: AppColors.primary,
                    hintText: 'Rangpur BD',
                    borderColor: Colors.grey.withOpacity(0.5),
                    width: double.infinity,
                  ),
                  SizedBox(height: 12,),
                  CustomEventField(text: 'Phone number',textColor: AppColors.primary,
                    hintText: '12333333122',
                    borderColor: Colors.grey.withOpacity(0.5),
                    width: double.infinity,
                  ),


                ],
              ),
            ),
            Spacer(),
            CustomElevatedButton(text: 'Update profile', onPressed: (){})
          ],
        ),
      ),
    );
  }
}
