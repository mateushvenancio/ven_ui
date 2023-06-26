import 'package:flutter/material.dart';

class NoContentChip extends StatelessWidget {
  final String text;
  const NoContentChip({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.info_outline, size: 16),
        const SizedBox(width: 8),
        Text(text),
      ],
    );
  }
}
