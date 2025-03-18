import 'package:flutter/material.dart';

class NavigationSatu extends StatelessWidget {
  final String nama;
  const NavigationSatu({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layar Kirim Data'),
      ),
      body:     Center(
        child: Text(
          'Hai, my name is $nama',
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
