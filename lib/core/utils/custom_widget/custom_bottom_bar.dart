import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/utils/constant/constant_colors.dart';
import 'package:untitled/views/home_view/home_view.dart';
import 'package:untitled/views/search_view/search_view.dart';
import '../../../views/calendar_view/calendar_view.dart';
import '../../../views/create_event_view/create_event_view.dart';
import '../../../views/profile_view/profile_view.dart';
import '../../../views/create_event_view/create_event_view.dart';
import '../constant/constant_images.dart';
import '../constant/constant_images.dart' as Icons;

class _BottomBarItem extends StatelessWidget {
  final String icon;
  final VoidCallback onTap;
  final bool isCenter;

  const _BottomBarItem({
    required this.icon,
    required this.onTap,
    this.isCenter = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(32),
      child: Container(
        height: isCenter ? 40 : 30,
        width: isCenter ? 40 : 30,
        decoration: BoxDecoration(
          color: Colors.white,

          image: DecorationImage(image: AssetImage(icon), fit: BoxFit.contain),
        ),
      ),
    );
  }
}

// class CustomBottomBar1 extends StatefulWidget {
//   const CustomBottomBar1({super.key});
//
//   @override
//   State<CustomBottomBar1> createState() => _CustomBottomBar1State();
// }
//
// class _CustomBottomBar1State extends State<CustomBottomBar1> {
//   int selectedIndex = 0;
//
//   final icons = [Icons.home, Icons.search, Icons.calendar_today, Icons.person];
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: List.generate(icons.length, (index) {
//           final isSelected = selectedIndex == index;
//
//           return GestureDetector(
//             onTap: () {
//               setState(() {
//                 selectedIndex = index;
//               });
//             },
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Container(
//                   height: 3,
//                   width: 24,
//                   color: isSelected ? Colors.green : Colors.transparent,
//                 ),
//                 const SizedBox(height: 6),
//                 Icon(
//                   icons[index],
//                   color: isSelected ? Colors.green : Colors.grey,
//                 ),
//               ],
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }
//


///update the code
///

// class CustomBottomBar extends StatefulWidget {
//
//   const CustomBottomBar({super.key});
//
//   @override
//   State<CustomBottomBar> createState() => _CustomBottomBarState();
// }
//
// class _CustomBottomBarState extends State<CustomBottomBar> {
//    int selectedIndex = 0;
//  final List<String> icons = [
//    AppImage.home,
//   AppImage.search,
//    AppImage.add,
//   AppImage.clander,
//   AppImage.face
//
//  ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//       child: Container(
//          padding: EdgeInsets.all(12),
//         height: 72,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           border: Border.all(color: AppColors.primary),
//           borderRadius: BorderRadius.circular(24),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 10,
//               offset: Offset(0, 4),
//             ),
//           ],
//         ),
//
//          child: Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: List.generate(icons.length, (index) {
//              final isSelected = selectedIndex == index;
//              return GestureDetector(
//                onTap : (){
//                  setState(() {
//                    selectedIndex = index;
//                  });
//                },
//
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//
//
//                 children: [
//                   Image.asset(icons[index],
//                   height: 35,
//
//                   ),
//                   SizedBox(height: 6,),
//                   Container(
//                     height: 3,
//                     width: 35,
//                     color: isSelected ? AppColors.primary : Colors.transparent,
//                   )
//                 ],
//               )  );})
//
//
//          ),
//
//
//
//          ///old code
//         // child: Row(
//         //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         //   children: [
//         //     _BottomBarItem(
//         //       icon: "assets/icons/Home.png",
//         //       onTap: () {
//         //         Get.to(HomeView());
//         //       },
//         //     ),
//         //     _BottomBarItem(
//         //       icon: "assets/icons/search.png",
//         //       onTap: () {
//         //         Get.to(() => SearchView());
//         //       },
//         //     ),
//         //     _BottomBarItem(
//         //       icon: "assets/icons/add.png",
//         //       onTap: () {
//         //         Get.to(() => CreateEventView());
//         //       },
//         //       isCenter: true, // 👈 special button
//         //     ),
//         //     _BottomBarItem(
//         //       icon: "assets/icons/clander.png",
//         //       onTap: () {
//         //         Get.to(() => CalendarView());
//         //       },
//         //     ),
//         //     _BottomBarItem(
//         //       icon: "assets/icons/face.png",
//         //       onTap: () {
//         //         Get.to(() => ProfileView());
//         //       },
//         //     ),
//         //   ],
//         // ),
//       ),
//     );
//   }
// }
 ///old code
// class CustomBottomBar extends StatelessWidget {
//   const CustomBottomBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       Container(
//         height: 84,
//         width: 362,
//         decoration: BoxDecoration(
//             border: BoxBorder.all(color: Colors.green),
//
//             color:Colors.white,
//             borderRadius: BorderRadius.all(Radius.circular(24))
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//
//             children: [
//               InkWell(
//                 onTap: (){
//                   Get.to(SearchView());
//                 },
//                 child: Container(
//                     height: 64,
//                     width: 64,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: AssetImage("assets/icons/Home.png")
//                         )
//                     )
//                 ),
//               ),
//                InkWell(
//                 child: Container(
//                     height: 64,
//                     width: 64,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: AssetImage("assets/icons/search.png")
//                         )
//                     )
//                 ),
//               ),
//               Container(
//                   height: 64,
//                   width: 64,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("assets/icons/add.png")
//                       )
//                   )
//               ),
//               Container(
//                   height: 64,
//                   width: 64,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("assets/icons/clander.png")
//                       )
//                   )
//               ),
//               Container(
//                   height: 64,
//                   width: 64,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("assets/icons/face.png")
//                       )
//                   )
//               ),
//             ],
//           ),
//         ),
//
//     );
//   }
// }


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    HomeView(),
    SearchView(),
    CreateEventView(),
    CalendarView(),
    ProfileView(),
  ];

  void onTabChange(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: CustomBottomBar(
        currentIndex: selectedIndex,
        onTap: onTabChange,
      ),
    );
  }
}

class CustomBottomBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final List<String> icons = const [
    AppImage.home,
    AppImage.search,
    AppImage.add,
    AppImage.clander,
    AppImage.face,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Container(
        padding: const EdgeInsets.all(12),
        height: 72,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColors.primary),
          borderRadius: BorderRadius.circular(24),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(icons.length, (index) {
            final isSelected = currentIndex == index;

            return GestureDetector(
              onTap: () => onTap(index),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    icons[index],
                    height: 35,

                  ),
                  const SizedBox(height: 6),
                  Container(
                    height: 3,
                    width: 35,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors.primary
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
