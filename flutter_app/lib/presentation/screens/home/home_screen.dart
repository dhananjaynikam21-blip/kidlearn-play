import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KidLearn Play'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.extension, size: 80, color: Color(0xFFFFCC00)),
            SizedBox(height: 30),
            Text('Welcome to KidLearn Play!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Fun • Animated • Educational', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
