import 'package:flutter/material.dart';
import 'package:ven_ui/app_consts.dart';
import 'package:ven_ui/components/no_content_chip.dart';

class MainCardComponent extends StatelessWidget {
  final String title;
  final List<Widget> items;
  final Function()? menu;
  final Function()? onTapSeeMore;
  final String seeMoreText;
  final String noContentText;

  const MainCardComponent({
    super.key,
    required this.title,
    this.items = const [],
    this.menu,
    this.onTapSeeMore,
    this.seeMoreText = 'See more',
    this.noContentText = 'No content to show',
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Material(
        elevation: AppConsts.elevation,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.all(AppConsts.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textColor,
                    ),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () => menu?.call(),
                    child: const Icon(Icons.more_horiz),
                  ),
                ],
              ),
              const Divider(
                height: 24,
                thickness: 1,
              ),
              if (items.isEmpty) NoContentChip(text: noContentText),
              ...items,
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => onTapSeeMore?.call(),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(top: AppConsts.padding),
                  child: Text(
                    seeMoreText,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
