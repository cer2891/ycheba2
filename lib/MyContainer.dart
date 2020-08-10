import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Контейнер Теория'),
      ),
      body: Container(
        child: Text('Testtttttt'),
        color: Colors.blue,
      ),
    );
  }
}

//class MyContainer extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Контейнер Теория'),
//      ),
//      body: Center(
//        child: Container(
//          decoration: BoxDecoration(
////            shape: BoxShape.circle,
//            border: Border.all(),
//            color: Colors.red,
//          ),
//          alignment: Alignment.center,
////          width: 300,
////          height: 300,
//          margin: const EdgeInsets.only(left: 150),
//          padding: const EdgeInsets.all(0.0),
//          child: Text('codeandart'),
//        ),
//      ),
//    );
//  }
//}
