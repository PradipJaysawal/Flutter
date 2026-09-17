import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  // Handle Home tap
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  // Handle Settings tap
                },
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('About'),
                onTap: () {
                  // Handle About tap
                },
              ),
              Divider(), // Add a divider line
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {
                  // Handle Logout tap
                },
              ),
            ],
          ),
        ),
        // appBar: AppBar(title: Text('Code IT')),
        appBar: AppBar(
          title: Text('Code IT'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(2),
            child: Container(
              height: 2,
              margin: EdgeInsets.only(bottom: 10),
              color: const Color.fromARGB(255, 174, 93, 93),
            ),
          ),
        ),
        body: Column(
          children: [
            //w1
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: 70,
                width: 150,
                child: Image.network(
                  'https://plus.unsplash.com/premium_photo-1683910767532-3a25b821f7ae?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZnJlZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //w2
            SizedBox(height: 20),
            Text(
              'Hello, World!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            //w3
            SizedBox(height: 10),
            Container(
              height: 50,
              width: 200,
              color: Colors.green,
              alignment: Alignment.center,
              child: Text("This is a green box."),
            ),

            Text('Welcome to my app.'),
            //w4
            SizedBox(height: 10),
            Container(
              height: 35,
              width: 226,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
              ),
              child: Center(child: Text("This is a red box.")),
            ),
            SizedBox(height: 10),
            Text('This is a simple Flutter application.'),
            //ROWS
            Row(
              children: [
                //w1
                SizedBox(width: 10),
                Text('This is a row.'),
                //w2
                SizedBox(width: 10),
                Text('It contains multiple widgets.'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
