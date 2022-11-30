import 'dart:math';

import 'package:flutter/material.dart';

class RandomizerPage extends StatefulWidget {
  const RandomizerPage({
    super.key,
    required this.max,
    required this.min,
  });

  final int max;
  final int min;

  @override
  State<RandomizerPage> createState() => _RandomizerPageState();
}

class _RandomizerPageState extends State<RandomizerPage> {
  int? _generatedNumber;
  final randomGenerator = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Randomizer"),
      ),
      body: Center(
        child: Text(
          _generatedNumber == null
              ? "Generate number"
              : _generatedNumber.toString(),
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _generatedNumber = widget.min +
              randomGenerator.nextInt(
                widget.max + 1 - widget.min,
              );
          setState(() {});
        },
        label: const Text("Randomizer"),
      ),
    );
  }
}
