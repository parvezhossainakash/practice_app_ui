
import 'package:flutter/material.dart';

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
