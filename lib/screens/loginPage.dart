import 'package:flutter/material.dart';
import 'package:lexis_best_app/datenspeicher/styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 20.0, 
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40.0),
                      const Text(
                        'Willkommen',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          filled: true,
                          fillColor: lexiBrown,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          hintStyle: const TextStyle(color: Colors.white),
                        ),
                        style: const TextStyle(color: Colors.white, fontSize: 12.0),
                      ),
                      const SizedBox(height: 10.0),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Passwort',
                          filled: true,
                          fillColor: lexiBrown,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          hintStyle: const TextStyle(color: Colors.white),
                        ),
                        style: const TextStyle(color: Colors.white, fontSize: 12.0),
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Hier Popup-Navigation für "Passwort vergessen" implementieren
                            },
                            child: const Text(
                              'Passwort vergessen',
                              style: TextStyle(color: lexiYellow),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        'Login mit Google oder Apple ID',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.mail, size: 40.0),
                          ),
                          SizedBox(width: 100.0),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.apple, size: 40.0),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            // Login-Prozess 
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          filled: true,
                          fillColor: lexiBrown,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          hintStyle: const TextStyle(color: Colors.white),
                        ),
                        style: const TextStyle(color: Colors.white, fontSize: 12.0),
                      ),
                      const SizedBox(height: 10.0),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Passwort',
                          filled: true,
                          fillColor: lexiBrown,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          hintStyle: const TextStyle(color: Colors.white),
                        ),
                        style: const TextStyle(color: Colors.white, fontSize: 12.0),
                      ),
                      const SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          filled: true,
                          fillColor: lexiBrown,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          hintStyle: const TextStyle(color: Colors.white),
                        ),
                        style: const TextStyle(color: Colors.white, fontSize: 12.0),
                      ),
                      const SizedBox(height: 20.0),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            // Registrierungsprozess
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: const Text(
                            'Registrieren',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (bool? value) {
                              // Aktion der Checkbox
                            },
                          ),
                          const Text(
                            'Ich stimme den AGBs zu',
                            style: TextStyle(color: Colors.black, fontSize: 12.0),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (bool? value) {
                              // Aktion implementieren
                            },
                          ),
                          const Text(
                            'Ich stimme der Datenschutzerklärung zu',
                            style: TextStyle(color: Colors.black, fontSize: 12.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
