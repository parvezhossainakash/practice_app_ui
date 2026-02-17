import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import '../../../core/utils/custom_widgets/custom_elevatedbutton.dart';
import '../../auth_view/signin_view.dart';

class OnbordingView extends StatelessWidget {
  const OnbordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 34),
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 182,
              width: 362,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
              ),
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 54,
                    width: 150,

                    child: Image.asset('assets/images/involved_text.png'),
                  ),

                  SizedBox(height: 24),
                  CustomElevatedButton(
                    text: 'Get Started',
                    width:314 ,
                    onPressed: () {
                      Get.to(SignInView());
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}