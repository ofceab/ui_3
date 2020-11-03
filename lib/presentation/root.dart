import 'package:flutter/material.dart';
import 'package:ui_3/presentation/screens/ui_asked.dart';

class ReddyApp extends StatelessWidget {
  const ReddyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UIAsked(),
    );
  }
}
