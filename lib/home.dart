import 'package:flutter/material.dart';
import 'package:cours_dart/coffee_prefs.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mon Cafe Prefere',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Banniere de presentation
            Container(
              color: Colors.brown[200],
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: const Text(
                'Configurez votre tasse ideale selon vos gouts',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.brown,
                ),
              ),
            ),

            // Carte interactive de preferences
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vos Preferences',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown[900],
                        ),
                      ),
                      const Divider(height: 24),
                      const CoffeePrefs(),
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
