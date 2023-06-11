import 'dart:ui';

import 'package:cardsdiary/components/back_view.dart';
import 'package:flutter/material.dart';
import 'package:cardsdiary/components/front_view.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // search and menu
            Padding(padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.search_rounded),
                    iconSize: 30.0,
                    onPressed: null,
                  ),
                  IconButton(
                      icon: Icon(Icons.short_text_rounded),
                      iconSize: 30.0,
                      onPressed: null
                  )
                ],
              ),
            ),
            const SizedBox(height: 30.0),

            // year selector
            DropdownButton(
                value: '2022',
                items: [
                  DropdownMenuItem(value: '2022', child: Text('2022'),

                  ),
                ],
                onChanged: (value) {}
            ),

            // month cards
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: PageView.builder(
                  controller: PageController(
                    initialPage: 0,
                    viewportFraction: 0.78,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: 12, // for 12 months
                  itemBuilder: (_, i) => FrontView(),

                ),
              ),
              ),

            const SizedBox(height: 30.0),
            // action button

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  // today chip
                  Container(
                    width: 160.0,
                    height: 50.0,
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(25.0),
                    ),

                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // weather icon
                        Icon(Icons.wb_sunny_rounded),
                        const SizedBox(width: 10.0),

                        // today details
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Today',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                              Text(
                                'JUNE 5/2023',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),

                  ),
                  const Spacer(),
                  // edit button

                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.edit_outlined,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(width: 10.0),



                  // calendar switch button
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.white,
                    ),
                  ),

                ],
              ),

            ),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}