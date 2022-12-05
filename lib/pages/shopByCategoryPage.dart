// ignore_for_file: prefer_const_constructors, implementation_imports, unnecessary_import, file_names, avoid_unnecessary_containers, camel_case_types, unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fresheezone/pages/cartPage.dart';
import 'package:fresheezone/pages/homePage.dart';
import 'package:fresheezone/pages/myOrderPage.dart';
import 'package:fresheezone/pages/singleCategoryItem.dart';
import 'package:fresheezone/pages/wishlistPage.dart';

class shopByCategory extends StatefulWidget {
  const shopByCategory({super.key});

  @override
  State<shopByCategory> createState() => _shopByCategoryState();
}

class _shopByCategoryState extends State<shopByCategory> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w500);
  static const List<Widget> _widgetOptions = <Widget>[
    homePage(),
    wishListPage(),
    cartPage(),
    myOrderPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                  MaterialPageRoute(builder: (_) => const shopByCategory())),
              icon: const Icon(
                Icons.search,
                color: Colors.green,
              ))
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 210),
                  child: Text(
                    'Shop By Categories',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                child: SingleChildScrollView(
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
                                          backgroundImage: AssetImage(
                                              'assets/vegetables.png'),
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
                                    'Fresh Vegetables',
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
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 120),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'SEASONAL FRUITS',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Text(
                              'View More',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 9,
                                  color: Colors.green),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19, top: 25),
                child: Row(
                  children: [
                    InkWell(
                      child: Column(
                        children: [
                          Container(
                            height: 90,
                            width: 95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage("assets/mango.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Text(
                              'Mango(1 kg.)',
                              style: TextStyle(
                                  fontSize: 9, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            'Rs. 100/-',
                            style: TextStyle(fontSize: 9),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Single_CategoryItem(),
                        ));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Container(
                            height: 90,
                            width: 95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage("assets/mango.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 7,
                            ),
                            child: Text(
                              'Apple(1 kg.)',
                              style: TextStyle(
                                  fontSize: 9, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            'Rs.210/-',
                            style: TextStyle(fontSize: 9),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Container(
                            height: 90,
                            width: 95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage("assets/mango.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Text(
                              'Banana(12 pc.)',
                              style: TextStyle(
                                  fontSize: 9, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            'Rs. 40/-',
                            style: TextStyle(fontSize: 9),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 19),
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          width: 95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage("assets/mango.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Text(
                            'Orange(1 kg.)',
                            style: TextStyle(
                                fontSize: 9, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          'Rs. 140/-',
                          style: TextStyle(fontSize: 9),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          width: 95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage("assets/mango.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Text(
                            'Guava(1 kg.)',
                            style: TextStyle(
                                fontSize: 9, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          'Rs. 70/-',
                          style: TextStyle(fontSize: 9),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          width: 95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage("assets/mango.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Text(
                            'Grapes(1 kg.)',
                            style: TextStyle(
                                fontSize: 9, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          'Rs. 90/-',
                          style: TextStyle(fontSize: 9),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19),
                child: Container(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 90,
                            width: 95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage("assets/mango.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Text(
                              'Papaya(1 kg.)',
                              style: TextStyle(
                                  fontSize: 9, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            'Rs. 90/-',
                            style: TextStyle(fontSize: 9),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Container(
                              height: 95,
                              width: 95,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage("assets/mango.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 7,
                              ),
                              child: Text(
                                'Pomegranate(1 kg.)',
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'Rs.290/-',
                              style: TextStyle(fontSize: 9),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              width: 95,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage("assets/mango.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 7),
                              child: Text(
                                'Pineapple(1 kg.)',
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'Rs. 120/-',
                              style: TextStyle(fontSize: 9),
                            ),
                          ],
                        ),
                      ),
                    ],
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
