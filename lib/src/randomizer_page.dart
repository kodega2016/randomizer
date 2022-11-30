import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:randomizer/src/app.dart';

class RandomizerPage extends ConsumerWidget {
  RandomizerPage({
    super.key,
    // required this.max,
    // required this.min,
  });

  // final int max;
  // final int min;

//   @override
//   State<RandomizerPage> createState() => _RandomizerPageState();
// }

// class _RandomizerPageState extends State<RandomizerPage> {

  final randomGenerator = Random();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final generatedNumber = ref.watch(randomizerProvider).generatedNumber;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Randomizer"),
      ),
      body: Center(
        child: Text(
          generatedNumber == null
              ? "Generate number"
              : generatedNumber.toString(),
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ref.read(randomizerProvider.notifier).generateRandomNumber();
          // context.read<RandomizerChangeNotifier>().generateRandomNumber();
          // generatedNumber.value = min +
          //     randomGenerator.nextInt(
          //       max + 1 - min,
          //     );
          // setState(() {});
        },
        label: const Text("Randomizer"),
      ),
    );
  }
}
