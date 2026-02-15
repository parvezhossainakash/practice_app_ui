<<<<<<< HEAD
import 'dart:ffi';

=======
>>>>>>> 8c21c9541144c9678c8cf96d506e6f5175d6a118
import 'package:flutter/material.dart';

import 'catagories.dart';


class CustomListView extends StatefulWidget {
<<<<<<< HEAD
  final int? itemCount;
  const CustomListView({super.key,this.itemCount});
=======
  const CustomListView({super.key});
>>>>>>> 8c21c9541144c9678c8cf96d506e6f5175d6a118

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
<<<<<<< HEAD

      padding: const EdgeInsets.all(16),
      itemCount: widget.itemCount ?? events.length,
=======
      padding: const EdgeInsets.all(16),
      itemCount: events.length,
>>>>>>> 8c21c9541144c9678c8cf96d506e6f5175d6a118
      itemBuilder: (context, index) {
        final event = events[index];

        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.3)),
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 6,
              ),
            ],
          ),
          child: Row(
<<<<<<< HEAD
            mainAxisSize: MainAxisSize.min,
=======
>>>>>>> 8c21c9541144c9678c8cf96d506e6f5175d6a118
            children: [

              // IMAGE
              Container(
                height: 134,
                width: 134,

                decoration: BoxDecoration(

                  image: DecorationImage(image:AssetImage(event.image),


                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)

                  ),

                ),),

              const SizedBox(width: 12),

              // DETAILS
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // TITLE
                      Text(
                        event.title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),

                      // DATE & TIME
                      Row(
                        children: [
                          const Icon(Icons.calendar_today, size: 14),
                          const SizedBox(width: 4),
                          Text(
                            "${event.date} • ${event.time}",
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),

                      const SizedBox(height: 6),

                      // LOCATION
                      Row(
                        children: [
                          const Icon(Icons.location_on, size: 14),
                          const SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              event.location,
                              style: const TextStyle(fontSize: 12),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },



    );
  }
}
