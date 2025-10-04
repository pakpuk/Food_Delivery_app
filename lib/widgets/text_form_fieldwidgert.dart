import 'package:flutter/material.dart';

class TextFormFieldwidget extends StatelessWidget {
  const TextFormFieldwidget(
      {super.key,
      required this.isobscuretext,
      this.suffixicon,
      required this.label,
      this.validator,
      required this.controller});
  final bool isobscuretext;
  final IconData? suffixicon;
  final String label;
  final VoidCallback? validator;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: label,
      ),
    );
  }
}
