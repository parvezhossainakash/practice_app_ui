import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/utils/constant/constant_images.dart';
import 'package:untitled/core/utils/custom_widgets/custom_elevatedbutton.dart';
import 'package:untitled/views/profile_view/profile_screens/edit_profile_screen.dart';
import 'package:untitled/views/profile_view/profile_screens/my_plan_screen.dart';

import '../../../core/utils/constant/constant_colors.dart';
import '../profile_view.dart';

class VipProfileView extends StatelessWidget {
  const VipProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(AppImage.appBarImage,
          height :56,fit: BoxFit.cover,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfileImage(),
              SizedBox(height: 10,),
              Text('Bashar islam',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.secondary,
              ),),
              CustomElevatedButton(
                  width: 120,
                  textColor: AppColors.secondary,
                  borderColor: Colors.white,
                  backgroundColor: AppColors.buttonSecondary,
                  text: 'Edit profile', onPressed: (){
                Get.to(EditProfileScreen());
              }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('My Plans'),
                      SizedBox(height: 8,),
                      ProfileInner()
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Favorites'),
                      SizedBox(height: 8,),
                      ProfileInner()
                    ],
                  ),
                ],
              ),
              SizedBox(height: 14,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('My Plans'),
                      SizedBox(height: 8,),
                      ProfileInner()
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Favorites'),
                      SizedBox(height: 8,),
                      ProfileInner()
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileInner extends StatelessWidget {
  const ProfileInner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(MyPlanScreen());
      },
      child: Container(
        height: 264,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(image: AssetImage('assets/images/home1.png'))
        ),
      ),
    );
  }
}
