import 'package:flutter/material.dart';

class VenSecondaryButton extends StatelessWidget {
  final String text;
  final Function() onTap;

  const VenSecondaryButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        color: const Color(0xff3A4148),
      ),
      child: TextButton(
        onPressed: () => onTap(),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(45),
          )),
        ),
        child: Text(text, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
