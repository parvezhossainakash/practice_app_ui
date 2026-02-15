import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/utils/constant/constant_images.dart';
import 'package:untitled/views/search_view/filter_view/apply_filter_view/apply_filter_view.dart';
import 'package:untitled/views/search_view/filter_view/widgets/custom_slider.dart';
import 'package:untitled/views/search_view/filter_view/widgets/filter_text_fileld.dart';

import '../../../core/utils/constant/constant_colors.dart';
import '../../../core/utils/custom_widget/custom_elevatedbutton.dart';
import '../../auth_view/signin_view.dart';
import '../../home_view/home_widgets/custom_widgets.dart';
import 'catagories_view/catagories_view.dart';


class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 577,
      width: 402,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(48),
          topRight: Radius.circular(48),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(


          children: [

            Container(
              width: 50,
              height: 6,

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bar.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("Filters",style: TextStyle(
                fontSize:20,fontWeight: FontWeight.w700,color: Colors.black
            ),),

            SizedBox(height: 16),
            FilterTextField(
              hintText: 'Dhaka bangladesh',
            ),
            SizedBox(height: 16),
            CustomDropDown(),
            SizedBox(height: 16),
            FilterTextField(
              hintText: 'Event date',
            ),
            SizedBox(height: 14),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Distance',style: TextStyle(
                  fontSize: 16,fontWeight: FontWeight.w500,color: AppColors.secondary
              ),),
            ),
            SizedBox(
              height: 8,
            ),


            // Text('${miles.toInt()}'),
            CustomSlider(),
            SizedBox(height: 8),

            CustomElevatedButton(
              width: 362,
              backgroundColor: AppColors.primary,
              textColor: AppColors.accent,
              text: "Apply Filter",
              onPressed: () {
                Get.to(ApplyFilterView());
              },
            ),
          ],
        ),
      ),
    );
  }
}

