import 'package:flutter/material.dart';
import 'package:untitled/views/calendar_view/calendar_view.dart';
class MyPlanScreen extends StatelessWidget {
  const MyPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Plans'),
      ),
      body:Card(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          children: [
            CalendarInnerWidget(),
            Divider(color: Colors.grey.withOpacity(0.5)),
            CalendarInnerWidget(text: 'Going'),
            Divider(color: Colors.grey.withOpacity(0.5)),
            CalendarInnerWidget(text: 'Going'),
            Divider(color: Colors.grey.withOpacity(0.5)),
            CalendarInnerWidget(),
          ],
          ),
        )
        ),
      );
  }
}
