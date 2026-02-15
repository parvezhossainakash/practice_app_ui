import 'package:flutter/material.dart';

import 'package:untitled/core/utils/constant/constant_colors.dart';




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
  final Color? borderColor;
  final double borderRadius;
  final IconData? icon;

  final double height;
  final double width;
 CustomElevatedButton({
   super.key,
    required this.text,
  required this.onPressed,
    this.backgroundColor ,
    this.textColor = Colors.white,
    this.borderColor,
    this.borderRadius =12,
    this.height = 56,
     this.width = 362,
    this.icon
});



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(

        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Color(0xFF0F6421),
          side: BorderSide(width: 1, color: borderColor ?? AppColors.primary ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
       child:  Text(
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
