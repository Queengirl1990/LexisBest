import 'package:flutter/material.dart';
import 'package:lexis_best_app/datenspeicher/styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

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
              avaImage: Image.asset('assets/images/ava.png'),
              futterImage: Image.asset('assets/images/futter.png'),
              buttons: const [],
            ),
            const SizedBox(height: 16),
            CustomStatusBox(
              text: 'Meine Tiere',
              subText: '',
              height: 120,
              avaImage: const CustomAppButton(),
              futterImage: const SizedBox.shrink(),
              buttons: [
                CustomImageButton(
                  icon: Icons.add,
                  onPressed: () {
                    // Hier die Funktion für den Plus-Button hinzufügen
                  },
                ),
                CustomImageButton(
                  imagePath: 'assets/images/oli.png',
                  onPressed: () {
                    // Hier die Funktion für den Oli-Button hinzufügen
                  },
                ),
                CustomImageButton(
                  imagePath: 'assets/images/buddy.png',
                  onPressed: () {
                    // Hier die Funktion für den Buddy-Button hinzufügen
                  },
                ),
                CustomImageButton(
                  imagePath: 'assets/images/chrissy.png',
                  onPressed: () {
                    // Hier die Funktion für den Chrissy-Button hinzufügen
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            CustomStatusBox(
              text: 'Wichtige Termine',
              subText: '',
              height: 120,
              avaImage: const CustomAppButton(),
              futterImage: const SizedBox.shrink(),
              buttons: [
                CustomImageButton(
                  icon: Icons.add,
                  onPressed: () {
                    // Hier die Funktion für den Plus-Button hinzufügen
                  },
                ),
                CustomImageButton(
                  imagePath: 'assets/images/oli.png',
                  onPressed: () {
                    // Hier die Funktion für den Oli-Button hinzufügen
                  },
                ),
                CustomImageButton(
                  imagePath: 'assets/images/buddy.png',
                  onPressed: () {
                    // Hier die Funktion für den Buddy-Button hinzufügen
                  },
                ),
                CustomImageButton(
                  imagePath: 'assets/images/chrissy.png',
                  onPressed: () {
                    // Hier die Funktion für den Chrissy-Button hinzufügen
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            CustomStatusBox(
              text: 'Empfehlungen',
              subText: '',
              height: 120,
              avaImage: const CustomAppButton(),
              futterImage: const SizedBox.shrink(),
              buttons: [
                CustomImageButton(
                  icon: Icons.add,
                  onPressed: () {
                    // Hier die Funktion für den Plus-Button hinzufügen
                  },
                ),
                CustomImageButton(
                  imagePath: 'assets/images/bettchen.png',
                  onPressed: () {
                    // Hier die Funktion für den Empfehlung-Button hinzufügen
                  },
                ),
                CustomImageButton(
                  imagePath: 'assets/images/kratzbaum.png',
                  onPressed: () {
                    // Hier die Funktion für den Empfehlung-Button hinzufügen
                  },
                ),
                CustomImageButton(
                  imagePath: 'assets/images/nagerhaus.png',
                  onPressed: () {
                    // Hier die Funktion für den Empfehlung-Button hinzufügen
                  },
                ),
              ],
            ),
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
  final String subText;
  final double height;
  final Widget avaImage;
  final Widget futterImage;
  final List<CustomImageButton> buttons;

  const CustomStatusBox({
    required this.text,
    required this.subText,
    required this.height,
    required this.avaImage,
    required this.futterImage,
    required this.buttons,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                avaImage,
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
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
                const SizedBox(width: 8),
                futterImage,
              ],
            ),
            const SizedBox(height: 8),
            if (buttons.isNotEmpty)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: buttons,
              ),
          ],
        ),
      ),
    );
  }
}

class CustomAppButton extends StatelessWidget {
  const CustomAppButton({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: const Center(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

class CustomImageButton extends StatelessWidget {
  final IconData? icon;
  final String? imagePath;
  final VoidCallback onPressed;

  const CustomImageButton({
    Key? key,
    this.icon,
    this.imagePath,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: IconButton(
        icon: icon != null
            ? Icon(icon, color: Colors.black)
            : Image.asset(
                imagePath!,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
        onPressed: onPressed,
      ),
    );
  }
}
