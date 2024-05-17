import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ecommerce/constants/themes.dart';
import 'package:flutter_ecommerce/views/updatekyc.dart';

class Personal extends StatelessWidget {
  const Personal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kdarkColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Personal Details',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 60),
                    ElevatedButton.icon(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                        onPressed: () {},
                        icon:
                            Icon(color: Colors.white, Icons.ads_click_rounded),
                        label: Text(
                          'Verfied',
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
                Text(
                  'Personal Information',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
                Text('Full Name', style: AppTheme.KtextStyle),
                Text('Ritesh Rc', style: AppTheme.KtextStyle),
                SizedBox(height: 20),
                Text('DOB(AD)', style: AppTheme.KtextStyle),
                Text('2000-09-02', style: AppTheme.KtextStyle),
                SizedBox(height: 20),
                Text('Gender', style: AppTheme.KtextStyle),
                Text('Male', style: AppTheme.KtextStyle),
                SizedBox(height: 30),
                Text(
                  'Family Information',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
                Text('Fathers/Husbands Name', style: AppTheme.KtextStyle),
                Text('Kul Bahadur Rc', style: AppTheme.KtextStyle),
                SizedBox(height: 20),
                Text('Grand Fathers/Father in-law Name',
                    style: AppTheme.KtextStyle),
                Text('Jit Bahadur Rc', style: AppTheme.KtextStyle),
                SizedBox(height: 20),
                Text('Marital Status', style: AppTheme.KtextStyle),
                Text('Single', style: AppTheme.KtextStyle),
                SizedBox(height: 30),
                Text(
                  'Other Information',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
                Text('Occupation', style: AppTheme.KtextStyle),
                Text('Student', style: AppTheme.KtextStyle),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => UpdateKYC()));
        },
        label: Text(
          'Update KYC',
          style: TextStyle(color: Colors.white),
        ),
        icon: Icon(Icons.tips_and_updates),
        tooltip: 'Update KYC',
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
