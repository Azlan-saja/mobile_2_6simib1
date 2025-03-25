import 'package:flutter/material.dart';
import 'package:master/screen/navigation/navigation_dua.dart';
import 'package:master/screen/navigation/navigation_satu.dart';
import 'package:master/screen/navigation/navigation_tiga.dart';

class Navigation extends StatelessWidget {
  Navigation({super.key});

  final terimaData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layar Navigasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NavigationSatu(
                        nama: 'Azlansaja',
                      ),
                    ),
                  );
                },
                child: const Text('1. Kirim Data'),
              ),
              const Divider(),
              TextFormField(
                controller: terimaData,
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: 'Terima Data?',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  final hasil = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NavigationDua(),
                    ),
                  );

                  if (hasil != null) {
                    // Ada data
                    terimaData.text = hasil.toString();
                  } else {
                    // Tidak ada data
                    terimaData.clear();
                  }
                },
                child: const Text('2. Terima Data Saja'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NavigationTiga(),
                    ),
                  );
                },
                child: const Text('3. Kirim Data dan Terima Balasan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
