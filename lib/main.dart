import 'package:flutter/material.dart';

Color lexiBrown = Color(0xFF837471); // lexiBrown-Farbe definiert
Color backgroundGrey = Color(0xFFF3F3F3); // backgroundGrey-Farbe definiert

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
      appBar: AppBar(  // Leere AppBar hinzugefügt
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: backgroundGrey,
      body: Center( // StatusBoxen in der Mitte zentriert
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StatusBox('Hallo Olivia!'),
            StatusBox('Meine Tiere'),
            StatusBox('Wichtige Termine'),
            StatusBox('Empfehlungen'),
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

  StatusBox(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.white, // Hintergrundfarbe der StatusBox auf Weiß gesetzt
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black, // Textfarbe auf Schwarz gesetzt
        ),
      ),
    );
  }
}
