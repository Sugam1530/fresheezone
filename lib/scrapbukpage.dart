// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class scrapbukpage extends StatefulWidget {
  const scrapbukpage({super.key});

  @override
  State<scrapbukpage> createState() => _scrapbukpageState();
}

class _scrapbukpageState extends State<scrapbukpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/Logo.png',
          fit: BoxFit.cover,
          height: 30,
        ),
        actions: [
          // Navigate to the Search Screen
          IconButton(
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const scrapbukpage())),
              icon: const Icon(
                Icons.search,
                color: Colors.green,
              ))
        ],
        // ignore: prefer_const_constructors
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                'SCRAP BUK',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 12,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 30.0),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/img8.png'),
                        radius: 35,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Plastic Bag',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        'Rs.4/- per kg.',
                        style:
                            TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              // ignore: sized_box_for_whitespace
              child: Container(
                width: 90,
                height: 28,
                child: ElevatedButton(
                  //style:
                  onPressed: () {},
                  // ignore: sort_child_properties_last
                  child: const Text(
                    'View All',
                    style: TextStyle(fontSize: 10),
                  ),
                  style: ElevatedButton.styleFrom(
                    //elevation: 15,
                    backgroundColor: const Color.fromARGB(255, 14, 111, 17),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(200),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}