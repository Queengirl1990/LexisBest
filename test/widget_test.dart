import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mein Zuhause'),
      ),
      body: Column(
        children: <Widget>[
          StatusBox('Hallo Olivia!', 'Deine Tiere'),
          StatusBox('Wichtige Termine', 'Empfehlungen'),
          StatusBox('Text für Box 3', 'Text für Box 4'),
          Container(
            height: 100,
            color: Colors.grey,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Kalender',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Einkaufsliste',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Network',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}

class StatusBox extends StatelessWidget {
  final String text1;
  final String text2;

  StatusBox(this.text1, this.text2);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: <Widget>[
          Text(text1, style: TextStyle(fontSize: 20.0)),
          SizedBox(height: 10.0),
          Text(text2, style: TextStyle(fontSize: 16.0)),
        ],
      ),
    );
  }
}
