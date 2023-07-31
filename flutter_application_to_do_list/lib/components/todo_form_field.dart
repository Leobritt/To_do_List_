import 'package:flutter/material.dart';

class FormToDo extends StatefulWidget {
  const FormToDo({super.key, required this.controller});

  final TextEditingController controller;

  @override
  State<FormToDo> createState() => _FormToDoState();
}

class _FormToDoState extends State<FormToDo> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter a todo item',
      ),
    );
  }
}
