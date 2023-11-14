import 'package:flutter/material.dart';
import 'package:lexis_best_app/datenspeicher/styles.dart'; // Stellen Sie sicher, dass Sie Ihre Styles-Datei importieren

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Willkommen',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    filled: true,
                    fillColor: lexiBrown,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10.0),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Passwort',
                    filled: true,
                    fillColor: lexiBrown,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10.0),
                GestureDetector(
                  onTap: () {
                    // Hier Popup-Navigation für "Passwort vergessen" implementieren
                  },
                  child: Text(
                    'Passwort vergessen',
                    style: TextStyle(color: lexiYellow),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.mail),
                    SizedBox(width: 20.0),
                    Icon(Icons.apple),
                  ],
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Hier den Login-Prozess implementieren
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    filled: true,
                    fillColor: lexiBrown,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10.0),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Passwort',
                    filled: true,
                    fillColor: lexiBrown,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    filled: true,
                    fillColor: lexiBrown,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Hier den Registrierungsprozess implementieren
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text(
                    'Registrieren',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
