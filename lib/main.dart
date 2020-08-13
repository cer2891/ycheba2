import 'package:flutter/material.dart';
import 'package:ycheba/MyContainer.dart';
import 'package:ycheba/row_column.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled=false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyContainer(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Тестирование')),
      body: Container(
        child: Center(child: Text('Здесь что то будет')),
      ),
    );
  }
}
