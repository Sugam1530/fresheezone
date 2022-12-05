// ignore_for_file: prefer_const_constructors, duplicate_ignore, unnecessary_new, file_names

import 'package:flutter/material.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({super.key});

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/logo.png',
          fit: BoxFit.cover,
          height: 30,
        ),
        actions: [
          // Navigate to the Search Screen
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const OfferPage())),
              icon: const Icon(
                Icons.search,
                color: Colors.green,
              ))
        ],
        // ignore: prefer_const_constructors
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                // ignore: prefer_const_constructors
                margin: EdgeInsets.only(left: 15, right: 15, top: 25),
                child: Image.asset('assets/banner.png')),
            Container(
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(top: 20),
              // ignore: prefer_const_constructors
              child: Text(
                'OFFER ZONES',
                // ignore: prefer_const_constructors
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(12.0),
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 30.0),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/mango.png'),
                          radius: 35
                          ,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Soyabin Oil (1 lit.)',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Rs.310/-',
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.bold),
                        ),
                      ],
                    );
                  },
                )),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              // ignore: sized_box_for_whitespace
              child: Container(
                width: 100,
                height: 24,
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
                    backgroundColor: Color.fromARGB(255, 14, 111, 17),
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