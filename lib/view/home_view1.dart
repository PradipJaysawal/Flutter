import 'package:first/widgets/coursecard_widget.dart';
import 'package:first/widgets/titlecard_widget.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Code IT')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //w1
            InkWell(
              onTap: () {
                // Handle tap event
                print('Container tapped!');
              },
              child: Container(
                height: 300,
                width: double.infinity,
                color: Colors.redAccent.shade100, // Add some spacing at the top
              ),
            ),
            SizedBox(height: 20), // Add some spacing between the two containers
            //w2
            Titlecard(title: 'Welcome to Code IT!'),
            SizedBox(height: 20), // Add some spacing between the two containers
            //w3
            Text(
              "This is a sample Flutter application.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Add some spacing between the two containers
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton.icon(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Handle button press
                  },
                  label: Text('Explore Courses'),
                ),
                SizedBox(width: 10), // Add some spacing between the buttons
                FilledButton.icon(
                  icon: Icon(Icons.person),
                  onPressed: () {
                    // Handle button press
                  },
                  label: Text('Profile'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.star),
                      Column(
                        children: [
                          Text('4.5', textAlign: TextAlign.start),
                          Text('Google Reviews'),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ), // Add some spacing between the two containers
                SizedBox(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.person_3_sharp),
                      Column(
                        children: [
                          Text('100k', textAlign: TextAlign.center),
                          Text('Students trained'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //w6
            SizedBox(height: 20), // Add some spacing between the two containers
            Titlecard(title: 'Popular Courses'),
            //w7
            SizedBox(height: 20), // Add some spacing between the two containers
            Text(
              "Explore our most popular courses and start learning today!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            SizedBox(
              height: 171,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Cousrecard(
                    imageUrl: "https://images.unsplash.com/photo-1649180556628-9ba704115795?q=80&w=1162&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    courseTitle: "Course 1",
                  ),
                  Cousrecard(
                    imageUrl: "https://plus.unsplash.com/premium_photo-1755911614411-196a5bb0542f?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    courseTitle: "Course 2",
                  ),
                  Cousrecard(
                    imageUrl: "https://plus.unsplash.com/premium_photo-1726079248086-ad6bec853f36?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    courseTitle: "Course 3",
                  ),
                  Cousrecard(
                    imageUrl: "https://plus.unsplash.com/premium_photo-1755097117484-9332374bc0f4?q=80&w=1094&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    courseTitle: "Course 4",
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
