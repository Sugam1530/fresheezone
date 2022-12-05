// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Single_CategoryItem extends StatefulWidget {
  const Single_CategoryItem({super.key});

  @override
  State<Single_CategoryItem> createState() => _Single_CategoryItemState();
}

// ignore: camel_case_types
class _Single_CategoryItemState extends State<Single_CategoryItem> {
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
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const Single_CategoryItem())),
              icon: const Icon(
                Icons.search,
                color: Colors.green,
              ))
        ],
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: const Drawer(),
      // ignore: sized_box_for_whitespace
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 200, top: 20),
                child: Text(
                  'Shop By Categories',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: ClampingScrollPhysics(),
                child: Container(
                  height: 110,
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 60,
                                  child: Stack(
                                    children: [
                                      const CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/soyabin.png'),
                                        radius: 28,
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        left: 25,
                                        child: Container(
                                          //margin: EdgeInsets.only(top: 20),
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: const Color.fromARGB(
                                                212, 36, 142, 40),
                                          ),
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                left: 9, top: 7),
                                            child: const Text(
                                              '30% off',
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  'Soyabin Oil (1 lit.)',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                                const Text(
                                  'Rs.310/-',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: Row(
                      children: const [
                        Text(
                          'MANGO',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 110),
                          child: Text(
                            'Back',
                            style: TextStyle(fontSize: 9, color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 30,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(left: 15, right: 20, top: 20),
                    child: Row(
                      children: [
                        Center(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/mango.png',
                              )),
                        ),
                        Column(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 23),
                                child: const Text(
                                  'Himsagar Mango (1 kg.)',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                )),
                            Container(
                                margin: const EdgeInsets.only(right: 73),
                                child: const Text(
                                  'Rs. 120/-',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 17),
                          height: 18,
                          width: 18,
                          color: const Color.fromARGB(255, 240, 219, 156),
                          child: IconButton(
                            icon: const Icon(
                              Icons.remove,
                              size: 15,
                            ),
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(0.0),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          height: 18,
                          width: 25,
                          color: const Color.fromARGB(212, 243, 200, 71),
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(0.0),
                          child: const Text('0'),
                        ),
                        Container(
                          height: 18,
                          width: 25,
                          color: const Color.fromARGB(255, 240, 219, 156),
                          child: IconButton(
                            icon: const Icon(
                              Icons.add,
                              size: 15,
                            ),
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(0.0),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}