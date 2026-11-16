import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugars = 1;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugars() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Ligne de gestion de l'intensite du cafe (Strength)
        Row(
          children: [
            const Text('Intensite : '),
            Text(
              '$strength / 5',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 10),
            for (int i = 0; i < strength; i++)
              const Icon(Icons.coffee, size: 20, color: Colors.brown),
            const Spacer(),
            FilledButton.tonal(
              onPressed: increaseStrength,
              child: const Text('+'),
            ),
          ],
        ),
        const SizedBox(height: 16),

        // Ligne de gestion du sucre (Sugars)
        Row(
          children: [
            const Text('Sucres : '),
            Text(
              '$sugars morceaux',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 10),
            if (sugars == 0)
              const Text(
                'Sans sucre',
                style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
              ),
            for (int i = 0; i < sugars; i++)
              const Icon(Icons.cookie, size: 18, color: Colors.amber),
            const Spacer(),
            FilledButton.tonal(
              onPressed: increaseSugars,
              child: const Text('+'),
            ),
          ],
        ),
      ],
    );
  }
}
