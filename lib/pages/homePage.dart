// ignore_for_file: sort_child_properties_last, sized_box_for_whitespace, camel_case_types, file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 135,
                  width: 330,
                  color: const Color.fromARGB(173, 234, 215, 156),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/banner1.png'),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 15, right: 13),
                            child: Container(
                                width: 150,
                                child: const Text(
                                  'Enjoy your morning with your hobbies!!',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Container(
                                width: 160,
                                child: const Text(
                                  'Fresh e Zone delivers every morning Fresh Fruits Vegetables, Milk, bread and all your daily grocery needs with no minimum order for availing free delivery.',
                                  style: TextStyle(fontSize: 10),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(right: 200, top: 20),
                  child: Text(
                    'Shop By Categories',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const ClampingScrollPhysics(),
                child: Container(
                  height: 110,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemCount: 30,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: const [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/vegetables.png'),
                                  radius: 28,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Fresh',
                                  style: TextStyle(fontSize: 10),
                                ),
                                Text(
                                  'Vegetables',
                                  style: TextStyle(fontSize: 10),
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
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: const [
                        Text(
                          'Offer Zones',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
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
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromARGB(255, 233, 233, 226),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Container(
                              width: 160,
                              child: const Text(
                                'Express Delivery within 2 hours!!',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15, top: 10),
                          child: Container(
                              width: 120,
                              child: const Text(
                                'Fresh e Zone delivers all your daily grocery needs within 45 minutes to 2 hours.',
                                style: TextStyle(fontSize: 10),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 36, top: 10),
                          child: Container(
                            width: 100,
                            height: 24,
                            child: ElevatedButton(
                              //style:
                              onPressed: () {},
                              child: const Text(
                                'SHOP NOW',
                                style: TextStyle(fontSize: 10),
                              ),
                              style: ElevatedButton.styleFrom(
                                //elevation: 15,
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(200),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      child: Image.asset(
                        "assets/delivery.png",
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 250, top: 20),
                child: Text(
                  'Scrap Buk',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 4, bottom: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  child: Container(
                    height: 110,
                    child: Row(
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
                                children: const [
                                  CircleAvatar(
                                    backgroundImage: AssetImage('assets/bag.png'),
                                    radius: 28,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Plastic Bag',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Text(
                                    'Rs. 4/- per kg.',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
