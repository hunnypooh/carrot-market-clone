import 'package:flutter/material.dart';

import 'structures.dart';

class HomeItemContainer extends StatelessWidget {
  final HomeItem item;
  HomeItemContainer(this.item);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: ListTile(
        visualDensity: VisualDensity(vertical: 4),
        leading: Image.asset(
          item.imagePath,
          height: 130,
          fit: BoxFit.fitHeight,
        ),
        title: Column(
          children: [
            Text(
              item.title,
              textAlign: TextAlign.left,
            ),
            Row(
              children: [
                Text(
                  item.location,
                  style: TextStyle(color: Colors.black38, fontSize: 10),
                ),
                Text(
                  '·',
                  style: TextStyle(color: Colors.black38, fontSize: 10),
                ),
                Text(
                  item.time,
                  style: TextStyle(color: Colors.black38, fontSize: 10),
                ),
              ],
            ),
            Text(item.price),
          ],
        ),
      ),
    );
  }
}
