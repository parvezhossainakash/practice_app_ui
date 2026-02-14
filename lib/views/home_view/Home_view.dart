import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/utils/constant/constant_images.dart';

import '../../core/utils/constant/constant_colors.dart';
import '../../core/utils/constant/constant_texts.dart';
import '../../core/utils/custom_widget/custom_bottom_bar.dart';
import 'home_widgets/custom_widgets.dart';
import 'notification_view/notification_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: AppColors.appBackground,
        appBar: AppBar(
          // leading: Icon(Icons.arrow_back_ios),
          backgroundColor: AppColors.appBackground,
          elevation: 0,
          centerTitle: true,
          title: Image.asset(
            'assets/images/appbar_text.png',
            height: 56,
            width: 154,
            fit: BoxFit.cover,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: AppColors.buttonPrimary,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: AppColors.appBackground,
                  ),
                  onPressed: () {
                    Get.to(NotificationView());
                  },
                ),
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBar(
              isScrollable: true,
              labelColor: Colors.black,
              indicatorColor: Colors.green,
              tabs: [
                Tab(text: "All"),
                Tab(text: "Reading"),
                Tab(text: "Music"),
                Tab(text: "Cooking"),
                Tab(text: "Special events"),
                Tab(text: "Pets"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  CustomGridView(images: imageList),
                  CustomGridView(images: imageList),
                  CustomGridView(images: imageList),
                  CustomGridView(images: imageList),
                  CustomGridView(images: imageList),
                  CustomGridView(images: imageList),
                ],
              ),
            ),

          ],
        ),
        bottomNavigationBar: CustomBottomBar(),
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: 0,
        //   type: BottomNavigationBarType.fixed,
        //   backgroundColor: Colors.white,
        //   elevation: 10,
        //
        //   selectedItemColor: Colors.black,
        //   unselectedItemColor: Colors.grey,
        //
        //   items: const [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: '',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.favorite),
        //       label: '',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.person),
        //       label: '',
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
