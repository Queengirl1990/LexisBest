import 'package:flutter/material.dart';
import 'package:lexis_best_app/datenspeicher/styles.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

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
            CustomStatusBox(
              text: 'Hallo Olivia!',
              subText: 'Oli, Buddy & Chrissy', 
              height: 100,
              width: 320,
              leftImage: 'assets/images/ava.png',
              rightImage: 'assets/images/futter.png',
            ),
            const SizedBox(height: 16),
            StatusBox('Meine Tiere', height: 120, width: 320),
            const SizedBox(height: 16),
            StatusBox('Wichtige Termine', height: 120, width: 320),
            const SizedBox(height: 16),
            StatusBox('Empfehlungen', height: 120, width: 320),
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
        items: const [
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

class CustomStatusBox extends StatelessWidget {
  final String text;
  final String subText; // zweite Textzeile
  final double height;
  final double width;
  final String leftImage;
  final String rightImage;

  CustomStatusBox({
    required this.text,
    required this.subText,
    this.height = 100,
    this.width = 320,
    required this.leftImage,
    required this.rightImage,
  });

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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  leftImage,
                  height: 60,
                  width: 60,
                ),
                SizedBox(width: 8), 
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, 
                    children: [
                      Text(
                        text,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        subText,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8), // Abstand zwischen Text und Bild
                Image.asset(
                  rightImage,
                  height: 40,
                  width: 40,
                ),
              ],
            ),
          ],
        ),
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
