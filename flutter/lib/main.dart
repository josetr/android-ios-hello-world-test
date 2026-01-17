import 'package:flutter/material.dart';

void main() {
  runApp(const HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
  const HelloWorldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HelloWorldHome());
  }
}

class HelloWorldHome extends StatefulWidget {
  const HelloWorldHome({super.key});

  @override
  State<HelloWorldHome> createState() => _HelloWorldHomeState();
}

class _HelloWorldHomeState extends State<HelloWorldHome> {
  String _message = 'Hello World';

  void _onTap() {
    setState(() => _message = 'Hello Button');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(_message, style: const TextStyle(fontSize: 24)),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: _onTap, child: const Text('Tap me')),
            ],
          ),
        ),
      ),
    );
  }
}
