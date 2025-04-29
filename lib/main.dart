import 'package:flutter/material.dart';
import 'package:master/providers/counter_provider.dart';
import 'package:master/screen/dashboard.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider()),
      ],
      child: MaterialApp(
        title: 'Mobile 2',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: 'Quicksand',
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purpleAccent.shade700,
                foregroundColor: Colors.white),
          ),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.purpleAccent,
            foregroundColor: Colors.white,
            elevation: 10,
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 22,
            ),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.purpleAccent,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.yellow[500],
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            elevation: 0,
          ),
          scaffoldBackgroundColor: Colors.grey.shade200,
        ),
        home: const Dashboard(),
      ),
    );
  }
}
