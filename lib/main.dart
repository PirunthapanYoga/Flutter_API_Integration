import 'package:flutter/material.dart';
import 'package:grocery_store/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter Template',
      theme: ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.cyan,
          iconTheme: IconThemeData(
            color: Colors.red,
          ),
        ),
      ),
      home: const HomePage(title: "Rest API Sterling BPO",),
    );
  }
}
