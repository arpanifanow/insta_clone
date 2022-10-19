import 'package:flutter/material.dart';
import 'package:insta_clone/screens/nav_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NavScreen(),
      theme: ThemeData(
        primarySwatch: Colors.grey,
        // const MaterialColor(
        //   0xFFFFFFFF,
        //   <int, Color>{
        //     50: Color(0xFFFFFFFF),
        //     100: Color(0xFFFFFFFF),
        //     200: Color(0xFFFFFFFF),
        //     300: Color(0xFFFFFFFF),
        //     400: Color(0xFFFFFFFF),
        //     500: Color(0xFFFFFFFF),
        //     600: Color(0xFFFFFFFF),
        //     700: Color(0xFFFFFFFF),
        //     800: Color(0xFFFFFFFF),
        //     900: Color(0xFFFFFFFF),
        //   },
        // ),
      ),
    );
  }
}
