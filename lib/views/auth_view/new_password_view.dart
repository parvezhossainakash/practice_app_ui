
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:untitled/views/auth_view/password_successful_view.dart';

import '../../core/utils/custom_widget/custom_container.dart';
import '../../core/utils/custom_widget/custom_elevatedbutton.dart';
import '../../core/utils/custom_widget/custom_textfield.dart';
class ResetPasswordScreen extends StatefulWidget {
  ResetPasswordScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/login_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 108, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InvolvedContainer(),
              SizedBox(height: 24),
              Text(
                'Enter new password',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF202020),
                ),
              ),
              SizedBox(height: 8),
              Text('Enter new password'),

              SizedBox(height: 24),
              CustomTextField(
                suffixIcon: Icon(Icons.visibility_off_outlined),
                prefixIcon: Icon(Icons.email, color: Color(0xFF0F6421)),
                controller: TextEditingController(),
                hintText: 'Enter password',
                labelText: 'Password',
              ),

              SizedBox(height: 20),
              CustomTextField(
                suffixIcon: Icon(Icons.visibility_off_outlined),
                controller: TextEditingController(),
                hintText: 'Enter password',
                prefixIcon: Icon(Icons.lock, color: Color(0xFF0F6421)),
                labelText: 'Password',
                obscureText: true,
              ),

              SizedBox(height: 24),

              SizedBox(height: 24),
              CustomElevatedButton(

                backgroundColor: Color(0xFF0F6421),
                textColor: Colors.white,
                borderRadius: 12,
                text: 'Save',

                onPressed: () {
                  Get.bottomSheet(BottomSheetView());

                },
              )


              // ElevatedButton(
              //   onPressed: () {},
              //   child: Text('Sign in'),
              //
              // )
            ],
          ),
        ),
      ),
    );
  }
}
