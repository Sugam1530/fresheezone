// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const ProfilePage())),
              icon: const Icon(
                Icons.search,
                color: Colors.green,
              ))
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              child: Center(
                child: Text(
                  'MY PROFILE',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(right: 130),
                          child: const Text(
                            'Arjun Chaterjee',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 50, top: 10),
                        child: Container(
                            width: 180,
                            child: const Text(
                              'It is a long established fact that a reader will be distracted by the readable',
                              style: TextStyle(fontSize: 10),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 100, top: 7),
                        child: Column(
                          children: [
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 40),
                                  child: Text(
                                    ' (+91) 0000099999',
                                    style: TextStyle(fontSize: 9),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 7),
                              child: Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Icon(
                                    Icons.location_city,
                                    size: 15,
                                  ),
                                  Container(
                                    child: Text(
                                      ' 1/A, ABC Road,Kolkata-000000',
                                      style: TextStyle(fontSize: 9),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Icon(
                                  Icons.mail,
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 40),
                                  child: Text(
                                    ' demo@gmail.com',
                                    style: TextStyle(fontSize: 9),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 120),
                        width: 90,
                        height: 24,
                        child: ElevatedButton(
                          //style:
                          onPressed: () {},
                          child: const Text(
                            'Update KYC',
                            style: TextStyle(fontSize: 8),
                          ),
                          style: ElevatedButton.styleFrom(
                            //elevation: 15,
                            primary: Colors.green,
                            backgroundColor: Color.fromARGB(255, 53, 141, 55),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(200),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 28, top: 20),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/Img3.png'),
                        radius: 40,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 13, top: 10),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.edit,
                            color: Color.fromARGB(255, 63, 148, 65),
                            size: 15,
                          ),
                          Text(
                            'Edit Profile',
                            style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 63, 148, 65)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 105,
              width: 360,
              color: Color.fromARGB(255, 243, 242, 242),
              child: Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Login Details',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 170),
                          child: Icon(
                            Icons.edit,
                            color: Color.fromARGB(255, 63, 148, 65),
                            size: 15,
                          ),
                        ),
                        Text(
                          'Edit Password',
                          style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 63, 148, 65)),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 190, top: 15),
                      child: Text(
                        'User ID:         32A-00876501',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 220, top: 6),
                      child: Text(
                        'Password:     xxxxxxxx',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 58,
                width: 345,
                color: Color.fromARGB(255, 246, 221, 192),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 5),
                      child: Text(
                        'Current Wallet Balance:',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 110, top: 5),
                      child: Text(
                        'Rs.333/-',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    elevation: 15,
                    child: Container(
                      height: 60,
                      width: 130,
                      color: Color.fromARGB(255, 237, 252, 238),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Icon(Icons.countertops, color: Colors.green),
                          ),
                          Text(
                            'My Coupons',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Material(
                    elevation: 15,
                    child: Container(
                      height: 60,
                      width: 130,
                      color: Color.fromARGB(255, 237, 252, 238),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Icon(Icons.restore_from_trash,
                                color: Colors.green),
                          ),
                          Text(
                            'Refer & Earn',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    elevation: 15,
                    child: Container(
                      height: 60,
                      width: 130,
                      color: Color.fromARGB(255, 237, 252, 238),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Icon(Icons.notification_add,
                                color: Colors.green),
                          ),
                          Text(
                            'My Notifications',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Material(
                    elevation: 15,
                    child: Container(
                      height: 60,
                      width: 130,
                      color: Color.fromARGB(255, 237, 252, 238),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Icon(Icons.settings, color: Colors.green),
                          ),
                          Text(
                            'Account Settings',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
              ),
              child: SizedBox(
                width: 280,
                height: 45,
                child: ElevatedButton(
                  //style:
                  onPressed: () {},
                  child: const Text(
                    'Log Out',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 15,
                    backgroundColor: Color.fromARGB(255, 44, 123, 45),
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