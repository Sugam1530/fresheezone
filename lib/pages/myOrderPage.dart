// ignore_for_file: camel_case_types, file_names

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class myOrderPage extends StatefulWidget {
  const myOrderPage({super.key});

  @override
  State<myOrderPage> createState() => _myOrderPageState();
}

class _myOrderPageState extends State<myOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Text(
                'MY ORDER',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Row(
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
                                  height: 80,
                                  child: Image.asset(
                                    "assets/mango.png",
                                    fit: BoxFit.fill,
                                    alignment: Alignment.topLeft,
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
                                    margin: const EdgeInsets.only(
                                        left: 15, top: 10),
                                    child: const Text(
                                      'Himsagar Mango (1 kg.)',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    )),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 15, top: 4),
                                  child: const Text(
                                    'Rs. 120/-',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15, top: 15),
                                  child: Text(
                                    'Delivery by Tomorrow',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Spacer(),
                          Container(
                            margin: const EdgeInsets.only(right: 30, top: 20),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton2(
                                customButton: const CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(43, 255, 153, 0),
                                  radius: 11,
                                  child: Icon(
                                    Icons.more_vert_outlined,
                                    size: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                customItemsHeights: [
                                  ...List<double>.filled(
                                      MenuItems.firstItems.length, 48),
                                  8,
                                  ...List<double>.filled(
                                      MenuItems.secondItems.length, 48),
                                  8,
                                  ...List<double>.filled(
                                      MenuItems.thirdItems.length, 48),
                                ],
                                items: [
                                  ...MenuItems.firstItems.map(
                                    (item) => DropdownMenuItem<MenuItem>(
                                      value: item,
                                      child: MenuItems.buildItem(item),
                                    ),
                                  ),
                                  const DropdownMenuItem<Divider>(
                                    enabled: false,
                                    child: Divider(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  ...MenuItems.secondItems.map(
                                    (item) => DropdownMenuItem<MenuItem>(
                                      value: item,
                                      child: MenuItems.buildItem(item),
                                    ),
                                  ),
                                  const DropdownMenuItem<Divider>(
                                    enabled: false,
                                    child: Divider(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  ...MenuItems.thirdItems.map(
                                    (item) => DropdownMenuItem<MenuItem>(
                                      value: item,
                                      child: MenuItems.buildItem(item),
                                    ),
                                  ),
                                ],
                                onChanged: (value) {
                                  MenuItems.onChanged(
                                      context, value as MenuItem);
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
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 1,
                        width: 330,
                        color: const Color.fromARGB(255, 217, 216, 216),
                      ),
                    ],
                  );
                }),
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
  static const List<MenuItem> thirdItems = [cancel];

  static const home =
      MenuItem(text: 'Order Details', icon: Icons.wallet_giftcard);
  static const share = MenuItem(text: 'Share Order', icon: Icons.share);
  static const cancel = MenuItem(text: 'Cancel Order', icon: Icons.delete);

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Icon(item.icon, color: Colors.black, size: 20),
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

      case MenuItems.cancel:
        break;
    }
  }
}
