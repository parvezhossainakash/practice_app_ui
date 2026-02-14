import 'package:flutter/material.dart';

import 'constant_colors.dart';

import 'package:flutter/material.dart';

class AppText{
  AppText._();

  static const String appName = 'Involved';
  static const String appNameShort = 'Involved';

  // Elevated Button text
  static const String getStarted = 'Get Started';
  static const String signIn = 'Sign in';
  static const String singUp = 'Sing up';
  static const String forgotPassword = 'Forgot Password';
  static const String resetPassword = 'Reset Password';
  static const String save = 'Save';
  static const String send = 'Send';
  static const String verifyEmail = 'Verify Email';
  static const String resendCode = 'Resend Code';
  static const String backToSignIn = 'Back to Sign in';
  static const String applyFilter = 'Apply Filter';
  static const String cancel = 'Cancel';
  static const String done = 'Done';
  static const String createEvent = 'Create Event';
  static const String updateProfile = 'Update Profile';
  static const String update = 'Update';
  static const String makePayment = 'Make payment';
  static const String changePassword = 'Change Password';
  static const String logout = 'Logout';
  static const String no = 'No';
  static const String yes = 'Yes';
  static const String delete = 'Delete';

//Text button text
  static const String locationText = 'Rampura town hall dhaka bangladesh';
  static const String interested = 'Interested';
  static const String going = 'Going';
  static const String add = 'Add';
  static const String busy = 'Busy';
  static const String quiet = 'Quiet';
  static const String moderate = 'Moderate';
  static const String editProfile = 'Edit Profile';

//Profile text
  static const String myProfile ='My profile';
  static const String privacyPolicy = 'Privacy policy';
  static const String termsConditions = 'Terms & Conditions';
  static const String aboutUs = 'About us';
  static const String contactUs = 'Contact us';



}

class CustomTabText extends StatelessWidget {
  String text;
   CustomTabText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.primary,
    ),
    );
  }
}
