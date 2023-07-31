import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.onPressed, required this.icon});
  final VoidCallback onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.blueAccent,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
