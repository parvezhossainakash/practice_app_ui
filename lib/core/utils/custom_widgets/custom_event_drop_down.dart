import 'package:flutter/material.dart';

import '../constant/constant_colors.dart';



class CustomEventDropDownCategories extends StatefulWidget {
  String? text;
  double ? decoration;

  CustomEventDropDownCategories({super.key ,this.text,this.decoration});

  @override
  State<CustomEventDropDownCategories> createState() => _CustomEventDropDownCategoriesState();
}

class _CustomEventDropDownCategoriesState extends State<CustomEventDropDownCategories> {
  String? selectedCategory;


  final List<String> categories = [
    'Beach club',
    'Bingo',
    'Biliards',
    'Cinema',
    'Book club',
    'Cafe',
    'Club',
    'Comedy club',
    'Concert',
    'Fashion',
    'Home & Kitchen',
    'Books',
    'Sports',

  ];

  @override
  Widget build(BuildContext context) {
    return  DropdownButtonFormField<String>(
      hint: const Text("Select Category"),
      value: selectedCategory,
      items: categories.map((category) {
        return DropdownMenuItem(
          value: category,
          child: Text(category),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          selectedCategory = value;
        });
      },
      decoration: InputDecoration(
        border: InputBorder.none,

        // border: OutlineInputBorder(
        //
        //
        //
        //    borderRadius: BorderRadius.circular(12),
        //  ),
      ),
    );
  }
}



class CustomEventDropDown extends StatefulWidget {
  String  text;
  String text1;
  CustomEventDropDown({
    super.key, required this.text,required this.text1
  });

  @override
  State<CustomEventDropDown> createState() => _CustomEventDropDownState();
}

class _CustomEventDropDownState extends State<CustomEventDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 327,
      decoration: BoxDecoration(
        color: AppColors.appBackground,
        border: Border.all(color: AppColors.primary),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),


      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.text,style: TextStyle(
                color: AppColors.primary,
                fontSize: 16,
                fontWeight: FontWeight.w700

            ),),
            Expanded(
              child: CustomEventDropDownCategories(
                text: widget.text1,



              ),
            ),

          ],
        ),
      ),


    );
  }
}