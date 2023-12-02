import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:testproject/deep.dart';
import 'package:testproject/home.dart';
import 'package:testproject/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => const HomePage());
          // pull the family object out of the arguments object
          case '/login':
            return MaterialPageRoute(builder: (_) => const LoginPage());
          // pull the family and person objects out of the arguments object
          case '/deep':
            return MaterialPageRoute(builder: (_) => const DeepPage());
          default:
            return MaterialPageRoute(builder: (_) => const HomePage());
        }
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final file = File('test.txt');
          log(file.absolute.path);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class TestEvent {}
