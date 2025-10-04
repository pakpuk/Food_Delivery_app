import 'package:flutter/material.dart';

class TextFormFieldwidget extends StatefulWidget {
  const TextFormFieldwidget(
      {super.key,
      required this.ispassword,
      this.suffixicon,
      required this.label,
      this.validator,
      required this.controller});
  final bool ispassword;
  final IconData? suffixicon;
  final String label;
  final VoidCallback? validator;
  final TextEditingController controller;

  @override
  State<TextFormFieldwidget> createState() => _TextFormFieldwidgetState();
}

class _TextFormFieldwidgetState extends State<TextFormFieldwidget> {
  @override
  Widget build(BuildContext context) {
    bool isobscureText = true;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.ispassword ? isobscureText : false,
        decoration: InputDecoration(
          suffixIcon: widget.ispassword
              ? IconButton(
                  onPressed: () => setState(() {
                        isobscureText = !isobscureText;
                      }),
                  icon: Icon(widget.ispassword
                      ? Icons.visibility_off
                      : Icons.visibility))
              : null,
          hintText: widget.label,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.tertiary)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.primary)),
        ),
      ),
    );
  }
}
