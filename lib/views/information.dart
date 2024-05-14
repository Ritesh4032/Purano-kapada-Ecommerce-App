import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/themes.dart';

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
    );
  }
}
