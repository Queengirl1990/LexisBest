import 'package:flutter/material.dart';

Color lexiBrown = Color(0xFF837471);
Color backgroundGrey = Color(0xFFF3F3F3);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: backgroundGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            StatusBox('Hallo Olivia!', height: 100, width: 320),
            SizedBox(height: 16),
            StatusBox('Meine Tiere', height: 120, width: 320),
            SizedBox(height: 16),
            StatusBox('Wichtige Termine', height: 80, width: 320),
            SizedBox(height: 16),
            StatusBox('Empfehlungen', height: 150, width: 320),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: lexiBrown),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: lexiBrown),
            label: 'Einkaufsliste',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: lexiBrown),
            label: 'Network',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: lexiBrown),
            label: 'Profil',
          ),
        ],
        iconSize: 24.0,
        selectedItemColor: lexiBrown,
      ),
    );
  }
}

class StatusBox extends StatelessWidget {
  final String text;
  final double height;
  final double width;

  StatusBox(this.text, {this.height = 100, this.width = 320});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
