import 'package:flutter/material.dart';

class StateProvider extends StatefulWidget {
  const StateProvider({super.key});

  @override
  State<StateProvider> createState() => _StateProviderState();
}

class _StateProviderState extends State<StateProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layar State Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.purple,
                child: Icon(
                  Icons.people_alt,
                  color: Colors.white,
                ),
              ),
              title: const Text(
                'Azlan',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '1019019201',
                style: TextStyle(
                    color: Colors.purple.shade300, fontStyle: FontStyle.italic),
              ),
              trailing: const Icon(Icons.arrow_right, size: 30),
              onTap: () {},
            ),
            const Divider(thickness: 2, color: Colors.purpleAccent),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.purple,
                child: Icon(
                  Icons.people_alt,
                  color: Colors.white,
                ),
              ),
              title: const Text(
                'Kudut',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '7019019223',
                style: TextStyle(
                    color: Colors.purple.shade300, fontStyle: FontStyle.italic),
              ),
              trailing: const Icon(Icons.arrow_right, size: 30),
              onTap: () {},
            ),
            const Divider(thickness: 2, color: Colors.purpleAccent),
          ],
        ),
      ),
    );
  }
}
