import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _hasilCounterProvider = 0;

  void tambahCounter() {
    _hasilCounterProvider = _hasilCounterProvider + 1;
    notifyListeners();
  }

  void kurangCounter() {
    _hasilCounterProvider = _hasilCounterProvider - 1;
    notifyListeners();
  }

  int get hasilCounterProvider => _hasilCounterProvider;
}
