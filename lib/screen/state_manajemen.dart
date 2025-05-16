import 'package:flutter/material.dart';
import 'package:master/providers/counter_provider.dart';
import 'package:master/screen/json/file_json_screen.dart';
import 'package:provider/provider.dart';

class StateManajemen extends StatefulWidget {
  const StateManajemen({super.key});

  @override
  State<StateManajemen> createState() => _StateManajemenState();
}

class _StateManajemenState extends State<StateManajemen> {
  int hasilCounter = 0;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CounterProvider>(context);

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
              const Text(
                'Local State: SetState()',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        hasilCounter = hasilCounter - 1;
                        setState(() {});
                      },
                      child: const Icon(Icons.exposure_minus_1)),
                  Text('Hasil $hasilCounter'),
                  ElevatedButton(
                      onPressed: () {
                        hasilCounter = hasilCounter + 1;
                        setState(() {});
                      },
                      child: const Icon(Icons.plus_one))
                ],
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 30),
              const Text(
                'Global State: Package Provider',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        provider.kurangCounter();
                      },
                      child: const Icon(Icons.exposure_minus_1)),
                  Text('Hasil ${provider.hasilCounterProvider}'),
                  ElevatedButton(
                      onPressed: () {
                        provider.tambahCounter();
                      },
                      child: const Icon(Icons.plus_one))
                ],
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
