import 'package:flutter/material.dart';

import '../../../core/utils/constant/constant_colors.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  final List<String> categories = [
    "Romantic",
    'Party',
    "Casual",
    'Outdoors',
    "Sexy",
    "Sophisticated",
    "Chill",
    "Bohemian",
    "Active",
    'Professional',


  ];

  final Set<String> selectedItems = {};

  @override
  Widget build(BuildContext context) {
    return
      GridView.builder(

        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 👈 2 items per row
          // mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 3.5, // height control
        ),
        itemBuilder: (context, index) {
          final item = categories[index];
          final isSelected = selectedItems.contains(item);

          return InkWell(
            onTap: () {
              setState(() {
                isSelected
                    ? selectedItems.remove(item)
                    : selectedItems.add(item);
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(8),
                // border: Border.all(
                //   color: isSelected ? Colors.blue : Colors.grey.shade300,
                //   width: 1.5,
                // ),
              ),
              child: Row(
                children: [
                  Checkbox(
                    side: const BorderSide(color: AppColors.primary, width: 1.5),
                    checkColor: Colors.green,
                    value: isSelected,
                    onChanged: (value) {
                      setState(() {
                        value!
                            ? selectedItems.add(item)
                            : selectedItems.remove(item);
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      item,
                      style: const TextStyle(fontSize: 14),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          );
        },

      );
  }
}
