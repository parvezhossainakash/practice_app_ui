import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/views/create_event_view/create_event.dart';
import 'package:untitled/views/home_view/Home_view.dart';
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
