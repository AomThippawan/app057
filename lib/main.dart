import 'package:flutter/material.dart';
import 'package:app057/pages/firstpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 183, 216, 246)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const FirstPage(),
    );
  }
}
