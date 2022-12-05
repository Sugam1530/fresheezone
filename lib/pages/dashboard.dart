// ignore_for_file: camel_case_types, unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresheezone/microdeliverypage.dart';
import 'package:fresheezone/pages/cartPage.dart';
import 'package:fresheezone/pages/homePage.dart';
import 'package:fresheezone/pages/myOrderPage.dart';
import 'package:fresheezone/pages/myProfilePage.dart';
import 'package:fresheezone/pages/offersZonePage.dart';
import 'package:fresheezone/pages/shopByCategoryPage.dart';
import 'package:fresheezone/pages/walletPage.dart';
import 'package:fresheezone/pages/wishlistPage.dart';
import 'package:fresheezone/scrapbukpage.dart';

class dashboardPage extends StatefulWidget {
  const dashboardPage({super.key});

  @override
  State<dashboardPage> createState() => _dashboardPageState();
}

class _dashboardPageState extends State<dashboardPage> {
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
              MaterialPageRoute(
                builder: (_) => const dashboardPage(),
              ),
            ),
            icon: const Icon(
              Icons.search,
              color: Colors.green,
            ),
          ),
        ],
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 200,
              color: const Color.fromARGB(54, 243, 199, 4),
              child: Container(
                margin: const EdgeInsets.only(right: 15),
                child: Image.asset("assets/logo.png"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              visualDensity: const VisualDensity(horizontal: -2, vertical: -3),
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.house_fill,
                color: Colors.green,
              ),
              title: const Text(
                'HOME',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              visualDensity: const VisualDensity(horizontal: -2, vertical: -3),
              // ignore: prefer_const_constructors
              leading: Icon(
                Icons.category_sharp,
                color: Colors.green,
              ),
              title: const Text(
                'CATEGORIES',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const shopByCategory(),
                ));
              },
            ),
            ListTile(
              visualDensity: const VisualDensity(horizontal: -2, vertical: -3),
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.tag_solid,
                color: Colors.green,
              ),
              title: const Text(
                'OFFER ZONES',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OfferPage(),));
              },
            ),
            ListTile(
              visualDensity: const VisualDensity(horizontal: -2, vertical: -3),
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.heart_fill,
                color: Colors.green,
              ),
              title: const Text(
                'MY WISHLIST',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const wishListPage(),));
              },
            ),
            ListTile(
              visualDensity: const VisualDensity(horizontal: -2, vertical: -3),
              // ignore: prefer_const_constructors
              leading: Icon(
                Icons.shopping_cart,
                color: Colors.green,
              ),
              title: const Text(
                'MY CART',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const cartPage(),));
              },
            ),
            ListTile(
              visualDensity: const VisualDensity(horizontal: -2, vertical: -3),
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.cube_box_fill,
                color: Colors.green,
              ),
              title: const Text(
                'MY ORDER',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const myOrderPage(),));
              },
            ),
            ListTile(
              visualDensity: const VisualDensity(horizontal: -2, vertical: -3),
              // ignore: prefer_const_constructors
              leading: Icon(
                Icons.account_balance_wallet,
                color: Colors.green,
              ),
              title: const Text(
                'MY WALLET',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const walletpage(),));
              },
            ),
            ListTile(
              visualDensity: const VisualDensity(horizontal: -2, vertical: -3),
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.person_crop_circle_fill_badge_exclam,
                color: Colors.green,
              ),
              title: const Text(
                'PROFILE',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ));
              },
            ),
            ListTile(
              visualDensity: const VisualDensity(horizontal: -2, vertical: -3),
              // ignore: prefer_const_constructors
              leading: Icon(
                Icons.delivery_dining_rounded,
                size: 30,
                color: Colors.green,
              ),
              title: const Text(
                'MICRO DELIVERY',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const microdeliverypage(),));
              },
            ),
            ListTile(
              visualDensity: const VisualDensity(horizontal: -2, vertical: -3),
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.trash_fill,
                color: Colors.green,
              ),
              title: const Text(
                'Bye Buy SCRAP',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const scrapbukpage(),));
              },
            ),
            ListTile(
              visualDensity: const VisualDensity(horizontal: -2, vertical: -3),
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.star_fill,
                color: Colors.green,
              ),
              title: const Text(
                'REVIEWS',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              visualDensity: const VisualDensity(horizontal: -2, vertical: -3),
              // ignore: prefer_const_constructors
              leading: Icon(
                Icons.share_sharp,
                color: Colors.green,
              ),
              title: const Text(
                'INVITE YOUR FRIENDS',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              visualDensity: const VisualDensity(horizontal: -2, vertical: -3),
              // ignore: prefer_const_constructors
              leading: Icon(
                Icons.policy_rounded,
                size: 25,
                color: Colors.green,
              ),
              title: const Text(
                'PRIVACY POLICY',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              visualDensity: const VisualDensity(horizontal: -2, vertical: -3),
              // ignore: prefer_const_constructors
              leading: Icon(
                Icons.insert_page_break,
                size: 25,
                color: Colors.green,
              ),
              title: const Text(
                'TERMS & CONDITIONS',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              visualDensity: const VisualDensity(horizontal: -2, vertical: -3),
              // ignore: prefer_const_constructors
              leading: Icon(
                Icons.contact_phone_sharp,
                size: 25,
                color: Colors.green,
              ),
              title: const Text(
                'CONTACT US',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              visualDensity: const VisualDensity(horizontal: -2, vertical: -3),
              // ignore: prefer_const_constructors
              leading: Icon(
                Icons.logout,
                size: 28,
                color: Colors.green,
              ),
              title: const Text(
                'LOG OUT',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 16,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.green,
            ),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.heart_fill,
              size: 25,
              color: Color.fromARGB(255, 247, 6, 6),
            ),
            label: 'WISHLIST',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              size: 25,
              color: Colors.green,
            ),
            label: 'CART',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.gift_alt_fill,
              color: Colors.green,
            ),
            label: 'ORDER',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
