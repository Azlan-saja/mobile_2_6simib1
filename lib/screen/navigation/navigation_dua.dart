import 'package:flutter/material.dart';

class NavigationDua extends StatelessWidget {
  const NavigationDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layar Terima Data'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, 'Hello AzlansajaTV');
          },
          child: const Text('Selesai'),
        ),
      ),
    );
  }
}
