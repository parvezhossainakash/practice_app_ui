import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart' show Get;
import 'package:untitled/core/utils/constant/constant_texts.dart';
import 'package:untitled/core/utils/custom_widgets/custom_elevatedbutton.dart';
import 'package:untitled/views/profile_view/profile_screens/payment_screen.dart';

import '../../../core/utils/constant/constant_images.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subscription'),
      ),
      body:Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Card(
             
              child:Image.asset(AppImage.subscription) ,
            ),
            CustomElevatedButton(text: 'Upgrade', onPressed: (){
              Get.to(PaymentScreen());
            })
          ],
        ),
      )
    );
  }
}
