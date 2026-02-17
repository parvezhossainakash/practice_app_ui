import 'package:flutter/material.dart';
import '../../../core/utils/constant/constant_images.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Subscription'),
        ),
        body:Card(

          child: Column(
            children: [
              Text('Payment method'),
              SizedBox(height: 12,),
              Row(
                children: [
                  Image.asset(AppImage.visa),
                  SizedBox(width: 5,),
                  Image.asset(AppImage.mastercard),
                  SizedBox(width: 5,),
                  Image.asset(AppImage.paypal),
                  SizedBox(width: 10,),
                  Text('Credit card',style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),)

                ],
              ),
              SizedBox(height: 12,),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),


                ),
                child: Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 10,),
                    Text('Card holder name')
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
