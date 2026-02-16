import 'package:flutter/material.dart';
import 'package:untitled/core/utils/custom_widget/custom_bottom_bar.dart';
import 'package:untitled/main.dart';

import '../../core/utils/constant/constant_colors.dart';
import '../../core/utils/custom_widget/custom_appbar.dart';
class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: CustomAppBar(title: 'Profile',
        showBack: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 163,
                width: 163,

                decoration: BoxDecoration(
                  color: AppColors.primary,
                  image: DecorationImage(image: AssetImage('assets/images/profile.png'),
                  fit: BoxFit.cover,),


                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(height: 10,),
              Text('Basar islam',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.secondary,
              ),),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                    borderRadius: BorderRadius.circular(6.0)
                ),
                child: Text('Upgrade to business profile'
                    ,style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.accent,
                  ),
                  ),
              ),SizedBox(height: 24,),
              Container( padding: EdgeInsets.all(12),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.5),

                  ),

                ),
                child: Column(
                  children: [
                    ProfileInnerWidget(
                      text: 'My profile',
                      icon: Icons.person,

                    ),
                    Divider(color: Colors.grey.withOpacity(0.5),),
                    ProfileInnerWidget(
                      text: 'Change password',
                      icon: Icons.key_outlined,


                    ),
                    Divider(color: Colors.grey.withOpacity(0.5),),
                    ProfileInnerWidget(
                      text: 'Privacy policy',
                      icon: Icons.privacy_tip_outlined,


                    ),
                    Divider(color: Colors.grey.withOpacity(0.5),),
                    ProfileInnerWidget(
                      text: 'Terms and conditions',
                      icon: Icons.warning_amber,


                    ),
                    Divider(color: Colors.grey.withOpacity(0.5),),
                    ProfileInnerWidget(
                      text: 'Contact us',
                      icon: Icons.contact_support_outlined,


                    ),
                    Divider(color: Colors.grey.withOpacity(0.5),),
                    ProfileInnerWidget(
                      text: 'My profile',
                      icon: Icons.person,

                    ),
                    Divider(color: Colors.grey.withOpacity(0.5),),
                    ProfileInnerWidget(
                      text: "Logout",
                      icon: Icons.logout,

                    )


                  ],
                ),
              )

            ],
          ),
        ),
      ),

    );
  }
}

class ProfileInnerWidget extends StatelessWidget {
  String text;
  final IconData? icon;


   ProfileInnerWidget({
    super.key, required this.text,required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: AppColors.primary,),
        SizedBox(width: 10,),

        Text(text,style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AppColors.secondary,
        ),),
        Spacer(),
        Icon(Icons.arrow_forward_ios,),


      ],
    );
  }
}
