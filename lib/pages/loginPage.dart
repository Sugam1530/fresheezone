// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:fresheezone/pages/dashboard.dart';
import 'package:fresheezone/pages/registerPage.dart';
import 'package:fresheezone/utils/app_constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  // ignore: prefer_typing_uninitialized_variables
  var token, message;

  final Phone = TextEditingController();
  // ignore: non_constant_identifier_names
  final Password = TextEditingController();

  showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Row(
        children: [
          const CircularProgressIndicator(),
          Container(
              margin: const EdgeInsets.only(left: 7),
              child: const Text("Loading...")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void login(String phone, password) async {
    try {
      http.Response response = await http.post(
          Uri.parse(AppConstants.BASE_URL + AppConstants.USER_LOGIN),
          body: {
            'phone': phone,
            'password': password,
          });
      Map<String, dynamic> map = jsonDecode(response.body.toString());
      message = (map["message"]);
      token = (map["token"]);
      // ignore: unrelated_type_equality_checks
      if (response.statusCode == 200) {
        // ignore: use_build_context_synchronously
        final SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        sharedPreferences.setString('token', token.toString());
        sharedPreferences.setString('type', map["type"].toString());
        // ignore: use_build_context_synchronously
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const dashboardPage(),
          ),
        );
      } else {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(message.toString()),
        ));
      }
    } catch (e) {
      // ignore: avoid_print
      print(Exception(e.toString()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ClampingScrollPhysics(),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              // ignore: prefer_const_literals_to_create_immutables
              colors: <Color>[
                Color.fromARGB(40, 208, 255, 0),
                Color.fromARGB(34, 150, 244, 199),
                Color.fromARGB(47, 242, 239, 239),
              ],
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 82),
                child: Image.asset("assets/logo.png"),
              ),
              Container(
                margin: const EdgeInsets.only(top: 70),
                child: const Text(
                  "LOG IN",
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 45),
                child: Material(
                  elevation: 15,
                  borderRadius: BorderRadius.circular(30),
                  child: TextFormField(
                    controller: Phone,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 20),
                      filled: true,
                      hintText: "Mobile Number",
                      hintStyle: const TextStyle(color: Colors.black),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Material(
                  elevation: 15,
                  borderRadius: BorderRadius.circular(30),
                  child: TextFormField(
                    controller: Password,
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 20),
                      filled: true,
                      hintText: "Password",
                      hintStyle: const TextStyle(color: Colors.black),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    //style:
                    onPressed: () {
                      showLoaderDialog(context);
                      login(Phone.text.toString().trim(),
                          Password.text.toString().trim());
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 15,
                      backgroundColor: const Color.fromARGB(255, 53, 169, 57),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Text('LOG IN'),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text("Do you want to create new account?"),
                  InkWell(
                    child: const Text(
                      " SIGN UP",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const registerPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 113),
                child: Image.asset("assets/footer.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
