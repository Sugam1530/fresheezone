// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:fresheezone/pages/dashboard.dart';
import 'package:fresheezone/pages/registerPage.dart';
import 'package:fresheezone/pages/splashScreen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}  

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fresh-E-Zone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const splashScreenPage(),
    );
  }
}
