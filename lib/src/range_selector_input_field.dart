import 'package:flutter/material.dart';

typedef IntValueSetter = Function(int);

class RangeSelectorTextFormField extends StatelessWidget {
  const RangeSelectorTextFormField({
    Key? key,
    required this.labelText,
    required this.intValueSetter,
  }) : super(key: key);

  final String labelText;
  final IntValueSetter intValueSetter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: const TextInputType.numberWithOptions(
        decimal: false,
        signed: true,
      ),
      decoration: InputDecoration(
        labelText: labelText,
      ),
      onSaved: (val) => intValueSetter(int.parse(val ?? '')),
      validator: (value) {
        if (value == null || int.tryParse(value) == null) {
          return "must be an integer";
        } else {
          return null;
        }
      },
    );
  }
}
