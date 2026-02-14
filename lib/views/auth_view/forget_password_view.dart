import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:untitled/views/auth_view/verify_email_view.dart';

import '../../core/utils/custom_widget/custom_container.dart';
import '../../core/utils/custom_widget/custom_elevatedbutton.dart';
import 'custom_widgets/custom_validation_field/custom_textfield.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
              padding: const EdgeInsets.only(top: 108,left: 20,right: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    InvolvedContainer(),

                    SizedBox(height: 24),
                    Text(
                      'Forget password',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF202020),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text('Welcome back! Please enter your phone email to reset password.',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                    SizedBox(height: 24,),
                    CustomTextField(
                      controller: TextEditingController(),
                      hintText: 'Enter email',
                      labelText: 'Email',),
                    SizedBox(height: 20,),
                    CustomElevatedButton(text: "Send", onPressed: (){
                      Get.to(ValidationPage());
                    })



                  ]
              ),
            ))

    );
  }
}