import 'package:flutter/material.dart';
import 'package:randomizer/src/randomizer_page.dart';
import 'package:randomizer/src/range_selector_input_field.dart';

class RangeSelectorPage extends StatefulWidget {
  const RangeSelectorPage({super.key});

  @override
  State<RangeSelectorPage> createState() => _RangeSelectorPageState();
}

class _RangeSelectorPageState extends State<RangeSelectorPage> {
  final formKey = GlobalKey<FormState>();
  int _min = 0;
  int _max = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Range"),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
        minValueSetter: (val) => _min = val,
        maxValueSetter: (val) => _max = val,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState?.validate() ?? false) {
            formKey.currentState?.save();

            Navigator.push(
              context,
              MaterialPageRoute(
                fullscreenDialog: true,
                builder: (_) {
                  return RandomizerPage(
                    max: _max,
                    min: _min,
                  );
                },
              ),
            );
          }
        },
        child: const Icon(Icons.arrow_forward_outlined),
      ),
    );
  }
}

class RangeSelectorForm extends StatelessWidget {
  const RangeSelectorForm({
    super.key,
    required this.formKey,
    required this.maxValueSetter,
    required this.minValueSetter,
  });

  final GlobalKey<FormState> formKey;
  final IntValueSetter minValueSetter;
  final IntValueSetter maxValueSetter;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            RangeSelectorTextFormField(
              labelText: "Minimum",
              intValueSetter: minValueSetter,
            ),
            RangeSelectorTextFormField(
              labelText: "Maximum",
              intValueSetter: maxValueSetter,
            ),
          ],
        ),
      ),
    );
  }
}
