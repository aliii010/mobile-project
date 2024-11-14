import 'package:flutter/material.dart';

import 'package:flutter_ui_design/Cinema App UI/pages/cinema_main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Root widget of the app
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CinemaMainScreen(),
    );
  }
}
