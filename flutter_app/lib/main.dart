import 'package:flutter/material.dart';
import 'core/themes/app_theme.dart';
import 'presentation/screens/home/home_screen.dart';

void main() => runApp(const KidLearnApp());

class KidLearnApp extends StatelessWidget {
  const KidLearnApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KidLearn Play',
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}