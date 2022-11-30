import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RandomizerPage extends HookWidget {
  RandomizerPage({
    super.key,
    required this.max,
    required this.min,
  });

  final int max;
  final int min;

//   @override
//   State<RandomizerPage> createState() => _RandomizerPageState();
// }

// class _RandomizerPageState extends State<RandomizerPage> {

  final randomGenerator = Random();

  @override
  Widget build(BuildContext context) {
    final generatedNumber = useState<int>(0);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Randomizer"),
      ),
      body: Center(
        child: Text(
          generatedNumber.value == 0
              ? "Generate number"
              : generatedNumber.value.toString(),
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          generatedNumber.value = min +
              randomGenerator.nextInt(
                max + 1 - min,
              );
          // setState(() {});
        },
        label: const Text("Randomizer"),
      ),
    );
  }
}
