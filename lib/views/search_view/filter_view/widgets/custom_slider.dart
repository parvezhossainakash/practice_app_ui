import 'package:flutter/material.dart';


import 'package:flutter/material.dart';
import 'package:untitled/core/utils/constant/constant_colors.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double miles = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: 362,
      decoration: BoxDecoration(
       border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '${miles.toInt()} Miles To 100 Miles',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Slider(
                value: miles,
                min: 0,
                max: 100,
                 divisions: 100,
                label: '${miles.toInt()} mile',
                onChanged: (value) {
                  setState(() {
                    miles = value;
                  });
                },
                activeColor: AppColors.primary,
                inactiveColor: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// class New extends StatefulWidget {
//   const New({super.key});
//
//   @override
//   State<New> createState() => _NewState();
// }
//
// class _NewState extends State<New> {
//   double miles = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Slider(
//           value: miles,
//           min: 0,
//           max: 100,
//           divisions: 100,
//           label: '${miles.toInt()} mile',
//           onChanged: (value) {
//             setState(() {
//               miles = value;
//             });
//           },
//           activeColor: Colors.green,
//           inactiveColor: Colors.grey,
//         ),
//       ),
//     );
//   }
// }
