import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Контейнер Теория новое'),
      ),
      body: Container(
//        width: double.infinity,
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.network('https://stihi.ru/photos/malenkajaskazka.jpg')
                .image,
            fit: BoxFit.cover,
          ),
//        alignment: Alignment.center,
//        padding: const EdgeInsets.all(50),
//        margin: const EdgeInsets.symmetric(horizontal: 20),
//        color: Colors.red,
//        child: Text('Codeandart',textAlign: TextAlign.center,),
        borderRadius: BorderRadius.circular(30),
        ),
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
