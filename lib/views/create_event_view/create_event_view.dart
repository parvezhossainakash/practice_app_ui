import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utils/constant/constant_colors.dart';
import '../../core/utils/custom_widget/custom_appbar.dart';
import '../../core/utils/custom_widget/custom_bottom_bar.dart';
import 'create_event.dart';
import 'custom_list_view/custom_list_view.dart';
import 'edit_card/edit_card.dart';

class CreateEventView extends StatelessWidget {
  const CreateEventView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: CustomAppBar(title: 'Create Event', showBack: true),
      body: InkWell(

          onTap: (){
            showDialog(context: context, builder: (context)=>Dialog(
              backgroundColor: Colors.transparent,
              child: EditCard(),
            ));
          },
          child: CustomListView()),
      bottomNavigationBar: CustomBottomBar(),

    );
  }
}
