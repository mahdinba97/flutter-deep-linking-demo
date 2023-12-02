import 'package:flutter/material.dart';

class DeepPage extends StatelessWidget {
  const DeepPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('/deep')),
      body: const Placeholder(
        child: Center(child: Text('A Deep Page')),
      ),
    );
  }
}
