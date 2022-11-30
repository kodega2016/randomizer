import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:randomizer/src/range_selector_page.dart';

class RandomizerApp extends StatelessWidget {
  const RandomizerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Randomizer",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: GoogleFonts.passeroOne().fontFamily,
      ),
      home: RangeSelectorPage(),
    );
  }
}
