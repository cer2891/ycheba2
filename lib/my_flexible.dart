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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BiggerColorBox(),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: ColorBox(),
            ),

//            Spacer(
//              flex: 1,
//            ),
//            SizedBox(
//              width: 40,
//            ),
//
//            SizedBox(
//              child: ColorBox(),
//              width: 100,
//              height: 100,
//            ),

            Flexible(
              fit: FlexFit.tight,
               flex: 1,
                child: ColorBox(),
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