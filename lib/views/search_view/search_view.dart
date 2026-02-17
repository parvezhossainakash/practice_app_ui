import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/utils/constant/constant_colors.dart';
import '../../core/utils/custom_widgets/custom_appbar.dart';
import 'filter_view/filter_view.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: CustomAppBar(title: 'Search',
      showBack: false,),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 290,
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
          Expanded(
            child: Center(
              child: Text('No result found!',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.secondary,
              ),),
            ),
          )
        ],
      ),


    );
  }
}
