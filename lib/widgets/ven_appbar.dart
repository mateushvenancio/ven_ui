import 'package:flutter/material.dart';

class VenAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool back;
  final List<Widget> actions;
  final Function()? onBack;

  const VenAppBar({
    Key? key,
    required this.title,
    this.back = false,
    this.actions = const [],
    this.onBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xff024E77),
              width: 2.5,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (back)
              IconButton(
                onPressed: () {
                  if (onBack == null) {
                    Navigator.of(context).pop();
                  } else {
                    onBack!();
                  }
                },
                icon: const Icon(Icons.chevron_left),
              ),
            if (!back) const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 1,
              ),
            ),
            ...actions,
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
