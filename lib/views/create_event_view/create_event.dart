import 'package:flutter/material.dart';
import 'package:untitled/views/create_event_view/widget/custom_check_box_field.dart';
import 'package:untitled/views/create_event_view/widget/custom_drop_down.dart';
import 'package:untitled/views/create_event_view/widget/custom_event_drop_down.dart';
import 'package:untitled/views/create_event_view/widget/custom_event_field.dart'
    hide CustomEventDropDown;
import 'package:untitled/views/create_event_view/widget/custom_image_field.dart';
import 'package:untitled/views/create_event_view/widget/description.dart';
import 'package:untitled/views/search_view/filter_view/catagories_view/catagories_view.dart';

import '../../core/utils/constant/constant_colors.dart';
import '../../core/utils/custom_widget/custom_appbar.dart';
import '../../core/utils/custom_widget/custom_elevatedbutton.dart';

import 'widget/custom_date_time.dart';

class CreateEvent extends StatelessWidget {
  const CreateEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: CustomAppBar(title: 'Create Event', showBack: true),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.accent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/appbar_text.png',
                  height: 64,
                  width: 142,
                ),
                CustomEventField(
                  text: 'Event title',
                  hintText: 'Virgina Philips Wine Testing',
                ),
                SizedBox(height: 10),
                CustomEventDropDown(text: 'Event type', text1: 'Music'),
                SizedBox(height: 16),
                CustomEventDropDown(
                  text: 'Event category',
                  text1: 'Beach club',
                ),
                SizedBox(height: 16),
                CustomEventField(
                  text: 'Location',
                  hintText: 'Rampura town hall dhaka bangladesh',
                ),
                SizedBox(height: 16),

                CustomDateTime(
                  text: 'Start date and time',
                  text1: '02/06/25 05:30AM',
                ),
                CustomDateTime(
                  text: 'End date and time',
                  text1: '05/06/25 08:30AM',
                ),
                SizedBox(height: 16),
                CustomCheckBoxField(),
                SizedBox(height: 16),
                description_field(),
                SizedBox(height: 16),
                CustomEventDropDown(
                  text: 'Occurrence type',
                  text1: 'One time Event',
                ),
                SizedBox(height: 16),
                CustomImageField(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomElevatedButton(

                      text: 'Create Event', onPressed: () {}),
                ),
                SizedBox(height: 20,)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
