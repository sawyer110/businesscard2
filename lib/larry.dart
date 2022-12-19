import 'package:flutter/material.dart';

class Larry extends StatefulWidget {
  const Larry({super.key});

  @override
  State<Larry> createState() => _LarryState();
}

class _LarryState extends State<Larry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text("Go Back"))
          ],
        ),
      ),
    );
  }
}