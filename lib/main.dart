import 'package:flutter/material.dart';
import 'package:mvm/view/home/homeview.dart';
import 'package:mvm/view/splashscreen/spalshscreeview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Spalshscreeview(),
    );
  }
}
