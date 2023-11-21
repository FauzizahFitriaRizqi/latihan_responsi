import 'package:flutter/material.dart';
import 'package:latihanresponsi/newslist.dart';
import 'package:latihanresponsi/bloglist.dart';
import 'package:latihanresponsi/reportslist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Space Flight News',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Space Flight News'),
      ),
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: GridView.count(
          crossAxisCount: 1,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 1.0,
          children: [
            MenuCard(
              title: 'News',
              subtitle: 'Get an overview of the latest Spaceflight news, from various sources! Easily link your users to the right websites',
              icon: Icons.article,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewsList()),
                );
              },
            ),
            MenuCard(
              title: 'Blog',
              subtitle: 'Blogs often provide a more detailed overview of launches and missions. A must-have for the serious spaceflight enthusiast',
              icon: Icons.book,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BlogsList()),
                );
              },
            ),
            MenuCard(
              title: 'Reports',
              subtitle: 'Space stations and other missions  often publish their data. With SNAPI, you can include it in your app as well!',
              icon: Icons.bar_chart,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReportsList()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onPressed;

  MenuCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        elevation: 3.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 70.0,
            ),
            SizedBox(height: 8.0),
            Text(
              title,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4.0),
            Text(
              subtitle,
              style: TextStyle(fontSize: 12.0, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
