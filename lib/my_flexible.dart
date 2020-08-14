import 'package:flutter/material.dart';

class MyFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Верстка теория'),
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              width: 120,
              child: Text(
                'Dart!',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
                softWrap: false,
                overflow: TextOverflow.fade,
              ),
            ),
            Icon(Icons.android, size: 100, color: Colors.cyanAccent),
            Expanded(
              child: Image.network(
                  'https://bipbap.ru/wp-content/uploads/2017/06/0_1243a0_bffd1aa7_orig.gif'),
            ),
          ],
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        border: Border.all(),
      ),
      //child: Text('123'),
    );
  }
}

class BiggerColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        border: Border.all(),
      ),
    );
  }
}
