import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utils/constant/constant_colors.dart';
import '../../core/utils/custom_widgets/custom_appbar.dart';
import 'create_event.dart';
import 'custom_list_view/custom_list_view.dart';

class CreateEventView extends StatelessWidget {
  const CreateEventView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: CustomAppBar(title: 'Create Event',
      showBack: false,),
      body:  CustomListView(),
     floatingActionButton: FloatingActionButton(
         child: Icon(Icons.add,color: AppColors.appBackground,),
         backgroundColor: AppColors.primary,
         onPressed: (){
           Get.to(()=> CreateEvent());
         }),

    );
  }
}
