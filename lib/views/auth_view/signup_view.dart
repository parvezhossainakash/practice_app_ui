import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/views/auth_view/signin_view.dart';

import '../../core/utils/custom_widgets/custom_container.dart';
import '../../core/utils/custom_widgets/custom_elevatedbutton.dart';
import '../../core/utils/custom_widgets/custom_textfield.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 08, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InvolvedContainer(),
              SizedBox(height: 24),
              Text(
                'Sign up with gmail',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF202020),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Welcome back! Please enter your details.',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 24),
              CustomTextField(
                prefixIcon: Icon(Icons.person),
                controller: TextEditingController(),
                hintText: 'Enter username',
                labelText: 'User Name',
              ),
              SizedBox(height: 20),
              CustomTextField(
                prefixIcon: Icon(Icons.email),
                controller: TextEditingController(),
                hintText: 'Enter email',
                labelText: 'Email',
              ),
              SizedBox(height: 20),
              CustomTextField(
                prefixIcon: Icon(Icons.numbers),
                controller: TextEditingController(),
                hintText: 'Phone Number',
                labelText: 'Phone Number',
              ),
              SizedBox(height: 20),
              CustomTextField(
                prefixIcon: Icon(Icons.lock),
                controller: TextEditingController(),
                hintText: 'Enter password',
                labelText: 'Password',
                obscureText: true,
              ),
              SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: true,
                    focusColor: Color(0xFF0F6421),

                    checkColor: Colors.white,
                    activeColor: Color(0xFF0F6421),
                    onChanged: (value) {},
                  ),

                  Text(
                    'by creating an account.i accept the terms conditions privacy policy.',
                    style: TextStyle(fontSize: 10),
                    maxLines: 2,
                  ),
                ],
              ),
              SizedBox(height: 24),

              CustomElevatedButton(text: 'Sign up', onPressed: () {
                Get.off(SignInView());
              }),
              SizedBox(height: 24),

              Row(crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF606060),
                    ),
                  ),
                  InkWell(
                      child: Text('Sign in',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF111111),),)
                  )
                ],
              ),
              SizedBox(height: 24),
              Center(child: Text('OR',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF606060),))),
              SizedBox(height: 24),
              Container(
                height: 54,
                width: 362,
                decoration: BoxDecoration(
                  border: Border.all(color:Color(0xFF0F6421) ),
                  borderRadius: BorderRadius.circular(10),

                ),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/google.png')),
                      ),
                    ),

                    SizedBox(width: 10),
                    Text('Sign up with google')


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