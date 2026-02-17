import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/views/profile_view/vip_profile_view/vip_profile_view.dart';
import 'package:untitled/views/splash_view/splash_view.dart';

void main(){
  runApp(const App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      title: "Practice widget",
      home: SplashView(),
    );
  }
}
// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Home"),
//       ),
//         body: Column(
//           children: [
//             CustomTextButton(
//               text: 'text',
//               onPressed: () {
//                 showDialog(
//                   context: context,
//                   builder: (context) {
//                     return Dialog(
//                       backgroundColor: Colors.transparent,
//                       child: EditCard(),
//                     );
//                   },
//                 );
//               },
//             ),
//           ],
//         ),
//     );
//   }
// }
