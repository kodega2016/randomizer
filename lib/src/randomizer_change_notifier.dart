import 'dart:math';

import 'package:flutter/material.dart';

class RandomizerChangeNotifier extends ChangeNotifier {
  int min = 0, max = 0;

  int? _generatedNumber;
  int? get generatedNumber => _generatedNumber;

  final _randomGenerator = Random();

  void generateRandomNumber() {
    _generatedNumber = min + _randomGenerator.nextInt(max + 1 - min);
    notifyListeners();
  }
}
