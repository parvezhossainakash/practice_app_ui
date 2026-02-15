import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../core/utils/custom_widget/custom_container.dart';
import '../../core/utils/custom_widget/custom_elevatedbutton.dart';
import 'new_password_view.dart';
class ValidationPage extends StatelessWidget {
  ValidationPage({super.key});
  final TextEditingController otpController = TextEditingController();


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
                'Verify Email',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF202020),
                ),
              ),
              SizedBox(height: 8),
              Text('Enter the passcode sent to your phone below'),
              SizedBox(height: 32),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     ValidationField(),
              //     ValidationField(),
              //     ValidationField(),
              //     ValidationField(text: '-',   ),
              //     ValidationField(
              //       text: '-',
              //
              //     ),
              //     ValidationField(
              //       text: '-',
              //     ),
              //     ],
              // ),
              SizedBox(height: 32),
              PinCodeTextField(
                appContext: context,
                controller: otpController,
                length: 6,
                keyboardType: TextInputType.number,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 50,
                  fieldWidth: 45,
                  activeColor: Colors.green,
                  selectedColor: Colors.green,
                  inactiveColor: Colors.grey,
                ),
                onChanged: (value) {
                  print(value);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/Clock_cercle.png",
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(width: 6),
                  Text(
                    "00:30",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),



              SizedBox(height: 32),

              CustomElevatedButton(

                text: "Send",
                onPressed: () {
                  Get.to(ResetPasswordScreen());
                },
              ),
              SizedBox(height: 32),
              Row(crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn't receive code?",style: TextStyle(color: Color(0xFF606060),fontSize: 14,fontWeight: FontWeight.w500),),
                  SizedBox(width: 2,),
                  InkWell(child: Text('Resend code',style: TextStyle(color: Color(0xFF111111),fontSize: 14,fontWeight: FontWeight.w500),),)
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}