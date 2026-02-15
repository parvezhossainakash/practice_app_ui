import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:untitled/views/home_view/card_view/card_view.dart';

import '../../core/utils/constant/constant_colors.dart';
import '../../core/utils/custom_widget/custom_appbar.dart';
import '../../core/utils/custom_widget/custom_bottom_bar.dart';
import '../../core/utils/custom_widget/custom_elevatedbutton.dart';
import '../create_event_view/custom_list_view/custom_list_view.dart';

class CalendarView extends StatefulWidget {
  const CalendarView({super.key});

  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  DateTime _focusedDay = DateTime(2025, 9, 18);
  DateTime? _selectedDay = DateTime(2025, 9, 18);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: CustomAppBar(title: 'Calendar', showBack: true),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.calendar_today_outlined, color: Colors.grey),
                    SizedBox(width: 8),
                    Text(
                      'May-Jun 2025',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down, color: Colors.grey),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade200,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.chevron_left, color: Colors.black54),
                        onPressed: () {
                          setState(() {
                            _focusedDay = DateTime(
                              _focusedDay.year,
                              _focusedDay.month - 1,
                              _focusedDay.day,
                            );
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade200,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.chevron_right, color: Colors.black54),
                        onPressed: () {
                          setState(() {
                            _focusedDay = DateTime(
                              _focusedDay.year,
                              _focusedDay.month + 1,
                              _focusedDay.day,
                            );
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          TableCalendar(
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            headerVisible: false,
            calendarFormat: CalendarFormat.week,
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            onPageChanged: (focusedDay) {
              setState(() {
                _focusedDay = focusedDay;
              });
            },
            calendarStyle: CalendarStyle(
              selectedDecoration: const BoxDecoration(
                color: Color(0xFF1E824C), // Matching green from image
                shape: BoxShape.circle,
              ),
              todayDecoration: BoxDecoration(
                borderRadius: const BorderRadius.only(bottomRight: Radius.circular(12)),
                 border: Border.all(color: Colors.grey),

                 color: const Color(0xFF1E824C), // Matching green from image
                shape: BoxShape.circle,
              ),
              defaultTextStyle: const TextStyle(fontWeight: FontWeight.bold),
              weekendTextStyle: const TextStyle(fontWeight: FontWeight.bold),
            ),
            daysOfWeekStyle: const DaysOfWeekStyle(
              weekdayStyle: TextStyle(color: Colors.grey),
              weekendStyle: TextStyle(color: Colors.grey),
            ),
          ),
          const SizedBox(height: 16),
Padding(
  padding: const EdgeInsets.all(12.0),
  child: Container(
    padding: EdgeInsets.all(8.0),


    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      border: Border.all(color: Colors.grey.withOpacity(0.5)),),
    child: Column(mainAxisSize: MainAxisSize.min,
      children: [
       CalendarInnerWidget(),
        Divider(color: Colors.grey.withOpacity(0.5),),
       CalendarInnerWidget(
         text: 'Going',
       ),
        Divider(color: Colors.grey.withOpacity(0.5),),
        CalendarInnerWidget(
          text: 'Going',
        ),
        Divider(color: Colors.grey.withOpacity(0.5),),
        CalendarInnerWidget(),
        Divider(color: Colors.grey.withOpacity(0.5),),

      ],

    ),
    ),
),


        ],
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}

class CalendarInnerWidget extends StatelessWidget {
  String ? text;
   CalendarInnerWidget({
    super.key, this.text

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showDialog(context: context, builder: (context)=>Dialog(
          backgroundColor: Colors.transparent,
          child: CardView(),
        ));
      },
      child: Row(

        children: [
          Container(

          height: 72,
            width: 72,
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(image: AssetImage('assets/images/event_image.png'),fit: BoxFit.cover)
            ),
            ),
          SizedBox(width: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,


            children: [
              Column(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Virgina Philips Wine Testing',style: TextStyle(
                    color: AppColors.secondary,
                    fontSize: 16,
                    fontWeight: FontWeight.w700
                  ),),
                  SizedBox(height: 4,),
                  Text('Dhaka bangladesh'),
                  SizedBox(height: 4,),
                  Text('18/06/25 08:30PM',),

                ],

              ),
              SizedBox(width: 15,),

              Container(
                height: 24,
                width: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.primary,
                ),
                child: Center(child: Text(text ?? 'Interested',style: TextStyle(
                  color: AppColors.accent,
                  fontSize: 12,
                  fontWeight: FontWeight.w700
                ),)),


              )
            ],
          ),

        ]
      ),
    );
  }
}
