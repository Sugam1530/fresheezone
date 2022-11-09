// ignore_for_file: sized_box_for_whitespace, use_build_context_synchronously, camel_case_types, unused_local_variable, file_names

import 'package:flutter/material.dart';
import 'package:fresheezone/pages/dashboard.dart';
import 'package:fresheezone/pages/homePage.dart';
import 'package:fresheezone/pages/loginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class splashScreenPage extends StatefulWidget {
  const splashScreenPage({super.key});

  @override
  State<splashScreenPage> createState() => _splashScreenPageState();
}

class _splashScreenPageState extends State<splashScreenPage> {
  @override
  void initState() {
    super.initState();
    _navigatehome();
  }

  _navigatehome() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString('token');
    String? type = sharedPreferences.getString('type');

    if (token != null) {
      await Future.delayed(const Duration(milliseconds: 1500), () {});
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const dashboardPage(),
        ),
      );
    } else {
      await Future.delayed(const Duration(milliseconds: 1500), () {});
      Navigator.pushReplacement(
          (context),
          MaterialPageRoute(
            builder: (context) => const loginPage(),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          "assets/splashPhoto.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
