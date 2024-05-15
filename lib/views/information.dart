import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/themes.dart';
import 'package:flutter_ecommerce/views/personal_info.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Information',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: kdarkColor,
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Container(
              color: kdarkColor,
              child: TabBar(
                labelColor: Colors.white,
                indicatorColor: Colors.green,
                tabs: [
                  Tab(
                    icon: Icon(color: Colors.green, Icons.person),
                    text: 'Personal',
                  ),
                  Tab(
                    icon: Icon(color: Colors.green, Icons.home),
                    text: 'Address',
                  ),
                  Tab(
                    icon: Icon(color: Colors.green, Icons.description),
                    text: 'Documents',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Personal()),
                  Center(child: Text('Address Information')),
                  Center(child: Text('Document Information')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
