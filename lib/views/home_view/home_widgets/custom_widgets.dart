import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/views/home_view/card_view/card_view.dart';

import '../../../core/utils/constant/constant_colors.dart';

class CustomGridView extends StatelessWidget {
 final List<String> images ;


   CustomGridView({super.key, required this.images});

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 320, // card height
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          clipBehavior: Clip.antiAlias, // 🔥 important
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // IMAGE
              Expanded(
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return Dialog(
                          backgroundColor: Colors.transparent,
                          child: CardView(),);
                      },);

                    // image tap
                  },
                  child: Image.asset(
                    images[index],
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // TEXT CONTENT
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Item title",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Subtitle",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const Icon(Icons.bookmark_border),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );


    // return GridView.builder(
    //   itemCount: images.length,
    //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 2,
    //     crossAxisSpacing: 8,
    //      mainAxisSpacing: 12,
    //      childAspectRatio: 0.65,
    //   ),
    //   itemBuilder: (context, index) {
    //     return Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Container(
    //         width: double.infinity,
    //         height: double.infinity,
    //
    //         decoration: BoxDecoration(
    //
    //           color: Colors.white,
    //
    //         ),
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Expanded(
    //               child: ClipRRect(
    //
    //
    //                 borderRadius: BorderRadius.circular(12),
    //                 child: InkWell(
    //                   onTap: (){
    //
    //                     showDialog(
    //                       context: context,
    //                       barrierDismissible: false,
    //                       builder: (context) {
    //                         return CardView();
    //                       },
    //                     );
    //
    //                   },
    //                   child: Image.asset(
    //                     images[index],
    //                     fit: BoxFit.cover,
    //                   ),
    //                 ),
    //                   ),
    //
    //
    //             ),
    //             const SizedBox(height: 8),
    //              Text("Item title"),
    //              Row(
    //                children: [
    //                  Text("Subtitle"),
    //                  const Spacer(),
    //                  const Icon(Icons.bookmark_border,color: AppColors.primary,),
    //                ],
    //              ),
    //             const SizedBox(height: 8),
    //           ],
    //         ),
    //       ),
    //     );
    //   },
    // );
  }
}