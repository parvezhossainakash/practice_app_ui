import 'package:flutter/material.dart';

import '../../../core/utils/constant/constant_colors.dart';
import 'card_widget/custom_location.dart';
import 'card_widget/custom_text_button.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return
     Stack(
      children: [ Container(

         decoration: BoxDecoration(
           borderRadius: BorderRadius.only(
             topLeft: Radius.circular(48),
             topRight: Radius.circular(48),
             bottomLeft: Radius.circular(24),
             bottomRight: Radius.circular(24),
           ),
           color: Color(0xFFFFFFFF),
         ),

         child: Padding(
           padding: const EdgeInsets.all(12),
           child: Column(
             mainAxisSize: MainAxisSize.min,

             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 height: 157,
                 width: double.infinity,

                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.all(
                     Radius.circular(32),
                   ),
                   color: Color(0xFFFFFFFF),
                   image: DecorationImage(
                     fit: BoxFit.cover,
                     image: NetworkImage(
                       'https://cdn.pixabay.com/photo/2015/03/13/21/23/coca-cola-672295_1280.jpg',
                     ),
                   ),
                 ),
               ),
               SizedBox(height: 10),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text(
                     ' Virgina philips wine testing',
                     style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.w700,
                       color: Color(0xFF0F6421),
                     ),
                   ),
                   Icon(
                     Icons.share,
                     color: Color(0xFF0F6421),
                     size: 24,
                   ),
                 ],
               ),
               SizedBox(height: 24),
               Align(
                 alignment: Alignment.centerLeft,
                 child: Container(
                   height: 43,
                   width: 120,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         'Event date & time',
                         style: TextStyle(
                           fontSize: 12,
                           fontWeight: FontWeight.w500,
                           color: AppColors.primary,
                         ),
                       ),
                       SizedBox(height: 6),
                       Row(
                         mainAxisAlignment:
                         MainAxisAlignment.spaceBetween,
                         children: [
                           Text(
                             '10/06/25',
                             style: TextStyle(
                               fontSize: 14,
                               fontWeight: FontWeight.w700,
                               color: AppColors.primary,
                             ),
                           ),

                           SizedBox(width: 8),
                           Text(
                             '8:30PM',
                             style: TextStyle(
                               fontSize: 14,
                               fontWeight: FontWeight.w700,
                               color: AppColors.primary,
                             ),
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 18),
               Text(
                 'Description',
                 style: TextStyle(
                   color: AppColors.primary,
                   fontSize: 16,
                   fontWeight: FontWeight.w700,
                 ),
               ),
               SizedBox(height: 14),
               Text(
                 "The event is live as soon as it's posted.You can explore various categories and locations",
                 style: TextStyle(
                   color: AppColors.primary,
                   fontSize: 12,
                 ),
               ),
               SizedBox(height: 15),
               CustomLocation(),
               SizedBox(height: 15),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   CustomTextButton(text: 'Going'),
                   CustomTextButton(text: 'going'),
                   CustomTextButton(text: 'Attending'),
                 ],
               ),
             ],
           ),
         ),
       ),
        Positioned(
          top: -5,
          right: -2,
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                color: Color(0xFF0F6421),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                  ),
                ],
              ),
              child: const Icon(
                Icons.close,
                size: 20,
                color:Colors.white,
              ),
            ),
          ),
        ),
     ]);

  }
}

