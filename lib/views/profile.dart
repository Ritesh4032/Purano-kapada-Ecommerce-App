import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ecommerce/constants/themes.dart';
import 'package:flutter_ecommerce/views/information.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: AppBar(
            backgroundColor: Color.fromARGB(255, 2, 48, 85),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.436,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Stack(children: [
                // ElevatedButton.icon(
                //     style: ButtonStyle(
                //         backgroundColor:
                //             MaterialStateProperty.all(Colors.green)),
                //     onPressed: () {},
                //     icon: Icon(Icons.backspace),
                //     label: Text('Back')),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60)),
                  child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.35,
                      width: MediaQuery.sizeOf(context).width,
                      color: kdarkColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 13),
                          Positioned(
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/products/suit.png'),
                              radius: 80,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text("Ritesh RC",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                              )),
                          Text(
                            "9887878998",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          ElevatedButton.icon(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.green)),
                              onPressed: () {},
                              icon: Icon(Icons.ads_click_rounded),
                              label: Text('Verfied')),
                        ],
                      )),
                ),
                Positioned(
                  left: MediaQuery.sizeOf(context).width * 0.1,
                  top: MediaQuery.sizeOf(context).height * 0.32,
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.8,
                    height: MediaQuery.sizeOf(context).height * 0.1,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/products/purano2.png'),
                            fit: BoxFit.cover),
                        color: Color.fromARGB(255, 2, 48, 85),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ]),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.95,
              height: MediaQuery.sizeOf(context).height * 0.5,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 2, 48, 85),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Information(),
                          ));
                    }),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Image.asset(
                            color: Colors.green,
                            'assets/products/docs.png',
                            height: 45,
                            width: MediaQuery.of(context).size.width * 0.2,
                          ),
                        ),
                        SizedBox(width: 15),
                        Column(
                          children: [
                            SizedBox(height: 20),
                            Text(
                              'My Information   ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'view your personal details',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 35),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        color: Colors.green,
                        'assets/products/address.png',
                        height: 45,
                        width: MediaQuery.of(context).size.width * 0.2,
                      ),
                      SizedBox(width: 15),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Text(
                              'Delivery Address',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Text(
                            'Manage your delivery Address',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 35),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        color: Colors.green,
                        'assets/products/payment.png',
                        height: 45,
                        width: MediaQuery.of(context).size.width * 0.2,
                      ),
                      SizedBox(width: 15),
                      Column(
                        children: [
                          Text(
                            'Payment Method',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Edit your Payment details',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 35),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/products/transaction.png',
                        height: 45,
                        width: MediaQuery.of(context).size.width * 0.2,
                      ),
                      SizedBox(width: 15),
                      Column(
                        children: [
                          Text(
                            'Transaction limits    ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'View your Transactions Limits',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 35),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        color: Colors.green,
                        'assets/products/logout.png',
                        height: 45,
                        width: MediaQuery.of(context).size.width * 0.2,
                      ),
                      SizedBox(width: 15),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 80),
                            child: Text(
                              'LogOut',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Text(
                            'Signout from this device',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
