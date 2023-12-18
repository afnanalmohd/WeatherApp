import 'package:cashing/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ItemCardWidget extends StatelessWidget {
  final String value;
  final Color color;
  final IconData icons;

  const ItemCardWidget({
    Key? key,
    required this.value,
    required this.color,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white.withOpacity(0.1),
              Colors.white.withOpacity(0.3)
            ],
          ),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icons,
                color: whiteColor,
                size: 25,
              ),
              Text(
                value,
                style: textTheme.labelLarge?.copyWith(color: whiteColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
