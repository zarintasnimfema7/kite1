import 'package:flutter/material.dart';

class ProfessionalHelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Professional Help',
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: 'BUXTONSKETCH'
          ),
        ),
      ),
      body: Container(
        color: Colors.pink.shade100,
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Where to Get Mental Health Professional Help in Bangladesh',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontFamily: 'BUXTONSKETCH'
              ),
            ),
            SizedBox(height: 16),
            Text(
              '1. National Institute of Mental Health (NIMH)',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BUXTONSKETCH'
              ),
            ),
            Text(
              'Address: Sher-e-Bangla Nagar, Dhaka 1207\n'
                  'Mobile: +880-2-9118171\n'
                  'Website: www.nimh.gov.bd',
              style: TextStyle(fontSize: 16, color: Colors.black,fontFamily: 'BUXTONSKETCH'),
            ),
            SizedBox(height: 16),
            Text(
              '2. Bangladesh Association of Psychiatrists (BAP)',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BUXTONSKETCH'
              ),
            ),
            Text(
              'Address: Mohakhali, Dhaka 1212\n'
                  'Mobile: +880-1711-526936\n'
                  'Website: www.bapbd.org',
              style: TextStyle(fontSize: 16, color: Colors.black,fontFamily: 'BUXTONSKETCH'),
            ),
            SizedBox(height: 16),
            Text(
              '3. Psychological Health and Wellness Clinic',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BUXTONSKETCH'
              ),
            ),
            Text(
              'Address: House 6, Road 16, Gulshan-1, Dhaka 1212\n'
                  'Mobile: +880-1787-729688\n'
                  'Website: www.phwcbd.com',
              style: TextStyle(fontSize: 16, color: Colors.black,fontFamily: 'BUXTONSKETCH'),
            ),
            SizedBox(height: 16),
            Text(
              '4. Moner Bondhu',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BUXTONSKETCH'
              ),
            ),
            Text(
              'Address: House 27, Road 2, Dhanmondi, Dhaka 1205\n'
                  'Mobile: +880-1708-566888\n'
                  'Website: www.monerbondhu.org',
              style: TextStyle(fontSize: 16, color: Colors.black,fontFamily: 'BUXTONSKETCH'),
            ),
            SizedBox(height: 16),
            Text(
              '5. Lifespring',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BUXTONSKETCH'
              ),
            ),
            Text(
              'Address: House 74, Road 5A, Dhanmondi, Dhaka 1209\n'
                  'Mobile: +880-1715-034734\n'
                  'Website: www.lifespringint.com',
              style: TextStyle(fontSize: 16, color: Colors.black,fontFamily: 'BUXTONSKETCH'),
            ),
          ],
        ),
      ),
    );
  }
}