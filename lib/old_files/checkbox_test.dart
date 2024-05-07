import 'package:flutter/material.dart';

class CheckBoxTest extends StatelessWidget {
  const CheckBoxTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: CheckboxClass(),
    ));
  }
}

class CheckboxClass extends StatefulWidget {
  const CheckboxClass({super.key});

  @override
  State<CheckboxClass> createState() => _CheckboxClassState();
}

class _CheckboxClassState extends State<CheckboxClass> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (isCheck) {
        setState(() {
          isChecked = isCheck!;
          // onPressedCheckbox(newValue!);
        });
      },
    );
  }
}
