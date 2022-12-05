import 'package:flutter/material.dart';
import 'package:fresheezone/pages/walletPage.dart';

class checkOutpage extends StatefulWidget {
  const checkOutpage({super.key});

  @override
  State<checkOutpage> createState() => _checkOutpageState();
}

class _checkOutpageState extends State<checkOutpage> {
  int _value = 1;

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
                  MaterialPageRoute(builder: (_) => const checkOutpage())),
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
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Center(
                child: Text(
              'ORDER SUMMARY',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: const Color.fromARGB(172, 234, 232, 223),
                height: 80,
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
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 30),
                                      height: 25,
                                      width: 25,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromARGB(197, 76, 175, 79),
                                      ),
                                      child: const Center(child: Text('1')),
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    height: 25,
                                    width: 25,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(197, 76, 175, 79),
                                    ),
                                    child: const Center(child: Text('2')),
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
                          Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 40),
                                    height: 25,
                                    width: 25,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(197, 76, 175, 79),
                                    ),
                                    child: const Center(child: Text('3')),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 25.0),
                            child: Text("Address"),
                          ),
                          const Text("Order Summary"),
                          const Text("Payment"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 140, left: 18),
                  child: const Text(
                    'Delivery Address',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Text(
                    'Change',
                    style: TextStyle(
                        color: Color.fromARGB(226, 206, 149, 75), fontSize: 12),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(right: 210),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 3, top: 6),
                    child: const Text(
                      'Demo Name 1 - Home',
                      style: TextStyle(
                          color: Color.fromARGB(255, 59, 140, 39),
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 25, top: 2),
                    child: Column(
                      children: const [
                        Text(
                          '1/A, ABC Road',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10, top: 2),
                    child: Column(
                      children: const [
                        Text(
                          'Kolkata - 000000',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(right: 00),
              height: 1,
              width: 330,
              color: const Color.fromARGB(255, 218, 216, 216),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(right: 230),
              child: const Text(
                'Order Summary',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 87, left: 18),
                  child: const Text(
                    'Product Items (3)',
                    style: TextStyle(
                        color: Color.fromARGB(255, 122, 119, 119),
                        fontSize: 13),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 30),
                  child: const Text(
                    'Total Price: Rs. 340/-',
                    style: TextStyle(
                        color: Color.fromARGB(255, 122, 119, 119),
                        fontSize: 13),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 87, left: 18),
                  child: const Text(
                    'Delivery Charges',
                    style: TextStyle(color: Color.fromARGB(255, 122, 119, 119)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 35),
                  child: const Text(
                    'FREE',
                    style: TextStyle(
                        color: Color.fromARGB(255, 26, 158, 30),
                        fontSize: 11,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(right: 00),
              height: 1,
              width: 330,
              color: const Color.fromARGB(255, 218, 216, 216),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 87, left: 18),
                  child: const Text(
                    'Amount Payable',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 48),
                    child: const Text(
                      'Rs. 340/-',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(right: 00),
              height: 1,
              width: 330,
              color: const Color.fromARGB(255, 218, 216, 216),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(right: 270),
              child: const Text(
                'Payments',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Radio(
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    value: 1,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    }),
                const Text(
                  'Google Pay UPI',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 45),
                  child: Radio(
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => Colors.green),
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                ),
                const Text('Credit/Debit/ATM Card',
                    style:
                        TextStyle(fontSize: 11, fontWeight: FontWeight.w500)),
              ],
            ),
            Row(
              children: [
                Radio(
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    value: 3,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    }),
                const Text(
                  'Paytm UPI',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 70),
                  child: Radio(
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => Colors.green),
                      value: 4,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                ),
                Container(
                    child: const Text('Net Banking',
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500)))
              ],
            ),
            Row(
              children: [
                Radio(
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    value: 5,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    }),
                const Text(
                  'Wallets',
                  style: TextStyle(fontSize: 12),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 82),
                  child: Radio(
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => Colors.green),
                      value: 6,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                ),
                const Text('Cash On Delivery',
                    style:
                        TextStyle(fontSize: 11, fontWeight: FontWeight.w500)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 27,
                  width: 120,
                  color: const Color.fromARGB(218, 246, 218, 132),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Continue',
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const walletpage(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
