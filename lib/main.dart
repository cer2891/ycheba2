import 'package:flutter/material.dart';
import 'package:ycheba/MyContainer.dart';
import 'package:ycheba/my_flexible.dart';
import 'package:ycheba/row_column.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

import 'pages/home_page.dart';

void main() {
  debugPaintSizeEnabled=false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: HomePage(),
    );
  }
}


