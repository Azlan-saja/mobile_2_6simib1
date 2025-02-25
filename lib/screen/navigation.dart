import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layar Navigasi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('1. Kirim Data'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('2. Terima Data Saja'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('3. Kirim Data dan Terima Balasan'),
            ),
          ],
        ),
      ),
    );
  }
}
