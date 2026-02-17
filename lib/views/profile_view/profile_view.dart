import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/views/profile_view/profile_screens/change_password_screen.dart';
import 'package:untitled/views/profile_view/profile_screens/contact_screen.dart';

import 'package:untitled/views/profile_view/profile_screens/edit_profile_screen.dart';
import 'package:untitled/views/profile_view/profile_screens/privacy_policy_screen.dart';

import '../../core/utils/constant/constant_colors.dart';
import '../../core/utils/constant/constant_images.dart';
import '../../core/utils/custom_widgets/custom_appbar.dart';
import '../../core/utils/custom_widgets/custom_elevatedbutton.dart';
import '../auth_view/signin_view.dart';
import 'profile_screens/terms_conditions_screen.dart';
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
              ProfileImage(),
              SizedBox(height: 10,),
              Text('Bashar islam',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.secondary,
              ),),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Get.to(EditProfileScreen());
                },
                child: Container(
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
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),

                        border: Border.all(
                          color: AppColors.primary.withOpacity(0.5),

                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset(AppImage.diamond),
                          Column(
                            children: [
                              Text('Subscription package'),
                              SizedBox(height: 10,),
                              Text('Renewal date: 10/06/25')
                            ],
                          )

                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    ProfileInnerWidget(
                      text: 'My profile',
                      icon: Icons.person,

                    ),
                    Divider(color: Colors.grey.withOpacity(0.5),),
                    InkWell(
                      onTap: (){
                        Get.to(ChangePasswordScreen());

                      },
                      child: ProfileInnerWidget(
                        text: 'Change password',
                        icon: Icons.key_outlined,


                      ),
                    ),
                    Divider(color: Colors.grey.withOpacity(0.5),),
                    InkWell(
                      onTap: (){
                        Get.to(PrivacyPolicyScreen());
                      },
                      child: ProfileInnerWidget(
                        text: 'Privacy policy',
                        icon: Icons.privacy_tip_outlined,


                      ),
                    ),
                    Divider(color: Colors.grey.withOpacity(0.5),),
                    InkWell
                      (
                      onTap: (){
                        Get.to(TermsConditionScreen());
                      },
                      child: ProfileInnerWidget(
                        text: 'Terms and conditions',
                        icon: Icons.warning_amber,


                      ),
                    ),
                    Divider(color: Colors.grey.withOpacity(0.5),),
                    InkWell(
                      onTap: (){
                        Get.to(ContactScreen());
                      },
                      child: ProfileInnerWidget(
                        text: 'Contact us',
                        icon: Icons.contact_support_outlined,


                      ),
                    ),
                    Divider(color: Colors.grey.withOpacity(0.5),),
                    InkWell(
                      onTap: (){
                       showDialog(context: context,
                           builder: (BuildContext context) {
                          return Dialog(
                            child: Card(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 12,),

                                  Image.asset(AppImage.bar),
                                  SizedBox(height: 12,),

                                  Image.asset(AppImage.logout),
                                  SizedBox(height: 12,),
                                  Text('Logout',style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.secondary,
                                  )),
                                  Text('Are you sure you want to log out?'),
                                  SizedBox(height: 12,),

                                  Row(crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: [
                                      CustomElevatedButton(
                                        backgroundColor: AppColors.appBackground,
                                        textColor: AppColors.secondary,
                                        text: 'No',
                                          onPressed: (){
                                       Get.back();
                                      },
                                      width: 134,),
                                     SizedBox(width: 8,),
                                      CustomElevatedButton(
                                          width:134 ,
                                          text: 'Yes',
                                          onPressed: (){
                                       Get.off(SignInView());
                                      }),
                                    ],
                                  ),
                                  SizedBox(height: 20,),

                               ]
                              ),
                            ),
                          );});



                      },
                      child: ProfileInnerWidget(
                        text: "Logout",textColor: Colors.red,
                        icon: Icons.login_outlined,color: Colors.red,

                      ),
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




class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 163,
      width: 163,

      decoration: BoxDecoration(
        color: AppColors.primary,
        image: DecorationImage(image: AssetImage('assets/images/profile.png'),
        fit: BoxFit.cover,),


        shape: BoxShape.circle,
      ),
    );
  }
}

class ProfileInnerWidget extends StatelessWidget {
  String text;
  final IconData? icon;
  final Color? color;
  final Color? textColor;


   ProfileInnerWidget({
    super.key, required this.text,required this.icon,this.color,
     this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: color ?? AppColors.primary,),
        SizedBox(width: 10,),

        Text(text,style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: textColor ?? AppColors.secondary,
        ),),
        Spacer(),
        Icon(Icons.arrow_forward_ios,size: 10,),


      ],
    );
  }
}
