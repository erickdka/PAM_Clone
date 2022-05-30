import 'package:flutter/material.dart';

class TitleGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text('Upcomming bill', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
              ],
            ),
            Row(children: [
              Text(
                'See All',
                style: TextStyle(color: Colors.deepPurple[400]),
              )
            ])
          ],
        ),
      ),
    );
  }
}
