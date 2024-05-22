import 'package:flutter/material.dart';
import 'package:jtrznadel_me/constants/fonts.dart';
import 'package:jtrznadel_me/views/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: Fonts.montseratt,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeView());
  }
}
