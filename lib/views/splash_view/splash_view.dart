import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import 'onbording_view/onbording_view.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState(){

    super.initState();

    Future.delayed(Duration(seconds: 3),() {
      Get.off(() => const OnbordingView());
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF8EB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Center(
            child: Container(
              height:250 ,
              width: 250,
              child: Image.asset("assets/images/involved_logo.png",alignment: Alignment.center),
            ),
          )
        ],

      ),
    );
  }
}