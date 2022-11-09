// ignore: file_names
// ignore_for_file: camel_case_types, sort_child_properties_last, file_names, duplicate_ignore, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:fresheezone/pages/loginPage.dart';
import 'package:fresheezone/utils/app_constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  var message;
  final Name = TextEditingController();
  final Phone = TextEditingController();
  final Password = TextEditingController();
  final Confirm_Password = TextEditingController();

  void register(String name, phone, password, confirm_password) async {
    try {
      http.Response response = await http.post(
          Uri.parse(AppConstants.BASE_URL + AppConstants.USER_SIGNUP),
          body: {
            'name': name,
            'phone': phone,
            'password': password,
            'confirm_password': confirm_password
          });
      Map<String, dynamic> map = jsonDecode(response.body.toString());
      message = (map["message"]);
      // ignore: unrelated_type_equality_checks
      if (response.statusCode == 200) {
        // ignore: use_build_context_synchronously
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const loginPage()));
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
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: <Color>[
              Color.fromARGB(40, 208, 255, 0),
              Color.fromARGB(34, 150, 244, 199),
              Color.fromARGB(47, 242, 239, 239),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 40, right: 10),
              child: Image.asset('assets/logo.png'),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Text(
                "SIGN UP",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(20),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  controller: Name,
                  //textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    //border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'User Name',
                    //alignLabelWithHint: true,
                    labelStyle: const TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(20),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  controller: Phone,
                  //textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    //border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Mobile Number',
                    //alignLabelWithHint: true,
                    labelStyle: const TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(20),
                child: TextFormField(
                  obscureText: true,
                  textAlignVertical: TextAlignVertical.center,
                  controller: Password,
                  //textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    //border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    //alignLabelWithHint: true,
                    labelStyle: const TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(20),
                child: TextFormField(
                  obscureText: true,
                  textAlignVertical: TextAlignVertical.center,
                  controller: Confirm_Password,
                  //textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    //border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Confirm Password',
                    //alignLabelWithHint: true,
                    labelStyle: const TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: 110,
                child: ElevatedButton(
                  //style:
                  onPressed: () {
                    register(
                      Name.text.toString().trim(),
                      Phone.text.toString().trim(),
                      Password.text.toString().trim(),
                      Confirm_Password.text.toString().trim());
                  },
                  child: const Text('SIGN UP'),
                  style: ElevatedButton.styleFrom(
                    elevation: 15,
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 29,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text('Already have an account?'),
                InkWell(
                  child: const Text(
                    ' LOG IN',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const loginPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Image.asset('assets/footer.png'),
          ],
        ),
      ),
    );
  }
}
