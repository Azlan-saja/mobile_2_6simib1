import 'package:flutter/material.dart';

class StateManajemen extends StatefulWidget {
  const StateManajemen({super.key});

  @override
  State<StateManajemen> createState() => _StateManajemenState();
}

class _StateManajemenState extends State<StateManajemen> {
  int hasilCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layar State Manajemen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {
                        hasilCounter = hasilCounter - 1;
                        setState(() {});
                      },
                      icon: const Icon(Icons.exposure_minus_1)),
                  Text('Hasil $hasilCounter'),
                  IconButton(
                      onPressed: () {
                        hasilCounter = hasilCounter + 1;
                        setState(() {});
                      },
                      icon: const Icon(Icons.plus_one))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
