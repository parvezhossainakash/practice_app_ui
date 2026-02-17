import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/constant/constant_colors.dart';
import '../../../../core/utils/constant/constant_images.dart';
import '../../../../core/utils/custom_widgets/custom_appbar.dart';
import '../../../home_view/home_widgets/home_widgets.dart';
import '../filter_view.dart';

class ApplyFilterView extends StatelessWidget {

  const ApplyFilterView({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.appBackground,
      appBar: CustomAppBar(title: 'Search', showBack: true),
      body: Column(
        children: [
          SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Expanded(
                  child: SizedBox(

                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: AppColors.primary),
                        fillColor: Colors.white,
                        filled: true,

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          // borderSide: BorderSide,
                        ),
                        hintText: 'Search',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12,),
                InkWell(
                  onTap: (){
                    Get.bottomSheet(FilterBottomSheet());
                  },
                  child: Container(height: 48, width: 48,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppColors.primary,
                    ),
                    child: Icon(Icons.filter_alt,color: AppColors.buttonSecondary,),

                  ),
                ),
              ],
            ),

          ),
          SizedBox(height: 16,),
          Expanded(child: HomeWidgets(images: imageList)),
          ]) ,
    );
  }
}
