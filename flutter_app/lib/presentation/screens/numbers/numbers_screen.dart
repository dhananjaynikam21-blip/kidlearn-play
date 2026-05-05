import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
// import 'package:lottie/lottie.dart'; // Uncomment if using animations

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});

  Future<void> _playSound(int number) async {
    final player = AudioPlayer();
    await player.play(AssetSource('sounds/$number.mp3'));
  }

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
              _playSound(number);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('You tapped $number!'),
                  duration: const Duration(milliseconds: 500),
                ),
              );
              // TODO: Trigger animation with Lottie/Rive if assets are available
              // showDialog(
              //   context: context,
              //   builder: (c) => Dialog(
              //     child: Lottie.asset('assets/animations/$number.json', repeat: false),
              //   ),
              // );
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
