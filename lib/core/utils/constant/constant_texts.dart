import 'package:flutter/material.dart';

import 'constant_colors.dart';

import 'package:flutter/material.dart';

class AppText {
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
  static const String myProfile = 'My profile';
  static const String privacyPolicy = 'Privacy policy';
  static const String termsConditions = 'Terms & Conditions';
  static const String aboutUs = 'About us';
  static const String contactUs = 'Contact us';

  // privacy policy text

  static const String termsConditionsText =
      'These Terms of Service (“Terms”) govern your use of our  app, website, and services (together, the “Services”). By  using Involved, you agree to these Terms. Please read  them carefully.  You must be at least 13 years old (or 16 in certain regions)  to use Involved. By accessing the app, you confirm that  you meet this requirement. When creating an account, you  agree to provide accurate information and to keep your  login credentials secure. You are responsible for all  activity that takes place under your account.  You agree to use Involved only for lawful purposes and to  respect the rights of other users, venues, and the broader  community. You may not upload or share content that is  harmful, abusive, discriminatory, or misleading, nor may  you attempt to disrupt or interfere with the operation of  the app through hacking, spamming, scraping, or similar  activities.  When you create “My Plans” or share other content, you  remain the owner of your content but grant Involved a  non-exclusive, royalty-free license to use, display, and  share it within the app. Venues are solely responsible for  the accuracy of the events, specials, and information they  upload. All branding, design, and intellectual property  related to Involved remain our property and may not be  copied, distributed, or reused without our permission.  Access to most features of Involved is free for users,  though premium features may require payment in the  future. Venues that subscribe to Involved agree to pay the  applicable fees, which are non-refundable unless  otherwise stated.  We reserve the right to suspend or terminate your account  if you violate these Terms or misuse the Services. You  may also delete your account at any time through the app.  Please note that while Involved provides a platform to  discover events and experiences, we are not responsible  for the accuracy, quality, or safety of any event, venue, or  special listed by third parties, nor can we guarantee that  events will occur as scheduled. Users are encouraged to  confirm details directly with venues.  To the fullest extent permitted by law, Involved and its  team are not liable for any indirect, incidental, or  consequential damages that may arise from your use of  the app. We may update these Terms from time to time,  and if material changes occur, we will notify you through  the app or by email. Continued use of Involved after  changes means that you accept the updated Terms.  If you have questions about these Terms, please contact us  at ';

  static const String privacyPolicyText =
      'At Involved, we respect your privacy and are committed  to protecting your personal information. This Privacy  Policy explains what information we collect, how we use  it, and the choices available to you when using our app,  website, and related services (together, the “Services”).  By using Involved, you agree to the practices described  below.  When you create an account, we may collect information  such as your name, email address, and password. We also  collect data about how you interact with the app,  including the events you view, save, or share, and the  “My Plans” you create. If you choose to enable location  services, we may collect your device’s location to show  nearby experiences and venues. We may also gather  technical information such as device type, app version,  and usage patterns to help us improve functionality and  performance. Venues that upload events, specials, or other  information through Involved may also provide business  details for publication within the app.  We use this information to operate, personalize, and  improve your experience on Involved. This includes  recommending events that match your interests, allowing  you to create and share “My Plans,” communicating  updates or offers, and ensuring the app runs smoothly and  securely.  We do not sell your personal data. However, we may  share limited information in certain cases: with venues  when you interact with their events or express interest in  attending, with trusted service providers that help us  operate the app (such as hosting or analytics partners), or  when required by law or to protect our rights, safety, or  the security of others.  You have control over your data. You can adjust your  location settings at any time in your device preferences,  update or delete your account information directly within  the app, and opt out of marketing emails or push  notifications if you prefer not to receive them. Depending  on your location and applicable privacy laws (such as  GDPR or CCPA), you may also have the right to request  access to, correction of, or deletion of your data by  contacting us.  We take reasonable measures to protect your information  through encryption, secure servers, and other safeguards.  However, no system is completely secure, and we cannot  guarantee absolute protection.  Involved is not intended for children under 13 years of  age (or under 16 in certain regions), and we do not  knowingly collect personal information from minors. If  we learn that we have inadvertently collected such  information, we will take steps to delete it promptly.  We may update this Privacy Policy from time to time to  reflect changes in our practices or legal requirements. If  significant changes occur, we will notify you through the  app or by email. Continued use of Involved after such  updates constitutes acceptance of the revised policy.  If you have any questions or concerns about this Privacy  Policy or our data practices, please contact us at ';
}

class CustomTabText extends StatelessWidget {
  String text;
  CustomTabText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.primary,
      ),
    );
  }
}
