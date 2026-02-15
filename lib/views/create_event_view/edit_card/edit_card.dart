import 'package:flutter/material.dart';

import '../../../core/utils/constant/constant_colors.dart';
import '../../../core/utils/custom_widget/custom_elevatedbutton.dart';
import '../../../core/utils/custom_widget/custom_text_button.dart';
import '../../home_view/card_view/card_widget/custom_location.dart';

class EditCard extends StatefulWidget {
  const EditCard({super.key});

  @override
  State<EditCard> createState() => _EditCardState();
}

class _EditCardState extends State<EditCard> {
  @override
  Widget build(BuildContext context) {
    return
      Container(

        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primary,width: 1.5),
          borderRadius: BorderRadius.all(
            Radius.circular(24)

          ),
          color: Color(0xFFFFFFFF),
        ),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 93,
                width: double.infinity,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  color: Color(0xFFFFFFFF),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/image.png'),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(

                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  color: Color(0xFFFFFFFF),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' Virgina philips wine testing',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: AppColors.secondary,
                        ),
                      ),
                      Text(' One time Event'),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.access_time,color: AppColors.primary,),
                          Text('18/06/25 08:30PM'),

                          Text('18/06/25 08:30PM'),
                        ],
                      ),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),

                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on,color: AppColors.primary,),
                          Text('Rampura dhaka, bangladesh'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 18),
              CustomElevatedButton(
                icon: Icons.offline_bolt,

                borderColor: Colors.white,
                backgroundColor: AppColors.buttonSecondary,
                textColor: AppColors.primary,
                text: 'Quiet',
                onPressed: () {},


              ),
              SizedBox(height: 18,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomElevatedButton(
                    width: 110,
                    backgroundColor: AppColors.primary,
                    textColor: AppColors.accent,
                    text: 'Edit',
                    onPressed: () {},


                  ),
                  SizedBox(
                    width: 10,

                  ),
                  CustomElevatedButton(
                    width: 110,
                    backgroundColor: AppColors.appBackground,
                    textColor: AppColors.primary,

                    text: 'Delete',
                    onPressed: () {},


                  ),

                ],
              )

            ],
          ),
        ),
      );


  }
}