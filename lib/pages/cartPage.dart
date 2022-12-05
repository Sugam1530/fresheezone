// ignore_for_file: sized_box_for_whitespace, camel_case_types, prefer_const_constructors, unused_import, duplicate_ignore, file_names

import 'package:flutter/material.dart';
import 'package:counter_button/counter_button.dart';
import 'package:fresheezone/pages/addressPage.dart';

class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(top: 20, left: 150),
              // ignore: prefer_const_constructors
              child: Text(
                'MY CART',
                // ignore: prefer_const_constructors
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 30),
                    child: const Text(
                      'Product details',
                      style: TextStyle(
                          color: Color.fromARGB(255, 101, 93, 93),
                          fontSize: 12),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 60, top: 30),
                    child: Text(
                      'Quantity',
                      style: TextStyle(
                          color: Color.fromARGB(255, 101, 93, 93),
                          fontSize: 12),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 50, top: 30),
                    child: Text(
                      'Total Price(Rs.)',
                      style: TextStyle(
                          color: Color.fromARGB(255, 101, 93, 93),
                          fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 350,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10, top: 10),
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                "assets/mango.png",
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Himsagar Mango(1 kg.)',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 2),
                              child: Text(
                                'Rs. 120/-',
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, top: 10),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 18,
                                width: 22,
                                color: Color.fromARGB(255, 240, 219, 156),
                                child: IconButton(
                                  // ignore: unnecessary_new
                                  icon: Icon(
                                    Icons.remove,
                                    size: 10,
                                  ),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(0.0),
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                height: 18,
                                width: 22,
                                color: Color.fromARGB(212, 243, 200, 71),
                                // ignore: sort_child_properties_last
                                child: Text('1'),
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(0.0),
                              ),
                              Container(
                                height: 18,
                                width: 22,
                                color: Color.fromARGB(255, 240, 219, 156),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.add,
                                    size: 10,
                                  ),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(0.0),
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 65),
                                child: const Text(
                                  '120/-',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: const DecorationImage(
                                    image: AssetImage("assets/delete.png"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, top: 15),
              height: 2,
              width: 330,
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.only(left: 160, top: 20),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'TOTAL',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    '340/-',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, top: 25),
              child: SizedBox(
                width: 300,
                height: 40,
                child: ElevatedButton(
                  //style:
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AddressPage(),
                    ));
                  },
                  // ignore: sort_child_properties_last
                  child: const Text(
                    'Check Out',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 15,
                    backgroundColor: const Color.fromARGB(255, 26, 142, 29),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 130, top: 14),
              child: Text(
                'Or Add More Products',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
