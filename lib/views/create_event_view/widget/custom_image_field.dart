import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/utils/constant/constant_colors.dart';
import '../../../core/utils/custom_widget/custom_elevatedbutton.dart';

class CustomImageField extends StatelessWidget {
  const CustomImageField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 344,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.appBackground,


          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Upload image',
              style: TextStyle(
                color: AppColors.secondary,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),SizedBox(height: 12,),
            Expanded(
              child: Center(
                child: Container(

                  child: ImagePickerButton(),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomElevatedButton(text: 'Cancel',
                    width: 133.5,
                    backgroundColor: AppColors.appBackground,
                    borderColor: Colors.grey,
                    textColor: AppColors.secondary,

                    onPressed: () {}),
                SizedBox(width: 10,),
                CustomElevatedButton(text: 'Done',
                    width: 133.5,
                    backgroundColor: AppColors.primary,
                    onPressed: () {}),


              ],
            )
          ],
        ),
      ),
    );
  }
}

class ImagePickerButton extends StatefulWidget {
  const ImagePickerButton({super.key});

  @override
  State<ImagePickerButton> createState() => _ImagePickerButtonState();
}

class _ImagePickerButtonState extends State<ImagePickerButton> {
  File? selectedImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage() async {
    final XFile? image =
    await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: pickImage, // 👈 tap anywhere to browse
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade400),
        ),
        child: selectedImage != null
            ? ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.file(
            selectedImage!,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        )
            : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.image, size: 40, color: Colors.grey),
            SizedBox(height: 8),
            Text(
              "Tap to browse image",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
