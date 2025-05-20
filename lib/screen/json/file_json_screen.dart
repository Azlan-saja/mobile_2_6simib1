import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FileJsonScreen extends StatefulWidget {
  const FileJsonScreen({super.key});

  @override
  State<FileJsonScreen> createState() => _FileJsonScreenState();
}

class _FileJsonScreenState extends State<FileJsonScreen> {
  final jamController = TextEditingController();
  final pelajaranController = TextEditingController();
  List<Map<String, dynamic>> roster = [];

  // R => Read
  Future<void> baca() async {
    try {
      String respon = await rootBundle.loadString('assets/roster.json');
      setState(() {
        roster = List<Map<String, dynamic>>.from(jsonDecode(respon));
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void createRoster() {
    // buat id baru atau increment id yang terakhir
    int idBaru = roster.isNotEmpty ? roster.last['id'] + 1 : 1;
    if (jamController.text.isNotEmpty && pelajaranController.text.isNotEmpty) {
      setState(() {
        roster.add({
          "id": idBaru,
          "jam": jamController.text,
          "pelajaran": pelajaranController.text
        });
      });
    }
  }

  @override
  void initState() {
    baca();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layar File JSON"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            TextFormField(
              controller: jamController,
              onTap: () {
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                ).then(
                  (value) {
                    if (value != null) {
                      if (!context.mounted) return;
                      jamController.text = value.format(context);
                    }
                  },
                );
              },
              readOnly: true,
              decoration: const InputDecoration(
                labelText: 'Jam Masuk',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: pelajaranController,
              decoration: const InputDecoration(
                labelText: 'Mata Pelajaran',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      createRoster();
                    },
                    child: const Text('Simpan')),
                ElevatedButton(onPressed: () {}, child: const Text('Batal')),
              ],
            ),
            Divider(
              color: Colors.green.shade700,
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: roster.length,
                itemBuilder: (context, index) {
                  final read = roster[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.purple,
                      child: Text(
                        "${index + 1}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    title: Text(
                      read['pelajaran'],
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      read['jam'],
                      style: TextStyle(
                          color: Colors.purple.shade300,
                          fontStyle: FontStyle.italic),
                    ),
                    trailing: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.edit,
                          size: 30,
                          color: Colors.green,
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.delete,
                          size: 30,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    onTap: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
