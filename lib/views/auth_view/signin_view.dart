import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:untitled/views/auth_view/signup_view.dart';
import 'package:untitled/views/home_view/Home_view.dart';

import '../../core/utils/custom_widget/custom_container.dart';
import '../../core/utils/custom_widget/custom_elevatedbutton.dart';
import '../../core/utils/custom_widget/custom_textfield.dart';
import 'forget_password_view.dart';

class Login extends StatefulWidget {
  Login({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding: const EdgeInsets.only(top: 108, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InvolvedContainer(),
              SizedBox(height: 24),
              Text(
                'Sign in to your account',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF202020),
                ),
              ),
              SizedBox(height: 24),
              CustomTextField(
                prefixIcon: Icon(Icons.email, color: Color(0xFF0F6421)),
                controller: TextEditingController(),
                hintText: 'Enter email',
                labelText: 'Email',
              ),

              SizedBox(height: 20),
              CustomTextField(
                controller: TextEditingController(),
                hintText: 'Enter password',
                prefixIcon: Icon(Icons.lock, color: Color(0xFF0F6421)),
                labelText: 'Password',
                obscureText: true,
              ),

              SizedBox(height: 24),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    Get.to(ForgetPassword());
                  },
                  child: Text(
                    'Forget password?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 24),
              CustomElevatedButton(
                backgroundColor: Color(0xFF0F6421),
                textColor: Colors.white,
                borderRadius: 12,
                text: 'Sign in',
                onPressed: () {
                  Get.to(HomeView());
                },
              ),
              SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF606060),
                    ),
                  ),
                  SizedBox(width: 2),

                  InkWell(
                    onTap: () {
                      Get.to(SignUp());
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF111111),
                      ),
                    ),
                  ),
                ],
              ),

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