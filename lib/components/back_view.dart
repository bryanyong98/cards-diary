import 'package:flutter/material.dart';

class BackView extends StatelessWidget {
  BackView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 8.0),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              '1',
              textScaleFactor: 2.5,
            ),
            const SizedBox(height: 5.0),
            Text(
              'JAN',
              textScaleFactor: 2.0,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20.0),
            // dates
            Expanded(child: GridView.builder(
                itemCount: 31,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7,
                  childAspectRatio: 1 / 1,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemBuilder: (_, i) => Text('${i+1}')),
            ),
            const Text(
              'Select a date to write',
              textScaleFactor: 0.8,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}