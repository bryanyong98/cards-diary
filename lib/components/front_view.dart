import 'package:flutter/material.dart';

class FrontView extends StatelessWidget {
  FrontView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: const [
            BoxShadow(color: Colors.black26, blurRadius: 8.0),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '1',
                textScaleFactor: 3.5,
                style: TextStyle(
                    color: Colors.white
                ),
              ),

              const Text(
                'JAN',
                textScaleFactor: 2.5,
                style: TextStyle(
                    color: Colors.white
                ),
              ),

              const Spacer(),

              Row(
                children: [
                  // progress bar
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '5/31',
                          style: TextStyle(color: Colors.white),
                        ),

                        Container(
                          width: double.infinity,
                          height: 3.0,
                          color: Colors.white30,
                          child: FractionallySizedBox(
                            alignment: Alignment.centerLeft,
                            widthFactor: 5/31,
                            child: Container(
                              color: Colors.white,

                            ),
                          ),
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),

                  // Option button
                  const Icon(
                    Icons.more_vert_rounded,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ],
              ),

            ],
          ),

        ),
      ),
    );
  }
}