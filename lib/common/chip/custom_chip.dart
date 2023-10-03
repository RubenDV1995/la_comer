import 'package:flutter/material.dart';
import 'package:la_comer/constants/colors.dart';

import '../../constants/sizes.dart';
import '../subtitle/custom_subtitle.dart';

class CustomChip extends StatelessWidget {
  final String label;
  final double? size;
  final Widget? icon;

  const CustomChip({
    required this.label,
    Key? key,
    this.size,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: MainColor.accent100,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            spacingM_16,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: spacingXS_8,
          vertical: spacingXXS_4
        ),
        child: Wrap(
          children: [
            CustomSubtitle(
              subtitle: label,
              color: MainColor.accent100,
              size: size ?? spacingS_12,
            ),
            const SizedBox(
              width: spacingXXS_4,
            ),
            if (icon != null) icon!,
          ],
        ),
      ),
    );
  }
}
