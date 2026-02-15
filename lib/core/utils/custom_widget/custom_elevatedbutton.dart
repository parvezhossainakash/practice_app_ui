import 'package:flutter/material.dart';
<<<<<<< HEAD

import 'package:untitled/core/utils/constant/constant_colors.dart';
=======
import 'package:get/get_core/src/get_main.dart' show Get;
import 'package:get/get_navigation/src/extension_navigation.dart';
>>>>>>> 8c21c9541144c9678c8cf96d506e6f5175d6a118




// class CustomElevatedbutton extends StatefulWidget {
//   final String? text;
//
//
//   const CustomElevatedbutton({
//     super.key,required this.text,
//   });
//
//
//   @override
//   State<CustomElevatedbutton> createState() => _CustomElevatedbuttonState();
// }
//
// class _CustomElevatedbuttonState extends State<CustomElevatedbutton> {
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(onPressed: () {
//       Get.to(Login());
//     }, child: Text(widget.text!,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
//       style: ElevatedButton.styleFrom(
//         shape: RoundedRectangleBorder(
//
//           borderRadius: BorderRadius.circular(12),
//         ),
//         minimumSize: Size(362, 56),
//         backgroundColor: Color(0xFF0F6421),
//
//       ),
//       // style: ButtonStyle(
//       //
//       //   backgroundColor: MaterialStateProperty.all(Colors.green),
//       //   shape: MaterialStateProperty.all(
//       //     RoundedRectangleBorder(
//       //       borderRadius: BorderRadius.circular(12),
//       //     ),
//       //
//       // ),)
//     );
//   }
// }


class CustomElevatedButton extends StatelessWidget{
  
  final String text;
  final  onPressed;
  final Color? backgroundColor ;
  final Color textColor;
<<<<<<< HEAD
  final Color? borderColor;
  final double borderRadius;
  final IconData? icon;
=======
  final double borderRadius;
>>>>>>> 8c21c9541144c9678c8cf96d506e6f5175d6a118

  final double height;
  final double width;
 CustomElevatedButton({
   super.key,
    required this.text,
  required this.onPressed,
    this.backgroundColor ,
    this.textColor = Colors.white,
<<<<<<< HEAD
    this.borderColor,
    this.borderRadius =12,
    this.height = 56,
     this.width = 362,
    this.icon
=======
    this.borderRadius =12,
    this.height = 56,
     this.width = 362,
>>>>>>> 8c21c9541144c9678c8cf96d506e6f5175d6a118
});



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
<<<<<<< HEAD

        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Color(0xFF0F6421),
          side: BorderSide(width: 1, color: borderColor ?? AppColors.primary ),
=======
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Color(0xFF0F6421),

>>>>>>> 8c21c9541144c9678c8cf96d506e6f5175d6a118
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
<<<<<<< HEAD
       child:  Text(
=======

        child: Text(
>>>>>>> 8c21c9541144c9678c8cf96d506e6f5175d6a118
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
