// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, duplicate_ignore

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class wishListPage extends StatefulWidget {
  const wishListPage({super.key});

  @override
  State<wishListPage> createState() => _wishListPageState();
}

class _wishListPageState extends State<wishListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Center(
                child: Text(
              'WISHLIST',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            )),
            const SizedBox(
              height: 16,
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemCount: 30,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 0,
                  child: Row(
                    children: [
                      Center(
                        child: Stack(
                          children: [
                            Container(
                              // ignore: prefer_const_constructors
                              margin: EdgeInsets.only(
                                left: 10,
                                top: 20,
                                bottom: 10,
                              ),
                              height: 90,
                              child: Image.asset(
                                "assets/mango.png",
                                alignment: Alignment.topLeft,
                              ),
                            ),
                            const Positioned(
                              top: 78,
                              left: 70,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 00),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: const EdgeInsets.only(right: 30),
                                child: const Text(
                                  'Himsagar Mango (1 kg.)',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                )),
                            Container(
                                margin:
                                    const EdgeInsets.only(right: 105, top: 5),
                                child: const Text(
                                  'Upto 30% Off',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                )),
                            Container(
                              margin: const EdgeInsets.only(right: 114, top: 5),
                              child: const Text('Rs. 120/-'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 28,
                                width: 80,
                                color: Color.fromARGB(76, 255, 193, 7),
                                child: const Center(
                                  child: Text(
                                    'Add to card',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          customButton: const CircleAvatar(
                            backgroundColor: Color.fromARGB(43, 255, 153, 0),
                            radius: 13,
                            child: Icon(
                              Icons.more_vert_outlined,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                          customItemsHeights: [
                            ...List<double>.filled(
                                MenuItems.firstItems.length, 48),
                            8,
                            ...List<double>.filled(
                                MenuItems.secondItems.length, 48),
                          ],
                          items: [
                            ...MenuItems.firstItems.map(
                              (item) => DropdownMenuItem<MenuItem>(
                                value: item,
                                child: MenuItems.buildItem(item),
                              ),
                            ),
                            const DropdownMenuItem<Divider>(
                                enabled: false, child: Divider()),
                            ...MenuItems.secondItems.map(
                              (item) => DropdownMenuItem<MenuItem>(
                                value: item,
                                child: MenuItems.buildItem(item),
                              ),
                            ),
                          ],
                          onChanged: (value) {
                            MenuItems.onChanged(context, value as MenuItem);
                          },
                          itemHeight: 48,
                          itemPadding:
                              const EdgeInsets.only(left: 16, right: 16),
                          dropdownWidth: 160,
                          dropdownPadding:
                              const EdgeInsets.symmetric(vertical: 6),
                          dropdownDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.amber[100]),
                          dropdownElevation: 8,
                          offset: const Offset(0, 8),
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
    );
  }
}

class MenuItem {
  final String text;
  final IconData icon;

  const MenuItem({
    required this.text,
    required this.icon,
  });
}

class MenuItems {
  static const List<MenuItem> firstItems = [home];
  static const List<MenuItem> secondItems = [share];

  static const home = MenuItem(text: 'Delete', icon: Icons.delete);
  static const share = MenuItem(text: 'Add to cart', icon: Icons.shopping_cart);

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Icon(item.icon, color: Colors.black, size: 22),
        const SizedBox(
          width: 10,
        ),
        Text(
          item.text,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.home:
        //Do something
        break;

      case MenuItems.share:
        //Do something
        break;
    }
  }
}
