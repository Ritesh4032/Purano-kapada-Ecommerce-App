import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/themes.dart';

class UpdateKYC extends StatefulWidget {
  const UpdateKYC({Key? key}) : super(key: key);

  @override
  _UpdateKYCState createState() => _UpdateKYCState();
}

class _UpdateKYCState extends State<UpdateKYC> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: kdarkColor,
        title: Text(
          'Update KYC',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Personal Details',
            style: TextStyle(
              color: kWhiteColor,
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            'Update your married details below',
            style: TextStyle(color: Color.fromARGB(255, 136, 127, 127)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Marital Status',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                child: Text(
                  'Single',
                  style: TextStyle(
                      color: _selectedIndex == 0 ? Colors.white : Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      _selectedIndex == 0 ? Colors.blue : Colors.grey,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                child: Text(
                  'Unmarried',
                  style: TextStyle(
                      color: _selectedIndex == 1 ? Colors.white : Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      _selectedIndex == 1 ? Colors.blue : Colors.grey,
                ),
              ),
            ],
          ),
          Expanded(
            child: PageView(
              children: [
                _selectedIndex == 0 ? MarriedDetails() : UnmarriedDetails(),
                _selectedIndex == 1 ? UnmarriedDetails() : MarriedDetails(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MarriedDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Occupation',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextFormField(),
            SizedBox(height: 20),
            Text(
              'Marital Status',
              style: TextStyle(color: Colors.white),
            ),
            // Add your married details UI here
          ],
        ),
      ),
    );
  }
}

class UnmarriedDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Unmarried Details',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Update your unmarried details below',
              style: TextStyle(color: Color.fromARGB(255, 136, 127, 127)),
            ),
            SizedBox(height: 20),
            Text(
              'Marital Status',
              style: TextStyle(color: Colors.white),
            ),
            // Add your unmarried details UI here
          ],
        ),
      ),
    );
  }
}
