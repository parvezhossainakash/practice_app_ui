import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/views/create_event_view/widget/custom_check_box_field.dart';
import 'package:untitled/views/create_event_view/widget/custom_event_drop_down.dart';
import 'package:untitled/views/create_event_view/widget/custom_event_field.dart';
import 'package:untitled/views/create_event_view/widget/description.dart';
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
                CustomImageField(),               Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomElevatedButton(

                      text: 'Create Event', onPressed: () {}),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomImageField extends StatelessWidget {
  const CustomImageField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 344,
      width: 327,
      decoration: BoxDecoration(
        color: AppColors.appBackground,

        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Upload image',
              style: TextStyle(
                color: AppColors.secondary,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 10),
            Container(height: 200,
              width: 279,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
              ),
              child: InnerImagePiker(),
            )
          ],
        ),
      ),
    );
  }
}

class InnerImagePiker extends StatefulWidget {
  const InnerImagePiker({super.key});

  @override
  State<InnerImagePiker> createState() => _InnerImagePikerState();
}

class _InnerImagePikerState extends State<InnerImagePiker> {
  File? image;
  final ImagePicker picker = ImagePicker();

  Future<void> pickFromGallery() async {
    final XFile? pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null){
      setState(()=> image = File(pickedImage.path));
    }

  }
  Future<void> pickCamera( )async{
    final XFile? pickedImage = await picker.pickImage(source: ImageSource.camera);

    if (pickedImage != null){
      setState(()=> image = File(pickedImage.path));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        image == null
        ? Text('No image selected')
            : Image.file(image!,height: 100,width: 100),
        SizedBox(height: 10,),
        InkWell(
            onTap: pickCamera,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(12),

              ),
              child: Text('Browse files',style: TextStyle(
                color: AppColors.accent,
              ),
              ),

            )

        ),
        SizedBox(height: 10,),

        InkWell(
          onTap: pickFromGallery,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(12),

            ),
            child: Text('Browse files',style: TextStyle(
    color: AppColors.accent,
    ),
          ),

        )

        )],
    );
  }
}
