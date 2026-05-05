import 'package:flutter/material.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Numbers'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 18,
          crossAxisSpacing: 18,
        ),
        itemCount: 20,
        itemBuilder: (context, idx) {
          int number = idx + 1;
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber[400],
              shape: const CircleBorder(),
              elevation: 4,
              padding: const EdgeInsets.all(4),
            ),
            onPressed: () {
              // TODO: play sound/animation
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('You tapped $number!'),
                  duration: const Duration(milliseconds: 500),
                ),
              );
            },
            child: Text(
              '$number',
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          );
        },
      ),
    );
  }
}
