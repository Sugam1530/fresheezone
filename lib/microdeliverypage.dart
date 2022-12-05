// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, unnecessary_new, duplicate_ignore, sized_box_for_whitespace

import 'package:flutter/material.dart';

class microdeliverypage extends StatefulWidget {
  const microdeliverypage({super.key});

  @override
  State<microdeliverypage> createState() => _microdeliverypageState();
}

class _microdeliverypageState extends State<microdeliverypage> {
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
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const microdeliverypage())),
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
                'MICRO DELIVERY',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              'Customer Details',
              style: TextStyle(
                  color: Color.fromARGB(255, 65, 185, 69), fontSize: 12),
            ),
            Container(
              padding: const EdgeInsets.only(left: 40, right: 40, top: 25),
              child: Material(
                elevation: 15,
                borderRadius: BorderRadius.circular(30),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    filled: true,
                    hintText: "Name",
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
              padding: const EdgeInsets.only(left: 40, right: 40, top: 25),
              child: Material(
                elevation: 15,
                borderRadius: BorderRadius.circular(30),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    filled: true,
                    hintText: "Phone No",
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
              padding: const EdgeInsets.only(left: 40, right: 40, top: 25),
              child: Material(
                elevation: 15,
                borderRadius: BorderRadius.circular(30),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    filled: true,
                    hintText: "Address",
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
              padding: const EdgeInsets.only(left: 40, right: 40, top: 25),
              child: Material(
                elevation: 12,
                borderRadius: BorderRadius.circular(30),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    filled: true,
                    hintText: "Pincode",
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
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  height: 16,
                  width: 16,
                  color: const Color.fromARGB(255, 183, 180, 180),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Check me out',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              'Select Products',
              style: TextStyle(fontSize: 13, color: Colors.green),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30, top: 10),
                  child: const Text(
                    'Product details',
                    style: TextStyle(
                        color: Color.fromARGB(255, 101, 93, 93), fontSize: 12),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 40, top: 10),
                  child: Text(
                    'Quantity',
                    style: TextStyle(
                        color: Color.fromARGB(255, 101, 93, 93), fontSize: 12),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 40, top: 10),
                  child: Text(
                    'Total Price(Rs.)',
                    style: TextStyle(
                        color: Color.fromARGB(255, 101, 93, 93), fontSize: 12),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              height: 1,
              width: 300,
              color: const Color.fromARGB(255, 212, 209, 209),
            ),
            Container(
              height: 300,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 25, top: 25),
                              height: 60,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage("assets/img17.png"),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20, top: 8),
                              child: Text(
                                'Pineaple(1 kg.)',
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 35, top: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 18,
                                width: 22,
                                color: const Color.fromARGB(255, 240, 219, 156),
                                child: IconButton(
                                  // ignore: unnecessary_new
                                  icon: const Icon(
                                    Icons.remove,
                                    size: 10,
                                  ),
                                  alignment: Alignment.center,
                                  // ignore: unnecessary_new
                                  padding: new EdgeInsets.all(0.0),
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                height: 18,
                                width: 22,
                                color: const Color.fromARGB(212, 243, 200, 71),
                                // ignore: sort_child_properties_last
                                child: const Text('1'),
                                alignment: Alignment.center,
                                padding: new EdgeInsets.all(0.0),
                              ),
                              Container(
                                height: 18,
                                width: 22,
                                color: const Color.fromARGB(255, 240, 219, 156),
                                child: IconButton(
                                  icon: new Icon(
                                    Icons.add,
                                    size: 10,
                                  ),
                                  alignment: Alignment.center,
                                  padding: new EdgeInsets.all(0.0),
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
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Load More Products',
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 236, 89, 78)),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 2,
              width: 400,
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Total Order      107/-',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '*Product prices are inclusive of all taxes',
              style: TextStyle(
                  fontSize: 13, color: Color.fromARGB(255, 157, 155, 155)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 25),
              child: SizedBox(
                width: 300,
                height: 40,
                child: ElevatedButton(
                  //style:
                  onPressed: () {},
                  // ignore: sort_child_properties_last
                  child: const Text(
                    'Proceed',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 15,
                    backgroundColor: const Color.fromARGB(255, 58, 161, 62),
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
    );
  }
}