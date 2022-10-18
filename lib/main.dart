import 'package:flutter/material.dart';

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
      home: const MyApp(), 
    );
  }
}