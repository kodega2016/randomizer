import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:randomizer/src/randomizer_state.dart';
import 'package:randomizer/src/range_selector_page.dart';

final randomizerProvider =
    StateNotifierProvider<RandomizerStateNotifier, RandomizerState>(
        (ref) => RandomizerStateNotifier());

class RandomizerApp extends StatelessWidget {
  const RandomizerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: "Randomizer",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          fontFamily: GoogleFonts.passeroOne().fontFamily,
        ),
        home: RangeSelectorPage(),
      ),
    );
  }
}
