import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/themes.dart';

class MarriedDetails extends StatefulWidget {
  @override
  _MarriedDetailsState createState() => _MarriedDetailsState();
}

class _MarriedDetailsState extends State<MarriedDetails> {
  String? _selectedMaritalStatus = 'Mechi'; // Set initial value to "Single"

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 10, 35, 55),
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
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                filled: true,
                hintText: "What's your Occupation",
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Current Address Details',
              style: TextStyle(color: Colors.white),
            ),
            // Dropdown button
            TextFormField(
              readOnly: true,
              onTap: _showDropdownDialog,
              style: TextStyle(),
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                filled: true,
                hintText: _selectedMaritalStatus ??
                    "Update Your Current Details Below",
              ),
            ),
            SizedBox(height: 20),
            Text(
              'District',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                filled: true,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'VDC/Municipality',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                filled: true,
                hintText: "What's your Occupation",
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showDropdownDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.green,
          title: Text("Update Your Current Details Below"),
          content: DropdownButton<String>(
            value: _selectedMaritalStatus,
            items: const [
              DropdownMenuItem<String>(
                value: "Mechi",
                child: Text("Mechi"),
              ),
              DropdownMenuItem<String>(
                value: "koshi",
                child: Text("koshi"),
              ),
              DropdownMenuItem<String>(
                value: "Sagarmatha",
                child: Text("Sagarmatha"),
              ),
              DropdownMenuItem<String>(
                value: "Janakpur",
                child: Text("Janakpur"),
              ),
              DropdownMenuItem<String>(
                value: "Janakpur",
                child: Text("Janakpur"),
              ),
              DropdownMenuItem<String>(
                value: "Bagmati",
                child: Text("Bagmati"),
              ),
              DropdownMenuItem<String>(
                value: "Narayani",
                child: Text("Narayani"),
              ),
              DropdownMenuItem<String>(
                value: "Gandaki",
                child: Text("Gandaki"),
              ),
            ],
            onChanged: (value) {
              setState(() {
                _selectedMaritalStatus = value;
              });
              Navigator.of(context).pop();
            },
          ),
        );
      },
    );
  }
}
