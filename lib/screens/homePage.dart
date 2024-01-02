import 'package:flutter/material.dart';
import 'package:lexis_best_app/widgets/navbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //Nutzerfenster mit allen wichtigen Infos
            CustomStatusBox(
              text: 'Hallo Olivia!',
              subText: 'Oli, Buddy & Chrissy',
              height: 100,
              avaImage: Image.asset('assets/images/ava.png'),
              futterImage: Image.asset('assets/images/futter.png'),
              buttons: const [],
            ),
            const SizedBox(height: 16),
            //Container mit der Übersicht der Tiere
            CustomStatusBox(
              text: 'Meine Tiere',
              subText: '',
              height: 120,
              buttons: [
                CustomImageButton(
                  icon: Icons.add,
                  onPressed: () {},
                ),
                CustomClickableImage(
                  imagePath: 'assets/images/oli.png',
                  onPressed: () {},
                ),
                CustomClickableImage(
                  imagePath: 'assets/images/buddy.png',
                  onPressed: () {},
                ),
                CustomClickableImage(
                  imagePath: 'assets/images/chrissy.png',
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 16),
            //Container für Kalender - Erinnerungen
            CustomStatusBox(
              text: 'Wichtige Termine',
              subText: '',
              height: 120,
              buttons: [
                CustomImageButton(
                  icon: Icons.add,
                  onPressed: () {
                    // Hier die Funktion für den Plus-Button hinzufügen
                  },
                ),
                CustomClickableImage(
                  imagePath: 'assets/images/oli.png',
                  onPressed: () {
                    // Hier die Funktion für den Oli-Button hinzufügen
                  },
                ),
                CustomClickableImage(
                  imagePath: 'assets/images/buddy.png',
                  onPressed: () {
                    // Hier die Funktion für den Buddy-Button hinzufügen
                  },
                ),
                CustomClickableImage(
                  imagePath: 'assets/images/chrissy.png',
                  onPressed: () {
                    // Hier die Funktion für den Chrissy-Button hinzufügen
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            //Werbung bzw Empfehlungen
            CustomStatusBox(
              text: 'Empfehlungen',
              subText: '',
              height: 160,
              buttons: [
                CustomClickableImage(
                  imagePath: 'assets/images/bettchen.png',
                  onPressed: () {
                    // Hier die Funktion für den Bettchen-Button hinzufügen
                  },
                ),
                CustomClickableImage(
                  imagePath: 'assets/images/kratzbaum.png',
                  onPressed: () {
                    // Hier die Funktion für den Kratzbaum-Button hinzufügen
                  },
                ),
                CustomClickableImage(
                  imagePath: 'assets/images/nagerhaus.png',
                  onPressed: () {
                    // Hier die Funktion für den Nagerhaus-Button hinzufügen
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        onTabTapped: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
      ),
    );
  }
}

//todo noch auslagern
class CustomStatusBox extends StatelessWidget {
  final String text;
  final String subText;
  final double height;
  final Widget? avaImage;
  final Widget? futterImage;
  final List<Widget> buttons;

  const CustomStatusBox({
    required this.text,
    required this.subText,
    required this.height,
    this.avaImage,
    this.futterImage,
    required this.buttons,
    Key? key,
  }) : super(key: key);

//definieren der Container Designs
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                if (avaImage != null)
                  Column(
                    children: [
                      avaImage!,
                      const SizedBox(height: 8),
                    ],
                  ),
                if (avaImage != null) const SizedBox(width: 8),
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
                if (futterImage != null)
                  Column(
                    children: [
                      const SizedBox(height: 8),
                      futterImage!,
                    ],
                  ),
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

//können auch noch ausgelagert werden

class CustomImageButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CustomImageButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
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
        child: Icon(icon, color: Colors.black),
      ),
    );
  }
}

class CustomClickableImage extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const CustomClickableImage({
    Key? key,
    required this.imagePath,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
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
        child: Image.asset(
          imagePath,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
