import 'package:flutter/material.dart';
import 'package:shoes_animation_flutter/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff2E2D2E),
      ),
      debugShowCheckedModeBanner: false,
      home:const HomeScreen(),
    );
  }
}
