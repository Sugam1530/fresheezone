// ignore_for_file: file_names, camel_case_types, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:fresheezone/pages/checkoutPage.dart';

class ordersummarypage extends StatefulWidget {
  const ordersummarypage({super.key});

  @override
  State<ordersummarypage> createState() => _ordersummarypageState();
}

class _ordersummarypageState extends State<ordersummarypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const ordersummarypage())),
              icon: const Icon(
                Icons.search,
                color: Colors.green,
              ))
        ],
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ClampingScrollPhysics(),
        child: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                child: const Center(
                    child: Text(
                  'ORDER SUMMARY',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: const Color.fromARGB(172, 234, 232, 223),
                  height: 65,
                  width: 330,
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(left: 30),
                                        height: 24,
                                        width: 24,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromARGB(197, 42, 139, 45),
                                        ),
                                        child: const Center(
                                            child: Text(
                                          '1',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 5),
                                        height: 1,
                                        width: 80,
                                        color: const Color.fromARGB(
                                            255, 194, 189, 189),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(left: 5),
                                        height: 24,
                                        width: 24,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromARGB(197, 42, 139, 45),
                                        ),
                                        child: const Center(
                                            child: Text(
                                          '2',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 5),
                                        height: 1,
                                        width: 80,
                                        color: const Color.fromARGB(
                                            255, 194, 189, 189),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 40),
                                        height: 24,
                                        width: 24,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromARGB(197, 42, 139, 45),
                                        ),
                                        child: const Center(
                                            child: Text(
                                          '3',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 30),
                              child: Text(
                                "Address",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Text(
                              "Order Summary",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "Payment",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 140, left: 18),
                    child: const Text(
                      'Delivery Address',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 35),
                    child: Text(
                      'Change',
                      style: TextStyle(
                          color: Color.fromARGB(255, 227, 129, 0),
                          fontSize: 12),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20, top: 2),
                              child: const Text(
                                'Demo Name 1 - Home',
                                style: TextStyle(
                                    color: Color.fromARGB(249, 59, 199, 63),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 24, top: 2),
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text(
                                    '1/A, ABC Road',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 12, top: 2),
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text(
                                    'Kolkata - 000000',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 00),
                      height: 1,
                      width: 330,
                      color: const Color.fromARGB(255, 187, 185, 185),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 230, top: 10),
                child: const Text(
                  'Order Summary',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, top: 20),
                    child: const Text(
                      'Product details',
                      style: TextStyle(
                          color: Color.fromARGB(255, 101, 93, 93),
                          fontSize: 12),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 145, top: 20),
                    child: Text(
                      'Total Price(Rs.)',
                      style: TextStyle(
                          color: Color.fromARGB(255, 101, 93, 93),
                          fontSize: 12),
                    ),
                  ),
                ],
              ),
              Container(
                height: 220,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 15, left: 15),
                            height: 100,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage("assets/mango.png"),
                              ),
                            ),
                          ),
                          Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Himsagar Mango(1kg.)',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 60),
                                child: Text(
                                  'Rs.120/-',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 40),
                                child: Text(
                                  'Quantity-1kg.',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              const Text(
                                'Delivery by Tomorrow',
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 50),
                            child: const Text(
                              '120/-',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              Container(
                height: 1,
                width: 330,
                color: Colors.black,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 170, top: 20),
                child: Text(
                  'TOTAL       340/-',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 140,
                  height: 30,
                  child: ElevatedButton(
                    //style:
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const checkOutpage(),
                      ));
                    },
                    // ignore: sort_child_properties_last
                    child: const Text(
                      'Continue',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 241, 212, 124),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
