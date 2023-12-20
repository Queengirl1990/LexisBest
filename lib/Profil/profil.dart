import 'package:flutter/material.dart';
import 'package:lexis_best_app/datenspeicher/styles.dart';
import 'package:lexis_best_app/widgets/divider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyProfilPage(),
    );
  }
}

class MyCircularAvatar extends StatelessWidget {
  const MyCircularAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: ClipRRect(
        child: Image.asset(
          'assets/images/ava.png',
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class MyProfilPage extends StatelessWidget {
  const MyProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: lexiBrown),
            onPressed: () {
              // Aktion für Zurück-Navigation einbauen
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings, color: lexiBrown),
              onPressed: () {
                // Aktion für Einstellungs-Icon einbauen
              },
            ),
          ],
          title: const Text(
            "Mein Profil",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: lexiBrown,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const MyCircularAvatar(),
              const SizedBox(height: 20),
              const Text(
                "Oliva",
                style: TextStyle(
                  fontFamily: 'DancingScript',
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: lexiBrown,
                ),
              ),
              const SizedBox(height: 10),
              const MyDividerWithIcons(),
              const SizedBox(height: 20),
              SizedBox(
                width: 320,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Drei Cards mit Bildern und Text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildAnimalCard('Oli', 'assets/images/oli.png'),
                        _buildAnimalCard('Buddy', 'assets/images/buddy.png'),
                        _buildAnimalCard(
                            'Chrissy', 'assets/images/chrissy.png'),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Button "Neues Tier hinzufügen"
                    ElevatedButton(
                      onPressed: () {
                        // Aktion für "Neues Tier hinzufügen" einbauen
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: lexiBrown,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 5,
                      ),
                      child: const Text(
                        "Neues Tier hinzufügen",
                        style: TextStyle(
                          color: backgroundGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnimalCard(String name, String imagePath) {
    return SizedBox(
      width: 60,
      height: 100,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Text(
            name,
            style: const TextStyle(
              color: lexiBrown,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
