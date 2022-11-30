import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:randomizer/src/randomizer_change_notifier.dart';
import 'package:randomizer/src/range_selector_page.dart';

class RandomizerApp extends StatelessWidget {
  const RandomizerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RandomizerChangeNotifier>(
      create: (_) => RandomizerChangeNotifier(),
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
